import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/register_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mockito/mockito.dart';

class MockAuthBloc extends MockBloc<AuthState> implements AuthBloc {}

class MockSearchBloc extends MockBloc<SearchState> implements SearchBloc {}

void main() {
  MockAuthBloc mockAuthBloc;
  MockSearchBloc mockSearchBloc;

  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockAuthBloc = MockAuthBloc();
    mockSearchBloc = MockSearchBloc();
  });

  testWidgets(
    'renders loader when state.isSubumitting is trying to register in a user',
    (WidgetTester tester) async {
      when(mockAuthBloc.state)
          .thenReturn(AuthState.initial().copyWith.call(isSubmitting: true));

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
          child: MaterialApp(home: RegisterPage()),
        ),
      );

      expect(find.byType(LoadingIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'adds EmailChanged event when user enters text into the email textfield',
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
          child: MaterialApp(home: RegisterPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('registeremailfield')), 'a');
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(EmailChanged(email: 'a'))).called(1);
    },
  );

  testWidgets(
    'adds PasswordChanged event when user enters text into the password textfield',
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
          child: MaterialApp(home: RegisterPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('registerpasswordfield')), 'a');
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(PasswordChanged(password: 'a'))).called(1);
    },
  );

  testWidgets(
    'adds RegisterWithEmailAndPassword event when user taps register button',
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
          child: MaterialApp(home: RegisterPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('registerbutton')));
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(RegisterUserWithEmailAndPassword())).called(1);
    },
  );

  testWidgets(
    'adds NavigateToLoginPage event when user taps on I am already a member. Sign In Button',
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
          child: MaterialApp(home: RegisterPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('NavigateToLoginPage')));
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(UnauthenticatedUser())).called(1);
    },
  );

  testWidgets(
      'should fetchinitialsearchresults when registration is successful',
      (WidgetTester tester) async {
    //Arrange
    final expectedStates = [
      AuthState.initial(),
      AuthState.initial()
          .copyWith
          .call(hasSucceeded: true, authState: 'authenticated')
    ];

    when(mockAuthBloc.state).thenReturn(AuthState.initial());
    whenListen(mockAuthBloc, Stream.fromIterable(expectedStates));

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
        child: MaterialApp(home: RegisterPage()),
      ),
    );

    await tester.pump();
    verify(mockSearchBloc.add(FetchInitialSearchResults()));
  });

  testWidgets('should render flushbar when registration is unsuccessful',
      (WidgetTester tester) async {
    //Arrange
    final expectedStates = [
      AuthState.initial(),
      AuthState.initial().copyWith.call(
          hasError: true,
          errorMessage: 'Please provide a email and password to continue')
    ];

    when(mockAuthBloc.state).thenReturn(AuthState.initial());
    whenListen(mockAuthBloc, Stream.fromIterable(expectedStates));

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
        child: MaterialApp(home: RegisterPage()),
      ),
    );

    expect(find.byKey(Key('registerflushbar')), findsNothing);

    await tester.pump();

    expect(find.byKey(Key('registerflushbar')), findsOneWidget);

    await tester.pumpAndSettle(const Duration(seconds: 3));
  });

  tearDown(() async {
    await mockSearchBloc?.close();
    await mockAuthBloc?.close();
  });
}
