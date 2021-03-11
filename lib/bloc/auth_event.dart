part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged({String email}) = EmailChanged;
  const factory AuthEvent.passwordChanged({String password}) = PasswordChanged;
  const factory AuthEvent.registerUserWithEmailAndPassword() =
      RegisterUserWithEmailAndPassword;
  const factory AuthEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory AuthEvent.signInWithGithub() = SignInWithGithub;
  const factory AuthEvent.getCurrentUser() = GetCurrentUser;
  const factory AuthEvent.logOut() = LogOut;
  const factory AuthEvent.unauthenticatedUser() = UnauthenticatedUser;
  const factory AuthEvent.unregisteredUser() = UnregisteredUser;
}
