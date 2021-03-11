import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:flutter_issue_tracker/common/failures/auth_failures.dart';
import 'package:flutter_issue_tracker/data/repository/auth_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUserCredential extends Mock implements UserCredential {}

class MockUser extends Mock implements User {}

class MockFirebaseApp extends Mock implements FirebaseApp {}

class MockFirebaseAuthOauth extends Mock implements FirebaseAuthOAuth {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  MockFirebaseApp mockFirebaseApp;
  MockFirebaseAuth mockFirebaseAuth;
  MockUserCredential mockUserCredential;
  MockUser mockUser;
  MockFirebaseAuthOauth mockFirebaseAuthOauth;
  AuthRepository authRepository;

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
    mockUserCredential = MockUserCredential();
    mockFirebaseAuthOauth = MockFirebaseAuthOauth().withApp(mockFirebaseApp);
    authRepository = AuthRepository(mockFirebaseAuth);
  });

  group('AuthRepository', () {
    String dummyEmail = 'bob';
    String dummyPassword = 'bob';

    test('should return a User when createUserWithEmailAndPassword is called',
        () async {
      // arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .thenAnswer((_) => Future.value(mockUserCredential));

      when(mockUserCredential.user).thenReturn(mockUser);

      // act
      var result = await authRepository.registerUserWithEmailAndPassword(
          email: dummyEmail, password: dummyPassword);
      // assert
      verify(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .called(1);
      expect(result, equals(mockUser));
    });

    test(
        'should return a Failure when createUserWithEmailAndPassword is called and is Unsuccessfully',
        () async {
      // arrange
      when(mockFirebaseAuth.createUserWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .thenThrow(FirebaseAuthException(
              code: 'network-request-failed', message: ''));

      //act
      final action = authRepository.registerUserWithEmailAndPassword(
          email: dummyEmail, password: dummyPassword);

      // assert
      expect(action, throwsA(isA<Failure>()));
    });

    test('should return a User when signInWithEmailAndPassword is called',
        () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .thenAnswer((_) => Future.value(mockUserCredential));

      when(mockUserCredential.user).thenReturn(mockUser);

      // act
      var result = await authRepository.signInWithEmailAndPassword(
          email: dummyEmail, password: dummyPassword);
      // assert
      verify(mockFirebaseAuth.signInWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .called(1);
      expect(result, equals(mockUser));
    });

    test(
        'should return a Failure when signInUserWithEmailAndPassword is called and is Unsuccessfully',
        () async {
      // arrange
      when(mockFirebaseAuth.signInWithEmailAndPassword(
              email: dummyEmail, password: dummyPassword))
          .thenThrow(FirebaseAuthException(
              code: 'network-request-failed', message: ''));

      //act
      final action = authRepository.signInWithEmailAndPassword(
          email: dummyEmail, password: dummyPassword);

      // assert
      expect(action, throwsA(isA<Failure>()));
    });

    test('should return void when logout is called', () async {
      // arrange
      when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
      // act
      await authRepository.logOut();
      // assert
      verify(mockFirebaseAuth.signOut());
    });

/*
    test('should return a User when signInWithGithub is called', () async {
      // arrange
      when(mockFirebaseAuthOauth
              .openSignInFlow("github.com", ["user:email"], {"lang": "en"}))
          .thenAnswer((_) => Future.value(mockUser));

      // act
      var result = await authRepository.signInWithGithub();

      // assert
      expect(result, equals(mockUser));
    });
    */
  });
}
