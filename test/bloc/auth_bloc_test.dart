import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/common/failures/auth_failures.dart';
import 'package:flutter_issue_tracker/data/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockIAuthFacade extends Mock implements AuthRepository {}

void main() {
  AuthBloc authBloc;
  MockIAuthFacade mockIAuthFacade;

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
    authBloc = AuthBloc(mockIAuthFacade);
  });

  test('initialState of AuthBloc', () {
    // assert
    expect(authBloc.state, equals(AuthState.initial()));
  });

  group(
    'AuthBloc',
    () {
      final dummyEmail = 'dummy47@gmail.com';
      final dummyPassword = 'dummy';
      final dummyErrorMessage = 'server failure';
      User dummyUser;

      blocTest<AuthBloc, AuthState>(
        'emits [] when nothing is added',
        build: () => authBloc,
        expect: [],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits changed state.email when AuthEvent.emailChanged is added',
        build: () => authBloc,
        act: (bloc) => bloc.add(EmailChanged(email: dummyEmail)),
        expect: [AuthState.initial().copyWith(email: dummyEmail)],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits changed state.password when AuthEvent.passwordChanged is added',
        build: () => authBloc,
        act: (bloc) => bloc.add(PasswordChanged(password: dummyPassword)),
        expect: [AuthState.initial().copyWith(password: dummyPassword)],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.authstate.unauthenticated when AuthEvent.UnauthenticatedUser is added',
        build: () => authBloc,
        act: (bloc) => bloc.add(UnauthenticatedUser()),
        expect: [
          AuthState.initial().copyWith.call(authState: 'unauthenticated')
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.authstate.unregistered when AuthEvent.UnregisteredUser is added',
        build: () => authBloc,
        act: (bloc) => bloc.add(UnregisteredUser()),
        expect: [AuthState.initial().copyWith.call(authState: 'unregistered')],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null when AuthEvent.GetCurrentUser is added and no user is found',
        build: () {
          when(mockIAuthFacade.getCurrentUser()).thenReturn(null);
          return authBloc;
        },
        act: (bloc) => bloc.add(GetCurrentUser()),
        expect: [AuthState.initial().copyWith.call(user: null)],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user when AuthEvent.GetCurrentUser is added and user is found',
        build: () {
          when(mockIAuthFacade.getCurrentUser()).thenReturn(dummyUser);
          return authBloc;
        },
        act: (bloc) => bloc.add(GetCurrentUser()),
        expect: [AuthState.initial().copyWith.call(user: dummyUser)],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null and state.unauthenticated when AuthEvent.RegisterWithEmailAndPassword is added and registration is Unsuccessfully because of empty state.password and state.email',
        build: () {
          when(mockIAuthFacade.registerUserWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenThrow(
                  Failure('Please provide a email and password to continue'));
          return authBloc;
        },
        act: (bloc) => bloc.add(RegisterUserWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
              ),
          AuthState.initial().copyWith.call(
                isSubmitting: false,
                hasError: true,
                errorMessage: 'Please provide a email and password to continue',
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user and state.authenticated when AuthEvent.RegisterWithEmailAndPassword is added and registration is Successfully',
        build: () {
          when(mockIAuthFacade.registerUserWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenAnswer((_) async => null);
          return authBloc;
        },
        seed: AuthState.initial().copyWith.call(
              password: dummyPassword,
              email: dummyEmail,
            ),
        act: (bloc) => bloc.add(RegisterUserWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
                password: dummyPassword,
                email: dummyEmail,
              ),
          AuthState.initial().copyWith.call(
                email: dummyEmail,
                password: dummyPassword,
                isSubmitting: false,
                user: dummyUser,
                authState: 'authenticated',
                hasSucceeded: true,
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null and state.unauthenticated when AuthEvent.RegisterWithEmailAndPassword is added and registration is Unsuccessfully',
        build: () {
          when(mockIAuthFacade.registerUserWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenThrow(Failure(dummyErrorMessage));
          return authBloc;
        },
        seed: AuthState.initial().copyWith.call(
              password: dummyPassword,
              email: dummyEmail,
            ),
        act: (bloc) => bloc.add(RegisterUserWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
                password: dummyPassword,
                email: dummyEmail,
              ),
          AuthState.initial().copyWith.call(
                isSubmitting: false,
                hasError: true,
                errorMessage: dummyErrorMessage,
                email: dummyEmail,
                password: dummyPassword,
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null and state.unauthenticated when AuthEvent.SignInWithEmailAndPassword is added and signIN is Unsuccessfully because of empty state.password and state.email',
        build: () {
          when(mockIAuthFacade.signInWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenThrow(
                  Failure('Please provide a email and password to continue'));
          return authBloc;
        },
        act: (bloc) => bloc.add(SignInWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
              ),
          AuthState.initial().copyWith.call(
                isSubmitting: false,
                hasError: true,
                errorMessage: 'Please provide a email and password to continue',
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user and state.authenticated when AuthEvent.SignInWithEmailAndPassword is added and signIn is Successfully',
        build: () {
          when(mockIAuthFacade.signInWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenAnswer((_) async => null);
          return authBloc;
        },
        seed: AuthState.initial().copyWith.call(
              password: dummyPassword,
              email: dummyEmail,
            ),
        act: (bloc) => bloc.add(SignInWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
                password: dummyPassword,
                email: dummyEmail,
              ),
          AuthState.initial().copyWith.call(
                email: dummyEmail,
                password: dummyPassword,
                isSubmitting: false,
                user: dummyUser,
                authState: 'authenticated',
                hasSucceeded: true,
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null and state.unauthenticated when AuthEvent.SignInWithEmailAndPassword is added and signIn is Unsuccessfully',
        build: () {
          when(mockIAuthFacade.signInWithEmailAndPassword(
                  email: dummyEmail, password: dummyPassword))
              .thenThrow(Failure(dummyErrorMessage));
          return authBloc;
        },
        seed: AuthState.initial().copyWith.call(
              password: dummyPassword,
              email: dummyEmail,
            ),
        act: (bloc) => bloc.add(SignInWithEmailAndPassword()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
                password: dummyPassword,
                email: dummyEmail,
              ),
          AuthState.initial().copyWith.call(
                isSubmitting: false,
                hasError: true,
                errorMessage: dummyErrorMessage,
                email: dummyEmail,
                password: dummyPassword,
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user and state.authenticated when AuthEvent.SignInWithGithub is added and signIn is Successfully',
        build: () {
          when(mockIAuthFacade.signInWithGithub())
              .thenAnswer((_) async => null);
          return authBloc;
        },
        act: (bloc) => bloc.add(SignInWithGithub()),
        expect: [
          AuthState.initial().copyWith.call(isSubmitting: true),
          AuthState.initial().copyWith.call(
                hasSucceeded: true,
                user: dummyUser,
                authState: 'authenticated',
              ),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits state.user.null and state.unauthenticated when AuthEvent.SignInWithGithub is added and signIn is Unsuccessfully',
        build: () {
          when(mockIAuthFacade.signInWithGithub())
              .thenThrow(Failure(dummyErrorMessage));
          return authBloc;
        },
        act: (bloc) => bloc.add(SignInWithGithub()),
        expect: [
          AuthState.initial().copyWith.call(
                isSubmitting: true,
              ),
          AuthState.initial().copyWith.call(
                isSubmitting: false,
                hasError: true,
                errorMessage: dummyErrorMessage,
              )
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'AuthBloc emits initial state when AuthEvent.LogOut is added and is Succesfully',
        build: () {
          when(mockIAuthFacade.logOut()).thenAnswer((_) async => null);
          return authBloc;
        },
        act: (bloc) => bloc.add(LogOut()),
        expect: [AuthState.initial()],
      );
    },
  );

  tearDown(() {
    authBloc?.close();
  });
}
