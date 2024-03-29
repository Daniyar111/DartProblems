import 'package:DartProblems/abstract_classes.dart';
import 'package:DartProblems/exceptions.dart';
import 'package:DartProblems/futures_isolates_eventloop.dart';
import 'package:DartProblems/hardcode_streamcode.dart';
import 'package:DartProblems/hash_code.dart';
import 'package:DartProblems/model.dart';
import 'package:DartProblems/operators.dart';
import 'package:DartProblems/stream_education.dart';
import 'package:DartProblems/typedefs.dart';

main(List<String> arguments) async {

//  streamCake();

//  runToMax(10).listen((data) => print('data $data'), onError: (error) => print('error $error'));

//  countDownFromAsync(5).listen((data) => print('data $data'), onError: (error) => print('error $error'));

//  Stream<int> stream = countStream(10);
//  int sum = await sumStream(stream);
//  print('sum $sum');

//  print(genIterates(10));

//  print(countDownFromSync(10));

//  lines(source()).listen((event)=> print(event));

//  await counterStream.forEach((numbers) => print(numbers));

//  counterStream.listen((numbers) => print(numbers));

//  Stream<int> doubleCounterStream = counterStream.map((int time) => time * 2);
//  await doubleCounterStream.forEach((int time) => print(time));

//  Stream<int> otherCounterStream = counterStream
//      .where((int x) => x.isEven)
//      .expand((int x) => [x, x])
//      .take(5);
//  await otherCounterStream.forEach((int x) => print(x));

//  timedCounter(Duration(milliseconds: 800), 10).listen((event) => print(event));

//  var iterable = new Iterable.generate(5, (i) => Future(() => 'string'));
//  var iter = new Iterable.generate(10, (i) => 'str');
//  print(iter);
//  streamFromFutures(iterable).listen((event) => print(event), onError: (error) => print('error $error'));

//  listenAfterDelay();

//  listenWithPause();

//  twoSumHardCode([2, 11, 7, 15], 9);
//  twoSum([2, 11, 7, 15], 9);

//  // Polymorphism
//  Vehicle car = new Car(180, 4);
//  // Casting
//  int doors = (car as Car).doors;
//  // Calling abstract method
//  car.accelerate();
//  //-------
//  PowerGrid grid = new PowerGrid();
//  NuclearPlant nuclear = new NuclearPlant();
//  SolarPlant solar = new SolarPlant();
//  grid.addPlant(nuclear);
//  grid.addPlant(solar);

//  print('${jewelsAndStones('z', 'ZZZ')}');

//  print(toShortWord('internationalization'));

//  int a = 20;
//  assert((int b){
//    print(b);
//    return true;
//  }(a ~/ 2));


//  Logger logger = new Logger();
//  logger.log('Hello world');
//  logger.output = timeStampLoggerOutputFunction;
//  logger.log('hello');
//
//  Join dotJoin = (String first, String second) => dot(first, second);
//  Join snakecaseJoin = (String first, String second) => snake_case(first, second);
//  print('${joinWith(dotJoin, 'Hello', 'World')}');
//  print('${joinWith(snakecaseJoin, 'Hello', 'World')}');


//  final PersonModel model = PersonModel.fromJson(
//      {
//        "next":null,
//        "previous":null,
//        "count":2,
//        "result":[
//          {
//            "id":1,
//            "cusname":"jhon",
//            "cusadress":"somewhere "
//          },
//          {
//            "id":2,
//            "cusname":"jhon2",
//            "cusadress":"somewhere2 "
//          },
//
//        ]
//      }
//  );
//  print(model.result[0].cusaddress);
//  print(model.result[1].id.toString());

//  cascadeNotation();
//  onClause();
//  clauseWithException();
//  clauseWithExceptionAndStacktrace();
//  finallyClause();
//  customException();
//  customExceptionSecond();
  AsyncMethodsThird third = AsyncMethodsThird();
  third.mainAsync();
}
