
List<int> arrayLeftRotateUsingTemp(List<int> array, int rotateSize){

  List<int> temp = array.sublist(0, rotateSize);
  array.removeRange(0, rotateSize);
  array.insertAll(array.length, temp);
  return array;
}

List<int> arrayLeftRotateOneByOne(List<int> array, int rotateSize){

}