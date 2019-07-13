class Person{

  final int id;

  Person(this.id);

  @override
  noSuchMethod(Invocation invocation) {
    return 'Got the ${invocation.memberName} with arguments ${invocation.positionalArguments}';
  }

  @override
  bool operator ==(other) {
    return other is Person && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }

  @override
  String toString() {
    return 'Person has $id id';
  }

}

void coreObject(){

  dynamic person = Person(356);
  dynamic person1 = Person(356);

  print(person.missing('Daniyar', 24));
  print(person.runtimeType);
  print(person.toString());

  print(person == person1); // true
  print(identical(person, person1)); // false, cause they are not references to the same object
  print(identical(person, person)); // true
  print(identityHashCode(person)); // random ints
  print(person.hashCode); // 356 -> get hashCode
}