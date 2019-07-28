import 'dart:isolate';

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

/// FIRST start

class AsyncMethodsFirst{

  void mainAsync() async {

    methodA();
    methodB();
    await methodC('main');
    methodD();
  }


  methodA(){
    print('A');
  }


  methodB() async {
    print('B start');
    await methodC('B');
    print('B end');
  }


  methodC(String from) async {
    await print('C start from $from');

    print('C end from $from');
  }


  methodD(){
    print('D');
  }

// Output of the first:
// A
// B start
// C start from B
// C start from main
// C end from B
// B end
// C end from main
// D

}

/// FIRST end

/// ----------------------------------------------------------------------------

/// SECOND start

class AsyncMethodsSecond{

  void mainAsync() async {

    methodA();
    await methodB();
    await methodC('main');
    methodD();
  }


  methodA(){
    print('A');
  }


  methodB() async {
    print('B start');
    await methodC('B');
    print('B end');
  }


  methodC(String from) async {
    print('C start from $from');

    Future((){                // <== This code will be executed some time in the future
      print('C running Future from $from');
    }).then((_){
      print('C end of Future from $from');
    });

    print('C end from $from');
  }


  methodD(){
    print('D');
  }

// Output of the first:
// A
// B start
// C start from B
// C end from B
// B end
// C start from main
// C end from main
// D
// C running Future from B
// C end of Future from B
// C running Future from main
// C end of Future from main

}

/// SECOND end

/// ----------------------------------------------------------------------------

/// THIRD start

class AsyncMethodsThird{

  void mainAsync() {

    methodA();
    methodB();
    methodC('main');
    methodD();
  }


  methodA(){
    print('A');
  }


  methodB(){
    print('B start');
    methodC('B');
    print('B end');
  }


  methodC(String from) async {
    print('C start from $from');

    await Future((){
      print('C running Future from $from');
    }).then((_){
      print('C end of Future from $from');
    });

    print('C end from $from');
  }


  methodD(){
    print('D');
  }

// Output of the first:
// A
// B start
// C start from B
// B end
// C start from main
// D
// C running Future from B
// C end of Future from B
// C end from B
// C running Future from main
// C end of Future from main
// C end from main

}

/// THIRD end

/// ----------------------------------------------------------------------------


/// FORTH start

class AsyncMethodsForth{

  Future mainAsync() async {

    methodA();
    await methodB();
    await methodC('main');
    methodD();
  }


  methodA(){
    print('A');
  }


  methodB() async {
    print('B start');
    await methodC('B');
    print('B end');
  }


  methodC(String from) async {
    print('C start from $from');

    await Future((){
      print('C running Future from $from');
    }).then((_){
      print('C end of Future from $from');
    });

    print('C end from $from');
  }


  methodD(){
    print('D');
  }

// Output of the first:
// A
// B start
// C start from B
// C running Future from B
// C end of Future from B
// C end from B
// B end
// C start from main
// C running Future from main
// C end of Future from main
// C end from main
// D

}

/// FORTH end

/// ----------------------------------------------------------------------------



class Loop{

  void method1(){

    List<String> myArray = <String>['a','b','c'];

    print('before loop');

    myArray.forEach((String value) async {
      await delayedPrint(value);
    });

    print('end of loop');
  }


  void method2() async {

    List<String> myArray = <String>['a','b','c'];

    print('before loop');

    for(int i=0; i<myArray.length; i++) {
      await delayedPrint(myArray[i]);
    }

    print('end of loop');
  }


  Future<void> delayedPrint(String value) async {

    await Future.delayed(Duration(seconds: 1));
    print('delayedPrint: $value');
  }


  // Output

  // method1:
  // before loop
  // end of loop
  // delayedPrint: a (after 1 sec)
  // delayedPrint: b (directly after)
  // delayedPrint: c (directly after)

  // method2:
  // before loop
  // delayedPrint: a (after 1 sec)
  // delayedPrint: b (directly after)
  // delayedPrint: c (directly after)
  // end of loop (right after)
}


class Isolates{

  mainIsolate() async {

    var receivePort = new ReceivePort();
    await Isolate.spawn(echo, receivePort.sendPort);

    // The 'echo' isolate sends it's SendPort as the first message
    var sendPort = await receivePort.first;

    var msg = await sendReceive(sendPort, "foo");
    print('received $msg');
    msg = await sendReceive(sendPort, "bar");
    print('received $msg');
  }


// the entry point for the isolate
  echo(SendPort sendPort) async {
    // Open the ReceivePort for incoming messages.
    var port = new ReceivePort();

    // Notify any other isolates what port this isolate listens to.
    sendPort.send(port.sendPort);

    await for (var msg in port) {
      var data = msg[0];
      SendPort replyTo = msg[1];
      replyTo.send(data);
      if (data == "bar") port.close();
    }
  }

  /// sends a message on a port, receives the response,
  /// and returns the message
  Future sendReceive(SendPort port, msg) {
    ReceivePort response = new ReceivePort();
    port.send([msg, response.sendPort]);
    return response.first;
  }

  // Output:

  // received foo
  // received bar
}

// Todo research https://www.didierboelens.com/2019/01/futures---isolates---event-loop/

