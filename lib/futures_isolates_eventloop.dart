
/// ----------------- Futures ----------------------

void mainFuture(){
  
  print('Before the Future');

  Future((){
    print('Running the Future');
  }).then((_){
    print('Future is complete');
  });
  
  print('After the Future');

  // Output:
  // Before the Future
  // After the Future
  // Running the Future
  // Future is complete
}


/// ----------------- Async Methods ------------------------

void mainAsync() async {

  methodA();
  methodB();
  methodC('main');
  methodD();
}


methodA(){
  print('A');
}


methodB() async {
  await print('B start');
  await methodC('B');
  print('B end');
}


methodC(String from) async {
  print('C start from $from');

  Future((){
    print('C running Future from $from');
  }).then((_){
    print('C end of Future from $from');
  });
  
  print('C end from $from');
}


methodD(){
  print('D');
}
