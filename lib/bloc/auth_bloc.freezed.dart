// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged({String email}) {
    return EmailChanged(
      email: email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged({String password}) {
    return PasswordChanged(
      password: password,
    );
  }

// ignore: unused_element
  RegisterUserWithEmailAndPassword registerUserWithEmailAndPassword() {
    return const RegisterUserWithEmailAndPassword();
  }

// ignore: unused_element
  SignInWithEmailAndPassword signInWithEmailAndPassword() {
    return const SignInWithEmailAndPassword();
  }

// ignore: unused_element
  SignInWithGithub signInWithGithub() {
    return const SignInWithGithub();
  }

// ignore: unused_element
  GetCurrentUser getCurrentUser() {
    return const GetCurrentUser();
  }

// ignore: unused_element
  LogOut logOut() {
    return const LogOut();
  }

// ignore: unused_element
  UnauthenticatedUser unauthenticatedUser() {
    return const UnauthenticatedUser();
  }

// ignore: unused_element
  UnregisteredUser unregisteredUser() {
    return const UnregisteredUser();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged({String email}) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged({String password}) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterUserWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterUserWithEmailAndPasswordCopyWith(
          RegisterUserWithEmailAndPassword value,
          $Res Function(RegisterUserWithEmailAndPassword) then) =
      _$RegisterUserWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$RegisterUserWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $RegisterUserWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterUserWithEmailAndPasswordCopyWithImpl(
      RegisterUserWithEmailAndPassword _value,
      $Res Function(RegisterUserWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterUserWithEmailAndPassword));

  @override
  RegisterUserWithEmailAndPassword get _value =>
      super._value as RegisterUserWithEmailAndPassword;
}

class _$RegisterUserWithEmailAndPassword
    implements RegisterUserWithEmailAndPassword {
  const _$RegisterUserWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.registerUserWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUserWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return registerUserWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUserWithEmailAndPassword != null) {
      return registerUserWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return registerUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUserWithEmailAndPassword != null) {
      return registerUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterUserWithEmailAndPassword implements AuthEvent {
  const factory RegisterUserWithEmailAndPassword() =
      _$RegisterUserWithEmailAndPassword;
}

abstract class $SignInWithEmailAndPasswordCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordCopyWith(SignInWithEmailAndPassword value,
          $Res Function(SignInWithEmailAndPassword) then) =
      _$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordCopyWith<$Res> {
  _$SignInWithEmailAndPasswordCopyWithImpl(SignInWithEmailAndPassword _value,
      $Res Function(SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPassword));

  @override
  SignInWithEmailAndPassword get _value =>
      super._value as SignInWithEmailAndPassword;
}

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}

abstract class $SignInWithGithubCopyWith<$Res> {
  factory $SignInWithGithubCopyWith(
          SignInWithGithub value, $Res Function(SignInWithGithub) then) =
      _$SignInWithGithubCopyWithImpl<$Res>;
}

class _$SignInWithGithubCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithGithubCopyWith<$Res> {
  _$SignInWithGithubCopyWithImpl(
      SignInWithGithub _value, $Res Function(SignInWithGithub) _then)
      : super(_value, (v) => _then(v as SignInWithGithub));

  @override
  SignInWithGithub get _value => super._value as SignInWithGithub;
}

class _$SignInWithGithub implements SignInWithGithub {
  const _$SignInWithGithub();

  @override
  String toString() {
    return 'AuthEvent.signInWithGithub()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGithub);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return signInWithGithub();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGithub != null) {
      return signInWithGithub();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return signInWithGithub(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGithub != null) {
      return signInWithGithub(this);
    }
    return orElse();
  }
}

abstract class SignInWithGithub implements AuthEvent {
  const factory SignInWithGithub() = _$SignInWithGithub;
}

abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

class _$GetCurrentUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(
      GetCurrentUser _value, $Res Function(GetCurrentUser) _then)
      : super(_value, (v) => _then(v as GetCurrentUser));

  @override
  GetCurrentUser get _value => super._value as GetCurrentUser;
}

class _$GetCurrentUser implements GetCurrentUser {
  const _$GetCurrentUser();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements AuthEvent {
  const factory GetCurrentUser() = _$GetCurrentUser;
}

abstract class $LogOutCopyWith<$Res> {
  factory $LogOutCopyWith(LogOut value, $Res Function(LogOut) then) =
      _$LogOutCopyWithImpl<$Res>;
}

class _$LogOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LogOutCopyWith<$Res> {
  _$LogOutCopyWithImpl(LogOut _value, $Res Function(LogOut) _then)
      : super(_value, (v) => _then(v as LogOut));

  @override
  LogOut get _value => super._value as LogOut;
}

class _$LogOut implements LogOut {
  const _$LogOut();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return logOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOut;
}

abstract class $UnauthenticatedUserCopyWith<$Res> {
  factory $UnauthenticatedUserCopyWith(
          UnauthenticatedUser value, $Res Function(UnauthenticatedUser) then) =
      _$UnauthenticatedUserCopyWithImpl<$Res>;
}

class _$UnauthenticatedUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $UnauthenticatedUserCopyWith<$Res> {
  _$UnauthenticatedUserCopyWithImpl(
      UnauthenticatedUser _value, $Res Function(UnauthenticatedUser) _then)
      : super(_value, (v) => _then(v as UnauthenticatedUser));

  @override
  UnauthenticatedUser get _value => super._value as UnauthenticatedUser;
}

class _$UnauthenticatedUser implements UnauthenticatedUser {
  const _$UnauthenticatedUser();

  @override
  String toString() {
    return 'AuthEvent.unauthenticatedUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthenticatedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return unauthenticatedUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticatedUser != null) {
      return unauthenticatedUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return unauthenticatedUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticatedUser != null) {
      return unauthenticatedUser(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedUser implements AuthEvent {
  const factory UnauthenticatedUser() = _$UnauthenticatedUser;
}

abstract class $UnregisteredUserCopyWith<$Res> {
  factory $UnregisteredUserCopyWith(
          UnregisteredUser value, $Res Function(UnregisteredUser) then) =
      _$UnregisteredUserCopyWithImpl<$Res>;
}

class _$UnregisteredUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UnregisteredUserCopyWith<$Res> {
  _$UnregisteredUserCopyWithImpl(
      UnregisteredUser _value, $Res Function(UnregisteredUser) _then)
      : super(_value, (v) => _then(v as UnregisteredUser));

  @override
  UnregisteredUser get _value => super._value as UnregisteredUser;
}

class _$UnregisteredUser implements UnregisteredUser {
  const _$UnregisteredUser();

  @override
  String toString() {
    return 'AuthEvent.unregisteredUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnregisteredUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerUserWithEmailAndPassword(),
    @required Result signInWithEmailAndPassword(),
    @required Result signInWithGithub(),
    @required Result getCurrentUser(),
    @required Result logOut(),
    @required Result unauthenticatedUser(),
    @required Result unregisteredUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return unregisteredUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerUserWithEmailAndPassword(),
    Result signInWithEmailAndPassword(),
    Result signInWithGithub(),
    Result getCurrentUser(),
    Result logOut(),
    Result unauthenticatedUser(),
    Result unregisteredUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unregisteredUser != null) {
      return unregisteredUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerUserWithEmailAndPassword(
            RegisterUserWithEmailAndPassword value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required Result signInWithGithub(SignInWithGithub value),
    @required Result getCurrentUser(GetCurrentUser value),
    @required Result logOut(LogOut value),
    @required Result unauthenticatedUser(UnauthenticatedUser value),
    @required Result unregisteredUser(UnregisteredUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerUserWithEmailAndPassword != null);
    assert(signInWithEmailAndPassword != null);
    assert(signInWithGithub != null);
    assert(getCurrentUser != null);
    assert(logOut != null);
    assert(unauthenticatedUser != null);
    assert(unregisteredUser != null);
    return unregisteredUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerUserWithEmailAndPassword(
        RegisterUserWithEmailAndPassword value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result signInWithGithub(SignInWithGithub value),
    Result getCurrentUser(GetCurrentUser value),
    Result logOut(LogOut value),
    Result unauthenticatedUser(UnauthenticatedUser value),
    Result unregisteredUser(UnregisteredUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unregisteredUser != null) {
      return unregisteredUser(this);
    }
    return orElse();
  }
}

abstract class UnregisteredUser implements AuthEvent {
  const factory UnregisteredUser() = _$UnregisteredUser;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {String email,
      String password,
      bool isSubmitting,
      String authState,
      User user,
      bool hasSucceeded,
      bool hasError,
      String errorMessage}) {
    return _AuthState(
      email: email,
      password: password,
      isSubmitting: isSubmitting,
      authState: authState,
      user: user,
      hasSucceeded: hasSucceeded,
      hasError: hasError,
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  String get email;
  String get password;
  bool get isSubmitting;
  String get authState;
  User get user;
  bool get hasSucceeded;
  bool get hasError;
  String get errorMessage;

  $AuthStateCopyWith<AuthState> get copyWith;
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      bool isSubmitting,
      String authState,
      User user,
      bool hasSucceeded,
      bool hasError,
      String errorMessage});
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object authState = freezed,
    Object user = freezed,
    Object hasSucceeded = freezed,
    Object hasError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authState: authState == freezed ? _value.authState : authState as String,
      user: user == freezed ? _value.user : user as User,
      hasSucceeded:
          hasSucceeded == freezed ? _value.hasSucceeded : hasSucceeded as bool,
      hasError: hasError == freezed ? _value.hasError : hasError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      bool isSubmitting,
      String authState,
      User user,
      bool hasSucceeded,
      bool hasError,
      String errorMessage});
}

class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object authState = freezed,
    Object user = freezed,
    Object hasSucceeded = freezed,
    Object hasError = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_AuthState(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authState: authState == freezed ? _value.authState : authState as String,
      user: user == freezed ? _value.user : user as User,
      hasSucceeded:
          hasSucceeded == freezed ? _value.hasSucceeded : hasSucceeded as bool,
      hasError: hasError == freezed ? _value.hasError : hasError as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.email,
      this.password,
      this.isSubmitting,
      this.authState,
      this.user,
      this.hasSucceeded,
      this.hasError,
      this.errorMessage});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final String authState;
  @override
  final User user;
  @override
  final bool hasSucceeded;
  @override
  final bool hasError;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState(email: $email, password: $password, isSubmitting: $isSubmitting, authState: $authState, user: $user, hasSucceeded: $hasSucceeded, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authState, authState) ||
                const DeepCollectionEquality()
                    .equals(other.authState, authState)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.hasSucceeded, hasSucceeded) ||
                const DeepCollectionEquality()
                    .equals(other.hasSucceeded, hasSucceeded)) &&
            (identical(other.hasError, hasError) ||
                const DeepCollectionEquality()
                    .equals(other.hasError, hasError)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authState) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(hasSucceeded) ^
      const DeepCollectionEquality().hash(hasError) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {String email,
      String password,
      bool isSubmitting,
      String authState,
      User user,
      bool hasSucceeded,
      bool hasError,
      String errorMessage}) = _$_AuthState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  String get authState;
  @override
  User get user;
  @override
  bool get hasSucceeded;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
