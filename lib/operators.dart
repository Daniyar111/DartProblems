void bitwiseOperators(){

  // bitwise operators only for integers

  int a = 5; // 00000101
  int b = 9; // 00001001

  // & (bitwise AND) The result of AND is 1 only if both bits are 1.
  print('a & b = ${a & b}'); // 1 (00000001)

  // | (bitwise OR) The result of OR is 1 any of the two bits is 1.
  print('a | b = ${a | b}'); // 13 (00001101)

  // ^ (bitwise XOR) The result of XOR is 1 if the two bits are different.
  print('a ^ b = ${a ^ b}'); // 12 (00001100)

  // ~ (bitwise NOT) Takes one number and inverts all bits of it.
  // But in 2's Complement answer is ~n = -(n+1)
  print('~a = ${~a}'); // -6 -> -(5 + 1)

  // << (left shift) Takes two numbers, left shifts the bits of the first operand, the second operand decides the number of places to shift.
  print('b << 1 = ${b << 1}'); // 18 -> (00001001 -> 00010010)

  // >> (right shift) Takes two numbers, right shifts the bits of the first operand, the second operand decides the number of places to shift.
  print('b >> 1 = ${b >> 1}'); // 4 -> (00001001 -> 00000101)
}

void arithmeticOperators(){

  print(2.0 + 3);  // 5.0
  print(2 - 3);    // -1
  print(2 * 3);    // 6
  print(5 / 2);    // 2.5
  print(5 ~/ 2);   // 2
  print(5 % 2);    // 1
  print(2 % 5);    // 2
}

void typeTestOperators(){

  dynamic a = [1, 2];
  print('${(a as List).length}');

  print('${a is List}'); // true

  a = '';

  print('${a is List}'); // false
  print('${a is! List}'); // true
  print('${a is String}'); // true
}

void cascadeNotation(){

  /// First

  String s = (StringBuffer()
                ..write('Daniyar, ')
                ..write('I ')
                ..write('know ')
                ..write('your ')
                ..write('name.')
              ).toString();
  print(s); // Daniyar, I know your name.

  /// Second (class Point)

  num x = 10;

  Point point = Point();

  point..log('start')
      ..x = x
      ..scale(10)
      ..log('scaled');

  // they are same

  Point point1 = Point();

  point1.log('start');
  point1.x = x;
  point1.scale(10);
  point1.log('scaled');


  /// Third (class Node)

  Node right = Node('e');
  Node root = Node('root')
                ..left = (Node('a')
                            ..left = (Node('b')
                                        ..left = Node('c')
                                      )
                            ..right = Node('d')
                          )
                ..right = right;

  print(root.toString());

}

class Point{

  num x;
  num y;

  Point()
    : x = 0,
      y = 0;

  void scale(num factor){
    x *= factor;
    y *= factor;
  }

  void log(String message){
    print('logged ($x, $y) : $message');
  }
}

class Node{

  String key;
  Node left;
  Node right;

  Node(this.key);

  @override
  String toString() {
    return 'Key $key left ${left.toString()} right ${right.toString()}';
  }
}