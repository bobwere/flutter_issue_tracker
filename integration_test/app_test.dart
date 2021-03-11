import 'package:flutter/material.dart';
import 'package:flutter_issue_tracker/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  testWidgets(
    "Ui Flow when login is successful",
    (WidgetTester tester) async {
      // Testing starts at the root widget in the widget tree
      await tester.pumpWidget(App());

      // Wait for all the animations to finish and wait for 4 sec for splash screen to display
      await tester.pumpAndSettle(const Duration(seconds: 4));

      //Navigate to registration page
      await tester.tap(find.byKey(Key('NavigateToRegisterPage')));
      await tester.pumpAndSettle();
      expect(find.byKey(Key('NavigateToLoginPage')), findsOneWidget);

      //Navigate back to login page
      await tester.tap(find.byKey(Key('NavigateToLoginPage')));
      await tester.pumpAndSettle();
      expect(find.byKey(Key('NavigateToRegisterPage')), findsOneWidget);

      //Enter email address
      await tester.enterText(
          find.byKey(Key('emailfield')), 'bobwere47@gmail.com');
      await tester.pumpAndSettle();

      //Enter password
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('passwordfield')), 'bobwere');
      await tester.pumpAndSettle();

      //Tap Sign in Button
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('SignInButton')));
      await tester.pumpAndSettle();

      //Enter text to search field
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('searchfield')), 'animation');
      await tester.pumpAndSettle();

      //Select filter from dropdown
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('filterbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      await tester.tap(find.text('open').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      //Select sort by from dropdown
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('sortbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      await tester.tap(find.text('newest').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      //scroll list to the bottom
      await tester.pumpAndSettle();
      await tester.drag(
          find.byKey(Key('issueslist')), const Offset(0.0, -2000));
      await tester.pump();
      await tester.pump(Duration(seconds: 4));

      //click on issue and navigate to issue detail page
      await tester.pumpAndSettle();
      await tester.tap(find.text('Open').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('issuedetailbackbutton')), findsOneWidget);

      //navigate back to search page
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('issuedetailbackbutton')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('navigatetosettingbutton')), findsOneWidget);

      //navigate to setting page
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('navigatetosettingbutton')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('logout')), findsOneWidget);

      //tap logout button
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('logout')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('NavigateToRegisterPage')), findsOneWidget);
    },
  );

  testWidgets(
    "Ui Flow when registration is successful",
    (WidgetTester tester) async {
      // Testing starts at the root widget in the widget tree
      await tester.pumpWidget(App());

      // Wait for all the animations to finish and wait for 4 sec for splash screen to display
      await tester.pumpAndSettle(const Duration(seconds: 4));

      //Navigate to registration page
      await tester.tap(find.byKey(Key('NavigateToRegisterPage')));
      await tester.pumpAndSettle();
      expect(find.byKey(Key('NavigateToLoginPage')), findsOneWidget);

      //Enter email address
      await tester.enterText(
          find.byKey(Key('registeremailfield')), 'bobwere43@gmail.com');
      await tester.pumpAndSettle();

      //Enter password
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(Key('registerpasswordfield')), 'bobwere');
      await tester.pumpAndSettle();

      //Tap Sign in Button
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('registerbutton')));
      await tester.pumpAndSettle();

      //Enter text to search field
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('searchfield')), 'animation');
      await tester.pumpAndSettle();

      //Select filter from dropdown
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('filterbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      await tester.tap(find.text('open').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      //Select sort by from dropdown
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('sortbydropdown')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      await tester.tap(find.text('newest').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));

      //scroll list to the bottom
      await tester.pumpAndSettle();
      await tester.drag(
          find.byKey(Key('issueslist')), const Offset(0.0, -2000));
      await tester.pump();
      await tester.pump(Duration(seconds: 4));

      //click on issue and navigate to issue detail page
      await tester.pumpAndSettle();
      await tester.tap(find.text('Open').last);
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('issuedetailbackbutton')), findsOneWidget);

      //navigate back to search page
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('issuedetailbackbutton')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('navigatetosettingbutton')), findsOneWidget);

      //navigate to setting page
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('navigatetosettingbutton')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('logout')), findsOneWidget);

      //tap logout button
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('logout')));
      await tester.pump();
      await tester.pump(Duration(seconds: 1));
      expect(find.byKey(Key('NavigateToRegisterPage')), findsOneWidget);
    },
  );
}
