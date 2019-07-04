/// First

typedef void LoggerOutputFunction(String message);

class Logger{

  LoggerOutputFunction output;

  Logger(){
    output = print;
  }

  void log(String message){
    output(message);
  }
}

void timeStampLoggerOutputFunction(String message){
  String timeStamp = DateTime.now().toString();
  print('${timeStamp}: $message');
}


/// Second

typedef String Join(String first, String second);

String dot(String first, String second){
  return '$first.$second';
}

String snake_case(String first, String second){
  return '${first}_$second';
}

String joinWith(Join join, String first, String second){
  return join(first, second);
}