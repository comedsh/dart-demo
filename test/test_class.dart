/* 学习 https://dart.cn/language/classes */

import 'package:learn_basics/learn_basics.dart';
import 'package:test/test.dart';

class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
}


void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
