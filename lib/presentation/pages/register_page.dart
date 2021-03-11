import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:loading_indicator/loading_indicator.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
      child: BlocListener<AuthBloc, AuthState>(listenWhen: (p, c) {
        return p.hasError != c.hasError || p.hasSucceeded != c.hasSucceeded;
      }, listener: (context, state) {
        if (state.hasError && state.errorMessage.isNotEmpty) {
          Flushbar(
            key: const Key('registerflushbar'),
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
      }, child: BlocBuilder<AuthBloc, AuthState>(
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
                        'Create Account',
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
                        'Sign up to get started!',
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
                          key: const Key('registeremailfield'),
                          autocorrect: false,
                          enabled: !state.isSubmitting,
                          controller: _emailTextController,
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
                          onChanged: (_) {
                            context.read<AuthBloc>().add(
                                EmailChanged(email: _emailTextController.text));
                          }),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                          key: const Key('registerpasswordfield'),
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
                            context.read<AuthBloc>().add(PasswordChanged(
                                password: _passwordTextController.text));
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
                          key: const Key('registerbutton'),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: colorScheme.primary,
                          child: Text(
                            'Register',
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
                                .add(RegisterUserWithEmailAndPassword());
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
                    //110
                    SizedBox(
                        height: MediaQuery.of(context).size.height - 365 - 100),
                    GestureDetector(
                      key: const Key('NavigateToLoginPage'),
                      onTap: () {
                        if (!state.isSubmitting)
                          FocusScope.of(context).requestFocus(new FocusNode());
                        context.read<AuthBloc>().add(UnauthenticatedUser());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                                text: 'I am already a member.',
                                style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Sign In?',
                                    style: TextStyle(
                                      color: colorScheme.primary,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ]),
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
      )),
    );
  }
}
