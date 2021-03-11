import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/home_page.dart';
import 'package:flutter_issue_tracker/presentation/pages/login_page.dart';
import 'package:flutter_issue_tracker/presentation/pages/register_page.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.authState == 'unauthenticated') {
          return LoginPage();
        } else if (state.authState == 'authenticated') {
          return HomePage();
        } else {
          return RegisterPage();
        }
      },
    );
  }
}
