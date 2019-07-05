
/// task: Left rotate by n element
/// input: ex -> [1, 2, 3, 4, 5, 6, 7], rotateSize = 2;
/// output: [3, 4, 5, 6, 7, 1, 2]


List<int> arrayLeftRotateUsingTemp(List<int> array, int rotateSize){

  List<int> temp = array.sublist(0, rotateSize);
  array.removeRange(0, rotateSize);
  array.insertAll(array.length, temp);
  return array;
}


// Time -> O(array.length * rotateSize)
List<int> arrayLeftRotateOneByOne(List<int> array, int rotateSize){

  for(int i = 0; i < rotateSize; i++){
    int temp = array[0];
    int j;
    for(j = 0; j < array.length - 1; j++){
      array[j] = array[j + 1];
    }
    array[j] = temp;
  }
  return array;
}


List<int> arrayLeftRotateJuggling(List<int> array, int rotateSize){

  int gcd(int rotSize, int arrayLength) {
    if (arrayLength == 0){
      return rotSize;
    }
    else{
      return gcd(arrayLength, rotSize % arrayLength);
    }
  }
  final int arrLength = array.length;
  int i, j, k, temp;
  int g_c_d = gcd(rotateSize, arrLength);
  for (i = 0; i < g_c_d; i++) {

    temp = array[i];
    j = i;
    while (true) {
      k = j + rotateSize;
      if (k >= arrLength){
        k -= arrLength;
      }
      if (k == i){
        break;
      }
      array[j] = array[k];
      j = k;
    }
    array[j] = temp;
  }
  return array;
}