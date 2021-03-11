import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/home_page.dart';
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
    'renders loader when state.isFetchingInitialSearchResults is trying to fetching results from api',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(
          SearchState.initial().copyWith.call(isFetchingInitial: true));

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      expect(find.byType(LoadingIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'renders no results image and text when api return empty list of data',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(SearchState.initial());

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      expect(find.byKey(Key('nosearchresultsfound')), findsOneWidget);
    },
  );

  testWidgets(
    'renders no internet image and text when api return no internet error',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(
          SearchState.initial().copyWith.call(errorMessage: 'no internet'));

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      expect(find.byKey(Key('nointernet')), findsOneWidget);
    },
  );
  testWidgets(
    'adds SearchTermChanged event when user enters text into the search textfield',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(SearchState.initial());

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('searchfield')), 'a');
      await tester.pumpAndSettle();
      verify(mockSearchBloc.add(SearchTermChanged(term: 'a'))).called(1);
    },
  );

  testWidgets(
    'adds IssueStateChanged event when user enters taps filter dropdown and selects an option',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(SearchState.initial());

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('filterbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      await tester.tap(find.text('all').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      verify(mockSearchBloc.add(IssueStateChanged(state: 'all'))).called(1);
    },
  );

  testWidgets(
    'adds SortByChanged event when user enters taps sort by dropdown and selects an option',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(SearchState.initial());

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('sortbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      await tester.tap(find.text('newest').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      verify(mockSearchBloc.add(SortByChanged(sortBy: 'newest'))).called(1);
    },
  );

  testWidgets(
    'adds TagChanged event when user enters taps  tag dropdown and selects an option',
    (WidgetTester tester) async {
      when(mockSearchBloc.state).thenReturn(
          SearchState.initial().copyWith.call(labels: ["animation"]));

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
          child: MaterialApp(home: HomePage()),
        ),
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('tagbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      await tester.tap(find.text('animation').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      await tester.tap(find.text('OK').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      verify(mockSearchBloc.add(TagChanged(tag: ['animation']))).called(1);
    },
  );

  tearDown(() {
    mockSearchBloc?.close();
    mockAuthBloc?.close();
  });
}
