import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:precificacaodeprojetos/app/modules/home/components/alertDialog/alertDialog_widget.dart';

main() {
  testWidgets('AlertDialogWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AlertDialogWidget()));
    final textFinder = find.text('AlertDialog');
    expect(textFinder, findsOneWidget);
  });
}
