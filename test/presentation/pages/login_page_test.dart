import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/login_page.dart';
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
    'renders loader when state.isSubumitting is trying to sign in a user',
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
          child: MaterialApp(home: LoginPage()),
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
          child: MaterialApp(home: LoginPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('emailfield')), 'a');
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
          child: MaterialApp(home: LoginPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('passwordfield')), 'a');
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(PasswordChanged(password: 'a'))).called(1);
    },
  );

  testWidgets(
    'adds SignInWithEmailAndPassword event when user taps sign In button',
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
          child: MaterialApp(home: LoginPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('SignInButton')));
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(SignInWithEmailAndPassword())).called(1);
    },
  );

  testWidgets(
    'adds SignInWithGithubButton event when user taps sign In with github button',
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
          child: MaterialApp(home: LoginPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('SignInWithGithubButton')));
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(SignInWithGithub())).called(1);
    },
  );

  testWidgets(
    'adds NavigateToRegisterPage event when user taps on I am a new user. Sign Up Button',
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
          child: MaterialApp(home: LoginPage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('NavigateToRegisterPage')));
      await tester.pumpAndSettle();
      verify(mockAuthBloc.add(UnregisteredUser())).called(1);
    },
  );

  testWidgets('should fetchinitialsearchresults when sign in is successful',
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
        child: MaterialApp(home: LoginPage()),
      ),
    );

    await tester.pump();
    verify(mockSearchBloc.add(FetchInitialSearchResults()));
  });

  testWidgets('should render flushbar when sign in is unsuccessful',
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
        child: MaterialApp(home: LoginPage()),
      ),
    );

    expect(find.byKey(Key('flushbar')), findsNothing);

    await tester.pump();

    expect(find.byKey(Key('flushbar')), findsOneWidget);

    await tester.pumpAndSettle(const Duration(seconds: 3));
  });

  tearDown(() {
    mockSearchBloc?.close();
    mockAuthBloc?.close();
  });
}
