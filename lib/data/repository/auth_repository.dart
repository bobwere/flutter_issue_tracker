import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:flutter_issue_tracker/common/failures/auth_failures.dart';

abstract class IAuthFacade {
  User getCurrentUser();
  Future<User> signInWithGithub();
  Future<User> signInWithEmailAndPassword({String email, String password});
  Future<User> registerUserWithEmailAndPassword(
      {String email, String password});
  Future<void> logOut();
}

class AuthRepository implements IAuthFacade {
  AuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<User> signInWithGithub() async {
    try {
      User user = await FirebaseAuthOAuth()
          .openSignInFlow("github.com", ["user:email"], {"lang": "en"});

      return user;
    } on PlatformException catch (e) {
      if (e.code == 'FirebaseAuthError') {
        throw Failure(e.message);
      }
      if (e.code == 'PluginError') {
        throw Failure(e.message);
      }
      if (e.code == 'PlatformError') {
        throw Failure(e.message);
      }

      throw Failure('Server Error');
    }
  }

  @override
  Future<User> signInWithEmailAndPassword(
      {String email, String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        throw Failure('Poor or no internet connection');
      }
      if (e.code == 'invalid-email') {
        throw Failure('email you provided is invalid');
      } else if (e.code == "user-not-found" || e.code == "wrong-password") {
        throw Failure('Wrong email and password combination');
      } else {
        throw Failure('Server Error');
      }
    }
  }

  @override
  Future<User> registerUserWithEmailAndPassword(
      {String email, String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      print(e.message);
      if (e.code == 'network-request-failed') {
        throw Failure('Poor or no internet connection');
      }
      if (e.code == 'weak-password') {
        throw Failure('provide a stronger password');
      }
      if (e.code == 'email-already-in-use') {
        throw Failure('email you provided is already in use');
      } else if (e.code == "invalid-email") {
        throw Failure('email you provided is invalid');
      } else {
        throw Failure('Server failure occurred');
      }
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  User getCurrentUser() {
    return _firebaseAuth.currentUser;
  }
}
