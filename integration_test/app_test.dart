import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

const _incrementButtonKey = Key('counterView_increment_floatingActionButton');
const _decrementButtonKey = Key('counterView_decrement_floatingActionButton');

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  _testMain();
}

void _testMain() {
  testWidgets('Counter increments smoke test', (tester) async {
    // Build our app and trigger a frame.
    app.main();

    // Trigger a frame.
    await tester.pumpAndSettle();

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(_incrementButtonKey));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter decrement smoke test', (tester) async {
    // Build our app and trigger a frame.
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byKey(_decrementButtonKey));
    await tester.pump();

    expect(find.text('-1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
