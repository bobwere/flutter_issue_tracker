import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/home_page.dart';
import 'package:flutter_issue_tracker/presentation/pages/login_page.dart';
import 'package:flutter_issue_tracker/presentation/pages/register_page.dart';
import 'package:flutter_issue_tracker/presentation/widgets/auth_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAuthBloc extends MockBloc<AuthState> implements AuthBloc {}

class MockSearchBloc extends MockBloc<SearchState> implements SearchBloc {}

void main() {
  MockAuthBloc mockAuthBloc;
  MockSearchBloc mockSearchBloc;

  setUp(() {
    mockAuthBloc = MockAuthBloc();
    mockSearchBloc = MockSearchBloc();
  });

  testWidgets(
    'renders LoginPage when state is unauthenticated',
    (WidgetTester tester) async {
      when(mockAuthBloc.state).thenReturn(AuthState.initial());

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(
              create: (context) => mockAuthBloc,
            ),
            BlocProvider<SearchBloc>(
              create: (context) => mockSearchBloc,
            ),
          ],
          child: MaterialApp(home: AuthWidget()),
        ),
      );

      expect(find.byType(LoginPage), findsOneWidget);
    },
  );

  testWidgets(
    'renders HomePage when state is authenticated',
    (WidgetTester tester) async {
      when(mockAuthBloc.state).thenReturn(
        AuthState.initial().copyWith.call(authState: 'authenticated'),
      );
      when(mockSearchBloc.state).thenReturn(
        SearchState.initial().copyWith.call(
              isFetchingInitial: false,
              errorMessage: 'server failure',
            ),
      );

      await tester.pumpWidget(
        MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(
              create: (context) => mockAuthBloc,
            ),
            BlocProvider<SearchBloc>(
              create: (context) => mockSearchBloc,
            ),
          ],
          child: MaterialApp(home: AuthWidget()),
        ),
      );

      expect(find.byType(HomePage), findsOneWidget);
    },
  );

  testWidgets(
    'renders RegisterPage when state is unregistered',
    (WidgetTester tester) async {
      when(mockAuthBloc.state).thenReturn(
        AuthState.initial().copyWith.call(authState: 'unregistered'),
      );

      await tester.pumpWidget(
        BlocProvider<AuthBloc>(
          create: (context) => mockAuthBloc,
          child: MaterialApp(
            home: AuthWidget(),
          ),
        ),
      );

      expect(find.byType(RegisterPage), findsOneWidget);
    },
  );

  tearDown(() {
    mockSearchBloc?.close();
    mockAuthBloc?.close();
  });
}
