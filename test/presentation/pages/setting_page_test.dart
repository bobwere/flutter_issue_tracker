import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_issue_tracker/bloc/auth_bloc.dart';
import 'package:flutter_issue_tracker/bloc/search_bloc.dart';
import 'package:flutter_issue_tracker/presentation/pages/setting_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../util/image_test_util.dart';

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
    'adds LogOut event when user taps log out  button',
    (WidgetTester tester) async {
      when(mockAuthBloc.state).thenReturn(AuthState.initial());

      provideMockedNetworkImages(() async {
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
            child: MaterialApp(home: SettingPage()),
          ),
        );

        await tester.pumpAndSettle();
        await tester.tap(find.byKey(Key('logout')));
        await tester.pumpAndSettle();
        verify(mockAuthBloc.add(LogOut())).called(1);
      });
    },
  );

  tearDown(() {
    mockSearchBloc?.close();
    mockAuthBloc?.close();
  });
}
