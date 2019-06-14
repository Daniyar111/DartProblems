import 'dart:async';


class Cake{

  String type;

  Cake(this.type);

  @override
  String toString() {
    return '$type';
  }
}

class Order{

  Cake cake;

  Order(this.cake);

}

void streamCake(){

  final controller = new StreamController();

  final orderFirst = new Order(new Cake('banana'));
  final orderSecond = new Order(new Cake('chocolate'));
  final orderThird = new Order(new Cake('strawberry'));
  final orderForth = new Order(new Cake('vanille'));

  final transformer = new StreamTransformer.fromHandlers(
    handleData: (cake, sink) async {
      if(cake.type == 'banana'){
        sink.add(new Cake('banana'));
      }
      else if(cake.type == 'chocolate'){
        await Future.delayed(Duration(seconds: 4));
        sink.add(new Cake('chocolate'));
      }
      else{
        sink.addError('I can\'t bake that cake');
      }
    }
  );

  controller.sink.add(orderFirst);
  controller.sink.add(orderSecond);
  controller.sink.add(orderThird);
  controller.sink.add(orderForth);
  
  controller.stream
    .map((order) => order.cake)
    .transform(transformer)
    .listen((cake) => print('Here is ${cake.type}'), onError: (error) => print(error));

}

// async* -> Stream; yield -> Stream

Future<int> sumStream(Stream<int> numbers) async{
  int sum = 0;
  await for (int num in numbers){
    sum += num;
  }
  return sum;
}

Stream<int> countStream(int to) async*{

  for (int i = 1; i <= to; i++){
    yield i;
  }
}

Stream<int> runToMax(int n) async* {
  int i = 0;
  while (i < n) {
    yield i;
    i++;
    await Future.delayed(Duration(seconds: 4));
  }
}

Stream<int> countDownFromAsync(int n) async* {
  if (n > 0) {
    yield n;
    yield* countDownFromAsync(n - 1);
  }
}

Iterable<int> genIterates(int max) sync* {
  var i = 0;
  while (i < max) {
    yield i;
    i++;
  }
}

Iterable<int> countDownFromSync(int n) sync* {
  if (n > 0) {
    yield n;
    yield* countDownFromSync(n - 1);
  }
}


Future<int> sumStreamError(Stream<int> numbers) async {

  int sum = 0;
  try{
    await for(int number in numbers){
      sum += number;
    }
  } catch(error){
    return -1;
  }
  return sum;
}

Stream<int> countStreamError(int to) async* {

  for(int i = 1; i <= to; i++){
    if(i == 4){
      throw new Exception('Internal Exception');
    }
    else{
      yield 1;
    }
  }
}

Future<int> lastPositive(Stream<int> stream) => stream.lastWhere((integer) => integer >= 0);


//------------------------------------------

Stream<String> lines(Stream<String> source) async*{

  String partial = '';

  await for (String chunk in source){
    List<String> lines = chunk.split('\n');
    lines[0] += partial;
    partial = lines.removeLast();
    for(String line in lines){
      yield line;
    }
  }
  if(partial.isNotEmpty){
    yield partial;
  }
}

Stream<String> source() async*{
  for(int i = 0; i < 10; i++){
    yield 'source $i ';
  }
}


Stream<int> counterStream = Stream<int>.periodic(Duration(seconds: 1), (event) => event + 1).take(15);


Stream<int> timedCounter(Duration interval, [int maxCount])async*{
  int i = 0;
  while (true){
    await Future.delayed(interval);
    yield i++;
    if(i == maxCount){
      break;
    }
  }
}


//Iterable<Future<int>> futureNumbers<T>() sync*{
//  for(int i = 0; i < 10; i++){
//    Iterable<Future<int>> iterable = [];
//    yield ;
//  }
//}

Stream<T> streamFromFutures<T>(Iterable<Future<T>> futures) async* {
  for(Future<T> future in futures){
    T result = await future;
    yield result;
  }
}

