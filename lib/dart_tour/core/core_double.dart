void coreDouble(){

  double a = 0.0;
  double b = 2.33;
  double c = -2.33;
  double d = -0.0;

  /// ----------- Properties ------------

  print(a.sign); // 0.0
  print(b.sign); // 1.0
  print(c.sign); // -1.0
  print(d.sign); // -0.0


  //True if the number is finite; otherwise, false.
  //The only non-finite numbers are NaN, positive infinity, and negative infinity.

  print(a.isFinite); // true
  print(d.isInfinite); // false

  print((2.3 / 0.0).isInfinite); // true
  print((0.0 / 0.0).isNaN); // true

  print(c.isNegative); // true

  print(b.runtimeType); // double


  /// ------------ Methods -------------

  print(a.abs()); // 0.0
  print(b.abs()); // 2.33
  print(c.abs()); // 2.33
  print(d.abs()); // 0.0

  print(a.ceil()); // 0
  print(b.ceil()); // 3
  print(c.ceil()); // -2
  print(d.ceil()); // 0

  print(a.ceilToDouble()); // 0.0
  print(b.ceilToDouble()); // 3.0
  print(c.ceilToDouble()); // -2.0
  print(d.ceilToDouble()); // 0.0

  print(a.floor()); // 0
  print(b.floor()); // 2
  print(c.floor()); // -3
  print(d.floor()); // 0

  print(a.floorToDouble()); // 0
  print(b.floorToDouble()); // 2
  print(c.floorToDouble()); // -3
  print(d.floorToDouble()); // 0
}