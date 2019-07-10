void coreInt(){

  int port = int.fromEnvironment("defaultPort", defaultValue: 80);
  print(port);

  //https://stackoverflow.com/questions/54023991/difference-between-methods-of-determining-debug-or-release-in-dart

  int a = 0;
  int b = 2;
  int c = -5;

  /// ------------ Properties ----------------

  // x.bitLength == (-x - 1).bitLength

  print(a.bitLength); // 0 -> 00000000 (0)
  print(b.bitLength); // 2 -> 00000010 (2)
  print(c.bitLength); // -5 -> 11111011 (3)

  print(a.isEven); // true
  print(b.isEven); // true
  print(c.isEven); // false

  print(a.isOdd); // false
  print(b.isOdd); // false
  print(c.isOdd); // true

  print(a.sign); // 0
  print(b.sign); // 1
  print(c.sign); // -1


  /// ------------ Methods ----------------

  print(a.abs()); // 0
  print(b.abs()); // 2
  print(c.abs()); // 5

  print(a.ceil()); // 0
  print(b.ceil()); // 2
  print(c.ceil()); // -5

  print(a.ceilToDouble()); // 0.0
  print(b.ceilToDouble()); // 2.0
  print(c.ceilToDouble()); // -5.0

  print(a.floor()); // 0
  print(b.floor()); // 2
  print(c.floor()); // -5

  print(a.floorToDouble()); // 0.0
  print(b.floorToDouble()); // 2.0
  print(c.floorToDouble()); // -5.0

  // Greatest Common Divisor
  print(40.gcd(5)); // 5
  print(-23.gcd(6)); // -1
  print(90.gcd(60)); // 30

  // (result * number) % modulo == 1
  print(3.modInverse(11));  // 4
  print(10.modInverse(17)); // 12
  print(-10.modInverse(17)); // -12

  // result = number^exponent % modulo
  print(23895.modPow(15, 14189)); // 344

  print(a.round()); // 0
  print(b.round()); // 2
  print(c.round()); // -5

  print(a.roundToDouble()); // 0.0
  print(b.roundToDouble()); // 2.0
  print(c.roundToDouble()); // -5.0
  
  print(23.toRadixString(3));

}