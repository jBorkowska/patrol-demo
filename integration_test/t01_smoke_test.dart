import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_demo/main.dart';

void main() {
  patrolTest(
    'tap increment button works',
    ($) async {
      await $.pumpWidgetAndSettle(MyApp());

      await $(Icons.add).tap();
      expect($('1'), findsOneWidget);
    },
  );
}
