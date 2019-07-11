
/// ---------------------------

void onClause(){

  print("CASE 1");

  // CASE 1: When you know the exception to be thrown, use ON Clause

  try {
    int result = 12 ~/ 0;
    print("The result is $result");

  } on IntegerDivisionByZeroException {
    print("Cannot divide by Zero");
  }
}

/// -----------------------------

void clauseWithException(){

  print("CASE 2");

  // CASE 2: When you do not know the exception use CATCH Clause

  try {
    int result = 12 ~/ 0;
    print("The result is $result");

  } catch (e) {
    print("The exception thrown is $e");
  }
}

/// -----------------------------

void clauseWithExceptionAndStacktrace(){

  print("CASE 3");

  // CASE 3: Using STACK TRACE to know the events occurred before Exception was thrown

  try {
    int result = 12 ~/ 0;
    print("The result is $result");

  } catch (e, s) {
    print("The exception thrown is $e");
    print("STACK TRACE \n $s");
  }
}

/// -----------------------------

void finallyClause(){

  print("CASE 4");

  // CASE 4: Whether there is an Exception or not, FINALLY Clause is always Executed

  try {
    int result = 12 ~/ 3;
    print("The result is $result");

  } catch (e) {
    print("The exception thrown is $e");

  } finally {
    print("This is FINALLY Clause and is always executed.");
  }
}

/// -----------------------------

void customException(){

  print("CASE 5");

  // CASE 5: Custom Exception

  try {
    payMoney(-200);

  } catch (e) {
    print(e.errorMessage());
  }
}


class ExampleException implements Exception {

  String errorMessage(){
    return 'You should pay more then 1';
  }
}

void payMoney(int money){
  if(money < 1){
    throw new ExampleException();
  }
}

/// -----------------------------

class FoodSpoiledError extends StateError {

  FoodSpoiledError(String msg)
      : super(msg);
}

class Potato {

  int age;

  Potato(this.age);

  String peel() {

    if (age > 4) {
      throw new FoodSpoiledError('your potato is spoiled');
    }
    return "peeled";
  }
}

void customExceptionSecond(){

  var p = new Potato(7);

  try {
    p.peel();

  } on FoodSpoiledError catch(_) {
    print("nope nope nope");
  }

  // any non-null object can be thrown:
  try {
    throw("potato");

  } catch(_) {
    print("caught a flying potato");
  }

  // exceptions halt excecution
  p.peel();
  print('not reached');
}