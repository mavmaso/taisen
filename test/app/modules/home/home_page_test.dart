import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taisen/app/modules/home/home_page.dart';

Widget testable(Widget widget) => MaterialApp(home: widget);

void main() {
  testWidgets('View home', (WidgetTester tester) async {
    await tester.pumpWidget(testable(HomePage()));

    expect(find.text('大戦 Alpha 0.1'), findsOneWidget);
    expect(find.text('N: 0'), findsOneWidget);
    expect(find.text('N: 1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('N: 0'), findsNothing);
    expect(find.text('N: 1'), findsOneWidget);
  });
}
