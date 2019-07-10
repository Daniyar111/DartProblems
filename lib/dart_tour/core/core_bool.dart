void coreBool(){

  print(bool.fromEnvironment("dart.library.core"));  // true
  print(bool.fromEnvironment("dart.library.mirrors"));  // true
  print(bool.fromEnvironment("dart.library.js"));  // false

  // https://stackoverflow.com/questions/56968613/bool-fromenvironment-always-return-false
  // https://stackoverflow.com/questions/54023991/difference-between-methods-of-determining-debug-or-release-in-dart
}