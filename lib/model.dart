class PersonModel {
  final int next;
  final int previous;
  final int count;
  final List<ResultModel> result;

  PersonModel.fromJson(Map<String, dynamic> parsedJson)
      : next = parsedJson['next'],
        previous = parsedJson['previous'],
        count = parsedJson['count'],
        result = (parsedJson['result'] as List).map((json) => ResultModel.fromJson(json)).toList();
}

class ResultModel {
  final int id;
  final String cusname;
  final String cusaddress;

  ResultModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        cusname = parsedJson['cusname'],
        cusaddress = parsedJson['cusadress'];
}