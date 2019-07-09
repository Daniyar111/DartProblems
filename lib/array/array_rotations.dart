
/// ---------------------------------------------------------------
/// task: Rotate array by n element
/// input: ex -> [1, 2, 3, 4, 5, 6, 7], rotateSize = 2;
/// output: [3, 4, 5, 6, 7, 1, 2]
/// ---------------------------------------------------------------

/// [1, 2, 3, 4, 5, 6, 7] -> [1, 2], [3, 4, 5, 6, 7] -> [3, 4, 5, 6, 7, 1, 2]
List<int> arrayLeftRotateUsingTemp(List<int> array, int rotateSize){

  List<int> temp = array.sublist(0, rotateSize);
  array.removeRange(0, rotateSize);
  array.insertAll(array.length, temp);
  return array;
}


/// [1, 2, 3, 4, 5, 6, 7] -> [2, 3, 4, 5, 6, 7, 1] -> [3, 4, 5, 6, 7, 1, 2]
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


/// [1, 2, 3, 4, 5, 6, 7] -> [3, 2, 3, 4, 5, 6, 7] -> [3, 2, 5, 4, 5, 6, 7] -> [3, 2, 5, 4, 7, 6, 7] ->
/// -> [3, 2, 5, 4, 7, 6, 2] -> [3, 4, 5, 4, 7, 6, 2] -> [3, 4, 5, 6, 7, 6, 2] -> [3, 4, 5, 6, 7, 1, 2]
// Time -> O(array.length)
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
      print(array);
    }
    array[j] = temp;
  }
  return array;
}


/// [1, 2, 3, 4, 5, 6, 7] ->  [2, 1], [7, 6, 5, 4, 3] -> [2, 1, 7, 6, 5, 4, 3] -> [3, 4, 5, 6, 7, 1, 2]
// Time -> O(2n) -> O(n)
List<int> arrayRotateReversedFirst(List<int> array, int rotateSize){

  List<int> firstTemp = [];
  List<int> secondTemp = [];
  for(int i = rotateSize - 1; i >= 0; i--){
    firstTemp.add(array[i]);
  }

  for(int i = array.length - 1; i >= rotateSize; i--){
    secondTemp.add(array[i]);
  }
  array = []..addAll(firstTemp + secondTemp);

  List<int> reversed = [];
  for(int i = array.length - 1; i >= 0; i--){
    reversed.add(array[i]);
  }
  return reversed;
}



/// [1, 2, 3, 4, 5, 6, 7] -> [2, 1], [7, 6, 5, 4, 3] -> [3, 4, 5, 6, 7, 1, 2]
// Time -> O(2n) -> O(n)
List<int> arrayRotateReversedSecond(List<int> array, int rotateSize){

  void reverseArray(List<int> array, int start, int end){
    int temp;
    while(start < end){
      temp = array[start];
      array[start] = array[end];
      array[end] = temp;
      start++;
      end--;
    }
  }

  reverseArray(array, 0, rotateSize - 1);
  reverseArray(array, rotateSize, array.length - 1);
  reverseArray(array, 0, array.length - 1);

  return array;
}

/// [1, 2, 3, 4, 5, 6, 7] -> [2, 1], [7, 6, 5, 4, 3] -> [2, 1, 7, 6, 5, 4, 3] -> [3, 4, 5, 6, 7, 1, 2]
// Time -> O(n)
List<int> arrayRotateReversedThird(List<int> array, int rotateSize){

  List<int> first = array.sublist(0, rotateSize).reversed.toList();
  List<int> second = array.sublist(rotateSize, array.length).reversed.toList();
  array = []..addAll(first + second);
  return array.reversed.toList();
}


/// ---------------------------------------------------------------
/// task: Search n element in a sorted and rotated array
/// input: ex -> [1, 2, 3, 4, 5, 6, 7], key 4;
/// output: Found at index 3
/// ---------------------------------------------------------------

int findElement(List<int> array, int key){
  for(int k in array){
    if (k == key){
      return array.indexOf(k);
    }
  }
  return -1;
}