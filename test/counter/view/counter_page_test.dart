import 'package:flutter_bloc_app/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpWidget(CounterPage());
      expect(find.byType(CounterPage), isA<CounterPage>());
    });
  });
}
