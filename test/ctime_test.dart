import 'package:flutter_test/flutter_test.dart';

import 'package:ctime/ctime.dart';

void main() {
  test('adds one to input values', () {
    final time = MSTime(timestamp: 1601042887000);
    print(time.getFormattedDate());
  });
}
