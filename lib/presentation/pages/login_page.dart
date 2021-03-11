import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextController;
  TextEditingController _passwordTextController;
  bool isPasswordVisible;

  @override
  void initState() {
    super.initState();
    isPasswordVisible = false;
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: colorScheme.primaryVariant,
      ),
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) {
          return p.hasError != c.hasError || p.hasSucceeded != c.hasSucceeded;
        },
        listener: (context, state) {
          if (state.hasError && state.errorMessage.isNotEmpty) {
            Flushbar(
              key: const Key('flushbar'),
              title: 'Something went wrong!',
              message: state.errorMessage,
              margin: EdgeInsets.all(10),
              flushbarPosition: FlushbarPosition.TOP,
              duration: Duration(seconds: 3),
              isDismissible: true,
              backgroundColor: Color(0xFFFD9726),
              borderRadius: 15,
            ).show(context);
          }
          if (state.hasSucceeded && state.authState == 'authenticated') {
            context.read<SearchBloc>().add(FetchInitialSearchResults());
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              color: Color(0xFF313131),
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Sign in to continue!',
                          style: TextStyle(
                              color: Color(0xFF858585),
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                            key: const Key('emailfield'),
                            autocorrect: false,
                            controller: _emailTextController,
                            enabled: !state.isSubmitting,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onChanged: (value) {
                              context
                                  .read<AuthBloc>()
                                  .add(EmailChanged(email: value));
                            }),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                            key: const Key('passwordfield'),
                            autocorrect: false,
                            enabled: !state.isSubmitting,
                            controller: _passwordTextController,
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isPasswordVisible
                                      ? LineAwesomeIcons.eye_slash
                                      : LineAwesomeIcons.eye,
                                  size: 24,
                                ),
                              ),
                              isCollapsed: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onChanged: (value) {
                              context
                                  .read<AuthBloc>()
                                  .add(PasswordChanged(password: value));
                            }),
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            key: const Key('SignInButton'),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            color: colorScheme.primary,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              if (!state.isSubmitting)
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());
                              context
                                  .read<AuthBloc>()
                                  .add(SignInWithEmailAndPassword());
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Text('Or'),
                          SizedBox(width: 10),
                          Container(
                            width: 100,
                            height: 1,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFF2C2C2C),
                          child: FlatButton(
                            key: const Key('SignInWithGithubButton'),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            color: Color(0xFF2C2C2C),
                            child: Text(
                              'Continue with Github',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              if (!state.isSubmitting)
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());
                              context.read<AuthBloc>().add(SignInWithGithub());
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      state.isSubmitting
                          ? Center(
                              child: Container(
                                height: 30,
                                width: 30,
                                child: LoadingIndicator(
                                  indicatorType: Indicator.ballRotateChase,
                                  colors: [
                                    Color(0xFF428CED),
                                    Color(0xFFF4A55F),
                                  ],
                                ),
                              ),
                            )
                          : SizedBox(height: 30),
                      SizedBox(
                          height:
                              MediaQuery.of(context).size.height - 430 - 115),

                      //30
                      GestureDetector(
                        key: const Key('NavigateToRegisterPage'),
                        onTap: () {
                          if (!state.isSubmitting)
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());

                          context.read<AuthBloc>().add(UnregisteredUser());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'I am a new user.',
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Sign Up?',
                                    style: TextStyle(
                                      color: colorScheme.primary,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
