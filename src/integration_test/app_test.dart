import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:sample/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('tap on the floating action button to the verify counter',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      Finder incrementButton = find.byKey(const Key('increment'));

      await tester.tap(incrementButton);
      await tester.tap(incrementButton);
      await tester.tap(incrementButton);
      await tester.tap(incrementButton);

      await tester.pumpAndSettle();
      var counterTextWidget = tester.widget<Text>(find.byKey(const Key('counter')));
      expect(counterTextWidget.data, equals('4'));
    });
  });
}
