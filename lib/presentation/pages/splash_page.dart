import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:flutter_issue_tracker/presentation/widgets/auth_widget.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateToAfterSplashPage(context);
  }

  void navigateToAfterSplashPage(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        return AuthWidget();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: colorScheme.primaryVariant,
      ),
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(size: 50),
                    SizedBox(width: 10),
                    Icon(
                      LineAwesomeIcons.github,
                      size: 50,
                      color: Colors.black87,
                    ),
                  ],
                ),
                Text(
                  'Flutter Issue Tracker',
                  style: TextStyle(
                      color: Color(0xFF272727),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
