import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_issue_tracker/common/failures/auth_failures.dart';
import 'package:flutter_issue_tracker/data/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._iAuthFacade) : super(AuthState.initial());

  final IAuthFacade _iAuthFacade;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is EmailChanged) {
      yield _mapEmailChangedToState(event, state);
    } else if (event is PasswordChanged) {
      yield _mapPasswordChangedToState(event, state);
    } else if (event is RegisterUserWithEmailAndPassword) {
      yield* _mapRegisterUserWithEmailAndPasswordToState(event, state);
    } else if (event is SignInWithEmailAndPassword) {
      yield* _mapSignInWithEmailAndPasswordToState(event, state);
    } else if (event is SignInWithGithub) {
      yield* _mapSignInWithGithubToState(event, state);
    } else if (event is LogOut) {
      yield* _mapLogOutToState(event, state);
    } else if (event is GetCurrentUser) {
      yield* _mapGetCurrentUserToState(event, state);
    } else if (event is UnauthenticatedUser) {
      yield _mapUnauthenticatedUserToState(event, state);
    } else if (event is UnregisteredUser) {
      yield _mapUnregisteredUserToState(event, state);
    }
  }

  AuthState _mapUnauthenticatedUserToState(
    UnauthenticatedUser event,
    AuthState state,
  ) {
    return state.copyWith.call(authState: 'unauthenticated');
  }

  AuthState _mapUnregisteredUserToState(
    UnregisteredUser event,
    AuthState state,
  ) {
    return state.copyWith.call(authState: 'unregistered');
  }

  AuthState _mapEmailChangedToState(
    EmailChanged event,
    AuthState state,
  ) {
    return state.copyWith.call(email: event.email);
  }

  AuthState _mapPasswordChangedToState(
    PasswordChanged event,
    AuthState state,
  ) {
    return state.copyWith.call(password: event.password);
  }

  Stream<AuthState> _mapRegisterUserWithEmailAndPasswordToState(
      event, AuthState state) async* {
    yield state.copyWith.call(
      isSubmitting: true,
    );

    if (state.email.isNotEmpty && state.password.isNotEmpty) {
      try {
        User user = await _iAuthFacade.registerUserWithEmailAndPassword(
            email: state.email, password: state.password);
        yield state.copyWith.call(
          isSubmitting: false,
          hasSucceeded: true,
          errorMessage: "",
          hasError: false,
          user: user,
          authState: 'authenticated',
        );
      } on Failure catch (e) {
        yield state.copyWith
            .call(isSubmitting: false, hasError: true, errorMessage: e.message);
      }
    } else {
      yield state.copyWith.call(
          isSubmitting: false,
          hasError: true,
          errorMessage: 'Please provide a email and password to continue');
    }
  }

  Stream<AuthState> _mapSignInWithEmailAndPasswordToState(
      event, AuthState state) async* {
    yield state.copyWith.call(
      isSubmitting: true,
    );

    if (state.email.isNotEmpty && state.password.isNotEmpty) {
      try {
        User user = await _iAuthFacade.signInWithEmailAndPassword(
            email: state.email, password: state.password);
        yield state.copyWith.call(
          isSubmitting: false,
          hasSucceeded: true,
          errorMessage: "",
          hasError: false,
          user: user,
          authState: 'authenticated',
        );
      } on Failure catch (e) {
        yield state.copyWith
            .call(isSubmitting: false, hasError: true, errorMessage: e.message);
      }
    } else {
      yield state.copyWith.call(
          isSubmitting: false,
          hasError: true,
          errorMessage: 'Please provide a email and password to continue');
    }
  }

  Stream<AuthState> _mapSignInWithGithubToState(event, AuthState state) async* {
    yield state.copyWith.call(
      isSubmitting: true,
    );

    try {
      User user = await _iAuthFacade.signInWithGithub();
      yield state.copyWith.call(
        isSubmitting: false,
        hasSucceeded: true,
        errorMessage: "",
        hasError: false,
        user: user,
        authState: 'authenticated',
      );
    } on Failure catch (e) {
      yield state.copyWith
          .call(isSubmitting: false, hasError: true, errorMessage: e.message);
    }
  }

  Stream<AuthState> _mapLogOutToState(event, AuthState state) async* {
    yield state.copyWith.call(
        isSubmitting: false,
        errorMessage: "",
        hasError: false,
        password: '',
        authState: 'unauthenticated',
        hasSucceeded: false,
        email: '');

    try {
      await _iAuthFacade.logOut();
    } catch (e) {
      print(e);
    }
  }

  Stream<AuthState> _mapGetCurrentUserToState(event, AuthState state) async* {
    var currentUser = _iAuthFacade.getCurrentUser();
    if (currentUser != null) {
      yield state.copyWith.call(user: currentUser, authState: 'authenticated');
    } else {
      yield state.copyWith.call(user: null);
    }
  }
}
