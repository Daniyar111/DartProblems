
void coreDouble(){

  double a = 0.0;
  double b = 2.334;
  double c = -2.334;
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
  print(b.abs()); // 2.334
  print(c.abs()); // 2.334
  print(d.abs()); // 0.0

  print(a.ceil()); // 0
  print(b.ceil()); // 3
  print(c.ceil()); // -2
  print(d.ceil()); // 0

  print(a.ceilToDouble()); // 0.0
  print(b.ceilToDouble()); // 3.0
  print(c.ceilToDouble()); // -2.0
  print(d.ceilToDouble()); // -0.0

  print(a.floor()); // 0
  print(b.floor()); // 2
  print(c.floor()); // -3
  print(d.floor()); // 0

  print(a.floorToDouble()); // 0.0
  print(b.floorToDouble()); // 2.0
  print(c.floorToDouble()); // -3.0
  print(d.floorToDouble()); // -0.0

  // same mod
  print(b.remainder(1.2)); // 1.1340000000000001

  print(a.round()); // 0
  print(b.round()); // 2
  print(c.round()); // -2
  print(d.round()); // 0

  print(a.roundToDouble()); // 0.0
  print(b.roundToDouble()); // 2.0
  print(c.roundToDouble()); // -2.0
  print(d.roundToDouble()); // -0.0

  print(a.truncate()); // 0
  print(b.truncate()); // 2
  print(c.truncate()); // -2
  print(d.truncate()); // 0

  print(a.truncateToDouble()); // 0.0
  print(b.truncateToDouble()); // 2.0
  print(c.truncateToDouble()); // -2.0
  print(d.truncateToDouble()); // -0.0


//  a = math.max(-1, math.min(1, a));
//  print(a);

  /// ------------ Static Methods -------------

  print(double.parse('1.2'));  // 1.2
  print(double.tryParse('1,2'));  // null


  /// ------------ Constants -------------

  print(double.infinity);  // Infinity -> 1.0 / 0.0
  print(double.maxFinite); // 1.7976931348623157e+308
  print(double.minPositive); // 5e-324
  print(double.nan); // NaN -> 0.0 / 0.0
  print(double.negativeInfinity);  // -Infinity -> -(1.0/0.0)
}