/// ------------ FIRST------------

void runFirst(){

  TodoFirst todoFirst1 = TodoFirst('todo', 10);
  TodoFirst todoFirst2 = TodoFirst('todo', 10);

  print(todoFirst1.hashCode); // random int
  print(todoFirst2.hashCode); // random int
  
  print(todoFirst1 == todoFirst2); // false
  print(identical(todoFirst1, todoFirst2)); // false


}

class TodoFirst{

  String todo;
  int priority;

  TodoFirst(this.todo, this.priority);
}



/// ------------ SECOND------------


void runSecond(){

  TodoSecond todoSecond1 = TodoSecond('todo', 10);
  TodoSecond todoSecond2= TodoSecond('todo', 10);

  print(todoSecond1.hashCode); // random int
  print(todoSecond2.hashCode); // random int

  print(todoSecond1 == todoSecond2); // true
  print(identical(todoSecond1, todoSecond2)); // false


}

class TodoSecond{

  String todo;
  int priority;

  TodoSecond(this.todo, this.priority);

  @override
  bool operator ==(other) {
    return other is TodoSecond && other.todo == todo && other.priority == other.priority;
  }
}


/// ------------ THIRD------------


void runThird(){

  TodoThird todoThird1 = TodoThird('todo', 10);
  TodoThird todoThird2= TodoThird('todo', 10);

  print(todoThird1.hashCode); // 519741733
  print(todoThird2.hashCode); // 519741733

  print(todoThird1 == todoThird2); // true
  print(identical(todoThird1, todoThird2)); // false, cause they are not references to the same object


}

class TodoThird{

  String todo;
  int priority;

  TodoThird(this.todo, this.priority);

  @override
  bool operator ==(other) {
    return other is TodoThird && other.todo == todo && other.priority == other.priority;
  }

  @override
  int get hashCode {
    return todo.hashCode ^ priority.hashCode;
  }
}