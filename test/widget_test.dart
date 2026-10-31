import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_2/main.dart';

void main() {
  testWidgets('calculates fibonacci value', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField), '10');
    await tester.tap(find.text('Calculate'));
    await tester.pump();

    expect(find.text('F(10) = 55'), findsOneWidget);
  });
}
