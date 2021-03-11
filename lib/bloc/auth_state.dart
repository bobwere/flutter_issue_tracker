part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    String email,
    String password,
    bool isSubmitting,
    String authState,
    User user,
    bool hasSucceeded,
    bool hasError,
    String errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
      email: "",
      password: "",
      isSubmitting: false,
      user: null,
      authState: 'unauthenticated',
      hasSucceeded: false,
      hasError: false,
      errorMessage: "");
}
