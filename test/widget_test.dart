import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Login page renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('School App'), findsOneWidget);
    expect(find.text('DEMO - Any login works'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Home page shows menu after login', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    expect(find.byType(GridView), findsOneWidget);
    expect(find.text('Atividades'), findsOneWidget);
  });
}
