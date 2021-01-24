import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/counter/counter.dart';
import 'package:flutter_bloc_app/counter/counter_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterApp', () {
    testWidgets('is a MaterialApp', (tester) async {
      expect(CounterApp(), isA<MaterialApp>());
    });

    testWidgets('home is CounterPage', (tester) async {
      expect(CounterPage(), isA<CounterPage>());
    });

    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(CounterApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
