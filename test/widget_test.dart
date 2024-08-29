import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_finders/patrol_finders.dart';
import 'package:patrol_moon/main.dart';

const textButtonTitle = 'This is TextButton';
const moonButtonTitle = 'This is MoonButton';

void main() {
  patrolWidgetTest(
    'textbutton flutter test',
    ($) async {
      await $.pumpWidgetAndSettle(const MainApp());

      final button = find.text(textButtonTitle);
      $.tester.tap(button);
    },
  );

  patrolWidgetTest(
    'moonbutton flutter test',
    ($) async {
      await $.pumpWidgetAndSettle(const MainApp());

      final button = find.text(moonButtonTitle);
      $.tester.tap(button);
    },
  );

  patrolWidgetTest(
    'textbutton patrol',
    ($) async {
      await $.pumpWidgetAndSettle(const MainApp());

      final button = $(textButtonTitle);
      button.tap();
    },
  );
  patrolWidgetTest(
    'moonbutton patrol',
    ($) async {
      await $.pumpWidgetAndSettle(const MainApp());

      final button = $(moonButtonTitle);
      button.tap();
    },
  );
}
