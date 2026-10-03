// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_application_2/MyForm.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('calcula o IMC e mostra o resultado', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: MyForm()));

    await tester.enterText(find.byType(TextField).at(0), '70');
    await tester.enterText(find.byType(TextField).at(1), '1.75');
    await tester.tap(find.text('Calcular'));
    await tester.pumpAndSettle();

    expect(find.text('Resultado do IMC'), findsOneWidget);
    expect(find.textContaining('Seu IMC é 22.86'), findsOneWidget);
    expect(find.text('Peso normal'), findsOneWidget);
  });
}
