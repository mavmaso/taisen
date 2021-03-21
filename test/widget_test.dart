import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:taisen/app/modules/home/home_bindings.dart';
import 'package:taisen/app/modules/home/home_page.dart';

Widget testable(Widget widget) =>
    GetMaterialApp(home: widget, initialBinding: HomePageBinding());

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(testable(HomePage()));

    expect(find.text('大戦 Alpha 0.1'), findsOneWidget);
  });
}
