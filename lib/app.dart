import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/common/constants/theme.dart';
import 'package:flutter_issue_tracker/data/repository/auth_repository.dart';
import 'package:flutter_issue_tracker/data/repository/github_repository.dart';
import 'package:flutter_issue_tracker/data/repository/graphql_client.dart';
import 'package:flutter_issue_tracker/presentation/pages/splash_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _client = initClient('https://api.github.com/graphql');
    final _firebaseAuth = FirebaseAuth.instance;

    final GithubRepository _githubRepository = new GithubRepository(_client);
    final AuthRepository _authRepository = new AuthRepository(_firebaseAuth);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (_) => AuthBloc(_authRepository)..add(GetCurrentUser()),
          ),
          BlocProvider<SearchBloc>(
            create: (_) => SearchBloc(_githubRepository)
              ..add(
                FetchInitialSearchResults(),
              )
              ..add(FetchAllLabels()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Issue Tracker',
          debugShowCheckedModeBanner: false,
          builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget),
              maxWidth: 1200,
              minWidth: 320,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(320, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(2460, name: '4K'),
              ],
              background: Container(color: Color(0xFFF5F5F5))),
          theme: flutterIssueTrackerTheme,
          home: SplashPage(),
        ),
      ),
    );
  }
}
