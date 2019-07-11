void coreNum(){

  /// Implementers for [int], [double]

  num a = 0.0;
  num b = 2.334;
  num c = -2.334;
  num d = -0.0;
  num e = 0;
  num f = 2;
  num g = -5;

  /// ----------- Properties ------------

  print(a.hashCode);  // 0
  print(b.hashCode);  // 752102211339633
  print(c.hashCode);  // 752104358823281
  print(d.hashCode);  // 0
  print(e.hashCode);  // 0
  print(f.hashCode);  // 2
  print(g.hashCode);  // -5


  //True if the number is finite; otherwise, false.
  //The only non-finite numbers are NaN, positive infinity, and negative infinity.

  print(a.isFinite); // true
  print(d.isInfinite); // false

  print((2.3 / 0.0).isInfinite); // true
  print((0.0 / 0.0).isNaN); // true

  print(c.isNegative); // true

  print(a.sign); // 0.0
  print(b.sign); // 1.0
  print(c.sign); // -1.0
  print(d.sign); // -0.0
  print(e.sign); // -0
  print(f.sign); // 1
  print(g.sign); // -1

  print(a.runtimeType);  // double
  print(f.runtimeType);  // int


  /// ------------ Methods -------------

  print(a.abs()); // 0.0
  print(b.abs()); // 2.334
  print(c.abs()); // 2.334
  print(d.abs()); // 0.0
  print(e.abs()); // 0
  print(f.abs()); // 2
  print(g.abs()); // 5

  print(a.ceil()); // 0
  print(b.ceil()); // 3
  print(c.ceil()); // -2
  print(d.ceil()); // 0
  print(e.ceil()); // 0
  print(f.ceil()); // 2
  print(g.ceil()); // -5

  print(a.ceilToDouble()); // 0.0
  print(b.ceilToDouble()); // 3.0
  print(c.ceilToDouble()); // -2.0
  print(d.ceilToDouble()); // -0.0
  print(e.ceilToDouble()); // 0.0
  print(f.ceilToDouble()); // 2.0
  print(g.ceilToDouble()); // -5.0


  //  number.clamp(lower, upper) == math.max(lower, math.min(upper, number));
  print(a.clamp(0, 10));  // 0.0
  print(b.clamp(-5, 10));  // 2.334
  print(c.clamp(4, 15));  // 4
  print(d.clamp(-50, 10));  // -0.0
  print(e.clamp(6, 7));  // 6
  print(f.clamp(10, 20));  // 10
  print(g.clamp(-6, 10));  // -5


  print(1.compareTo(2)); // => -1 -> 1 < 2
  print(2.compareTo(1)); // => 1 -> 2 > 1
  print(1.compareTo(1)); // => 0 -> 1 == 1

  print((-0.0).compareTo(0.0));  // => -1
  print(double.nan.compareTo(double.nan));  // => 0
  print(double.infinity.compareTo(double.nan)); // => -1

  print(-0.0 == 0.0); // => true
  print(double.nan == double.nan);  // => false
  print(double.infinity < double.nan);  // => false
  print(double.nan < double.infinity);  // => false
  print(double.nan == double.infinity);  // => false


  print(a.floor()); // 0
  print(b.floor()); // 2
  print(c.floor()); // -3
  print(d.floor()); // 0
  print(e.floor()); // 0
  print(f.floor()); // 2
  print(g.floor()); // -5

  print(a.floorToDouble()); // 0.0
  print(b.floorToDouble()); // 2.0
  print(c.floorToDouble()); // -3.0
  print(d.floorToDouble()); // -0.0
  print(e.floorToDouble()); // 0.0
  print(f.floorToDouble()); // 2.0
  print(g.floorToDouble()); // -5.0

  // same to mod (%)
  print(b.remainder(1.2)); // 1.1340000000000001
  print(f.remainder(2)); // 0

  print(a.round()); // 0
  print(b.round()); // 2
  print(c.round()); // -2
  print(d.round()); // 0
  print(e.round()); // 0
  print(f.round()); // 2
  print(g.round()); // -5

  print(a.roundToDouble()); // 0.0
  print(b.roundToDouble()); // 2.0
  print(c.roundToDouble()); // -2.0
  print(d.roundToDouble()); // -0.0
  print(e.roundToDouble()); // 0.0
  print(f.roundToDouble()); // 2.0
  print(g.roundToDouble()); // -5.0

  print(a.toInt()); // 0
  print(b.toInt()); // 2
  print(c.toInt()); // -2
  print(d.toInt()); // 0

  print(e.toDouble()); // 0.0
  print(f.toDouble()); // 2.0
  print(g.toDouble()); // -5.0

  print(a.toString()); // '0.0'
  print(b.toString()); // '2.334'
  print(e.toString()); // '0'
  print(f.toString()); // '2'

  // 0 <= fraction <= 20
  print(1.toStringAsExponential());  // 1e+0
  print(1.toStringAsExponential(3));  // 1.000e+0
  print(123456.toStringAsExponential());  // 1.23456e+5
  print(123456.toStringAsExponential(3));  // 1.235e+5
  print(123.toStringAsExponential(0));  // 1e+2

  // 0 <= fraction <= 20
  print(1.toStringAsFixed(3));  // 1.000
  print((4321.12345678).toStringAsFixed(3));  // 4321.123
  print((4321.12345678).toStringAsFixed(5));  // 4321.12346
  print(12345678901234567.toStringAsFixed(3));  // 12345678901234568.000
  print(100000000000000000.toStringAsFixed(3)); // 100000000000000000.000
  print(5.25.toStringAsFixed(0)); // 5

  print(a.toStringAsPrecision(3)); // 0.00
  print(b.toStringAsPrecision(3)); // 2.33
  print(c.toStringAsPrecision(4)); // -2.334
  print(d.toStringAsPrecision(5)); // -0.0000
  print(e.toStringAsPrecision(6)); // 0.00000
  print(f.toStringAsPrecision(7)); // 2.000000
  print(g.toStringAsPrecision(8)); // -5.0000000
  print(1.toStringAsPrecision(2));       // 1.0
  print(1e15.toStringAsPrecision(3));    // 1.00e+15
  print(1234567.toStringAsPrecision(3)); // 1.23e+6
  print(1234567.toStringAsPrecision(9)); // 1234567.00
  print(12345678901234.toStringAsPrecision(20)); // 12345678901234.000000
  print(12345678901234.toStringAsPrecision(14)); // 12345678901234
  print(0.00000012345.toStringAsPrecision(15)); // 1.23450000000000e-7
  print(0.0000012345.toStringAsPrecision(15));  // 0.00000123450000000000

  print(a.truncate()); // 0
  print(b.truncate()); // 2
  print(c.truncate()); // -2
  print(d.truncate()); // 0
  print(e.truncate()); // 0
  print(f.truncate()); // 2
  print(g.truncate()); // -5

  print(a.truncateToDouble()); // 0.0
  print(b.truncateToDouble()); // 2.0
  print(c.truncateToDouble()); // -2.0
  print(d.truncateToDouble()); // -0.0
  print(e.truncateToDouble()); // 0.0
  print(f.truncateToDouble()); // 2.0
  print(g.truncateToDouble()); // -5.0


  /// ------------ Static Methods -------------

  print(num.parse('1.2'));  // 1.2
  print(num.tryParse('1,2'));  // null
  print(num.tryParse('134'));  // 134
}