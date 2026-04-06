import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chat_bot/main.dart';

void main() {
  testWidgets('ChatBot screen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the app bar shows the bot name
    expect(find.text('AcceeBot'), findsOneWidget);

    // Verify the welcome message is shown
    expect(find.text('Welcome to AcceeBot! 👋'), findsOneWidget);

    // Verify the input field exists
    expect(find.byType(TextField), findsOneWidget);

    // Verify the send button exists
    expect(find.byIcon(Icons.send_rounded), findsOneWidget);
  });
}
