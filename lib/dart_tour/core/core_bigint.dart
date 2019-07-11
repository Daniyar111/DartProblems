void coreBigInt(){

  // BigInt -> -9,223,372,036,854,775,808 - 9,223,372,036,854,775,807

  BigInt a = BigInt.from(123);
  BigInt b = BigInt.from(1232.321);
  BigInt c = BigInt.from(123432321321321);
  BigInt d = BigInt.tryParse('9223372036854775806');
  BigInt e = BigInt.tryParse('-4324324354333543543');

  print(a);  // 123
  print(b);  // 1232
  print(c);  // 123432321321321
  print(d);  // 9223372036854775806
  print(e);  // -4324324354333543543


  /// ------------ Properties ----------------

  // x.bitLength == (-x - 1).bitLength
  print(a.bitLength); // 7
  print(b.bitLength); // 11
  print(c.bitLength); // 47
  print(d.bitLength); // 63
  print(e.bitLength); // 62

  print(b.isEven); // true
  print(e.isEven); // false

  print(b.isOdd); // false
  print(e.isOdd); // true

  print(b.isOdd); // false
  print(e.isOdd); // true

  print(a.isValidInt); // true
  print(b.isValidInt); // true
  print(c.isValidInt); // true
  print(d.isValidInt); // true
  print(e.isValidInt); // true

  print(0.sign); // 0
  print(b.sign); // 1
  print(e.sign); // -1


  /// ------------ Methods -------------

  print(a.abs()); // 123
  print(b.abs()); // 1232
  print(c.abs()); // 123432321321321
  print(d.abs()); // 9223372036854775806
  print(e.abs()); // 4324324354333543543

  print(a.compareTo(b)); // => -1108 -> a - b
  print(d.compareTo(c)); // => 2147454909 -> a - c
  print(e.compareTo(e)); // => 0 -> e - e

  // Greatest Common Divisor
  print(a.gcd(b)); // 1
  print(e.gcd(c)); // 1

  // (result * number) % modulo == 1
  print(BigInt.from(3).modInverse(BigInt.from(11)));  // 4
  print(BigInt.from(10).modInverse(BigInt.from(17))); // 12
  print(BigInt.from(-10).modInverse(BigInt.from(17))); // 5

  // result = number^exponent % modulo
  print(BigInt.from(23895).modPow(BigInt.from(15), BigInt.from(14189))); // 344
  
  print(BigInt.from(4).pow(3)); // 64
  print(BigInt.from(4).pow(0)); // 1

  // same to mod (%)
  print(BigInt.from(13).remainder(BigInt.from(5))); // 3

  print(a.toInt());  // 123
  print(b.toDouble());  // 1232.0

  // Convert to range[2-36] (binary - base36)
  print(a.toRadixString(2));  // 1111011
  print(b.toRadixString(10));  // 1232
  print(c.toRadixString(16));  // 7042d3aa8969
  print(d.toRadixString(16));  // 7ffffffffffffffe
  print(e.toRadixString(36));  // -wur11ri80rqv

  // To Signed -> x == x.toSigned(x.bitLength + 1)
  print(BigInt.from(16).toSigned(5));  // 00010000 -> 11110000 -> -16
  print(BigInt.from(239).toSigned(5));  // 11101111 -> 00001111 -> 15

  // https://www.youtube.com/watch?v=4qH4unVtJkE

  // To Unsigned -> x == x.toUnsigned(x.bitLength)
  print(BigInt.from(-1).toUnsigned(5));  // 11111111 -> 00011111 -> 31


  /// ------------------ Static Properties -----------------

  print(BigInt.one);
  print(BigInt.two);
  print(BigInt.zero);


  /// ------------ Static Methods -------------

  print(BigInt.parse('1111011', radix: 2));  // 123
  print(BigInt.parse('7ffffffffffffffe', radix: 16));  // 9223372036854775806
  print(BigInt.parse('9223372036854775806'));  // 9223372036854775806
  print(BigInt.tryParse('1,2', radix: 3));  // null

}