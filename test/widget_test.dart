import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_uts_/main.dart';

void main() {
  testWidgets('Splash Screen has Register and Login buttons',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the splash screen has the Register and Login buttons.
    expect(find.text('Register'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Navigate to Register Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the Register button.
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that we are on the Register screen.
    expect(find.text('Register'), findsOneWidget);
    expect(
        find.byType(TextField), findsNWidgets(3)); // Username, Email, Password
  });

  testWidgets('Navigate to Login Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Tap the Login button.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that we are on the Login screen.
    expect(find.text('Login'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2)); // Username, Password
  });

  testWidgets('Login with valid credentials', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to Login Screen
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    // Enter valid username and password
    await tester.enterText(find.byType(TextField).at(0), 'user'); // Username
    await tester.enterText(
        find.byType(TextField).at(1), 'password'); // Password

    // Tap the Login button
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that we are on the Home screen
    expect(find.text('Selamat datang di Aplikasi Gym!'), findsOneWidget);
  });

  testWidgets('Register a new user', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to Register Screen
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle();

    // Enter username, email, and password
    await tester.enterText(find.byType(TextField).at(0), 'newuser'); // Username
    await tester.enterText(
        find.byType(TextField).at(1), 'newuser@example.com'); // Email
    await tester.enterText(
        find.byType(TextField).at(2), 'newpassword'); // Password

    // Tap the Register button
    await tester.tap(find.text('Register'));
    await tester.pumpAndSettle(); // Wait for the notification to show

    // Verify that we are back on the Login screen
    expect(find.text('Login'), findsOneWidget);
  });
}
