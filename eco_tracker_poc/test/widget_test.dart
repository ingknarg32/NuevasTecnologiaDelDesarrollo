import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:eco_tracker_poc/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: EcoLog()));

    expect(find.text('DevOps PoC: Android & Windows'), findsOneWidget);
    expect(find.text('Nombre del Punto'), findsOneWidget);
    expect(find.text('Registrar'), findsOneWidget);
  });
}
