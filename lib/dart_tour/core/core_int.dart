void coreInt(){

  // −2,147,483,648 - 2,147,483,647

  // BigInt -> -9,223,372,036,854,775,808 - 9,223,372,036,854,775,807

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

  // Convert to range[2-36] (binary - base36)
  print(237.toRadixString(2));  // 11101101
  print(237.toRadixString(10));  // 237
  print(237.toRadixString(16));  // ed
  print(3134243038.toRadixString(16));  // bad0c0de
  print(3134243038.toRadixString(36));  // 1fu1pem

  // To Signed -> x == x.toSigned(x.bitLength + 1)
  print(16.toSigned(5));  // 00010000 -> 11110000 -> -16
  print(239.toSigned(5));  // 11101111 -> 00001111 -> 15

  // https://www.youtube.com/watch?v=4qH4unVtJkE

  // To Unsigned -> x == x.toUnsigned(x.bitLength)
  print((-1).toUnsigned(5));  // 11111111 -> 00011111 -> 31

  print(a.truncate()); // 0
  print(b.truncate()); // 2
  print(c.truncate()); // -5

  print(a.truncateToDouble()); // 0.0
  print(b.truncateToDouble()); // 2.0
  print(c.truncateToDouble()); // -5.0


  /// ------------ Static Methods -------------

  print(int.parse('1011', radix: 2));  // 11
  print(int.parse('ed', radix: 16));  // 237
  print(int.parse('23'));  // 23
  print(int.tryParse('1,2', radix: 3));  // null

}