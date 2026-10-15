import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:machsight/app/app.dart';

void main() {
  testWidgets('application starts on the Dashboard screen', (tester) async {
    await tester.pumpWidget(const MachSightApp());

    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Dashboard'), findsNWidgets(3));
    expect(find.byKey(const Key('app-bar-title')), findsOneWidget);
    expect(find.textContaining('monitoring overview'), findsOneWidget);
  });

  testWidgets(
    'primary navigation contains exactly four destinations in order',
    (tester) async {
      await tester.pumpWidget(const MachSightApp());

      final navigationBar = tester.widget<NavigationBar>(
        find.byType(NavigationBar),
      );
      final destinations = navigationBar.destinations
          .whereType<NavigationDestination>()
          .map((destination) => destination.label)
          .toList();

      expect(destinations, ['Dashboard', 'Machines', 'Alerts', 'Tasks']);
      expect(destinations, hasLength(4));
    },
  );

  testWidgets('switching tabs displays each screen title', (tester) async {
    await tester.pumpWidget(const MachSightApp());

    for (final destination in [
      ('Machines', 'Machine records'),
      ('Alerts', 'Fault alerts'),
      ('Tasks', 'Maintenance tasks'),
      ('Dashboard', 'monitoring overview'),
    ]) {
      await tester.tap(find.text(destination.$1).last);
      await tester.pumpAndSettle();

      final appBarTitle = tester.widget<Text>(
        find.byKey(const Key('app-bar-title')),
      );
      expect(appBarTitle.data, destination.$1);
      expect(find.textContaining(destination.$2), findsOneWidget);
    }
  });
}
