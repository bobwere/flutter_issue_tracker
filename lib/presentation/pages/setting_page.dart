import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: colorScheme.primaryVariant,
        ),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, searchState) {
            return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, authState) {
                var photoURI =
                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1489&q=80';
                if (authState.user != null) {
                  if (authState.user.photoURL != null) {
                    photoURI = authState.user.photoURL;
                  }
                }

                var email =
                    authState.user != null ? authState.user.email : 'Me';
                return Scaffold(
                  backgroundColor: Color(0xFFECF3F9),
                  body: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          blurRadius: 2,
                                        )
                                      ]),
                                  child: Center(
                                    child: Icon(LineAwesomeIcons.arrow_left),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  'My Profile',
                                  style: TextStyle(
                                      color: Color(0xFF313131),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(photoURI),
                              ),
                              SizedBox(height: 20),
                              Text(
                                email,
                                style: TextStyle(
                                    color: Color(0xFF313131),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.exclamation_circle,
                                    color: colorScheme.primary.withOpacity(0.9),
                                    size: 27,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'All Issues',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '50,709',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 60,
                                color: Colors.grey,
                                padding: EdgeInsets.symmetric(vertical: 10),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.dropbox,
                                    color: colorScheme.primary.withOpacity(0.9),
                                    size: 27,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Open Issues',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '8,339',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 60,
                                color: Colors.grey,
                                padding: EdgeInsets.symmetric(vertical: 10),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.archive,
                                    color: colorScheme.primary.withOpacity(0.9),
                                    size: 27,
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Closed Issues',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '42,370',
                                    style: TextStyle(
                                        color: Color(0xFF313131),
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Text(
                              whatiIsFlutter,
                              style: TextStyle(
                                  color: Color(0xFF313131),
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 45,
                                color: Colors.white,
                                width: MediaQuery.of(context).size.width,
                                child: MaterialButton(
                                  key: const Key('logout'),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 120),
                                  onPressed: () {
                                    context.read<AuthBloc>().add(LogOut());
                                    Navigator.pop(context);
                                  },
                                  color: colorScheme.primary,
                                  child: Text(
                                    'Log Out',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  elevation: 3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}

const whatiIsFlutter =
    "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.";
