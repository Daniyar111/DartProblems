import 'dart:async';

void twoSum(List<int> nums, int target){

  final controller = new StreamController();
  nums.forEach((int num) => controller.sink.add(num));

  final transformer = StreamTransformer.fromHandlers(
    handleData: (number, sink){
//      final List<int> indices = []

    }
  );

  controller.stream
//      map((number){
////        controller.stream.map((n){
////          controller.sink.add(n);
////        });
//        return number;
//      })
      .listen((numbers) => print(numbers));
}


// https://leetcode.com/problems/two-sum/
// start
void twoSumHardCode(List<int> nums, int target){
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if(nums[j] == target - nums[i]){
        print([i, j]);
      }
    }
  }
}
// end


// https://leetcode.com/problems/jewels-and-stones/
// start
int jewelsAndStones(String jewels, String stones){

  int count = 0;

  List<String> jewelsChars = jewels.trim().split('');
  for(String jewel in jewelsChars){
    if(jewel != jewel.toUpperCase()){
      count++;
    }
  }

  List<String> stonesChars = stones.trim().split('');
  for(String stone in stonesChars){
    if(stone != stone.toLowerCase()){
      count++;
    }
  }
  return count;
}
//end

// https://leetcode.com/problems/range-sum-of-bst/
// start
int rangeSumBST(){

}

// https://leetcode.com/problems/to-lower-case/
// start
String toLowerCase(String string){
  return string.toLowerCase();
}
// end

// https://codeforces.com/problemset/problem/4/A
// start
bool isEventWatermelon(int weight){

  if (weight > 3 && weight.isEven){
    return true;
  }
  return false;
}
// end


// https://codeforces.com/problemset/problem/1/A
// start
int platesQuantity(int length, int width, int plateLength){

  return (length / plateLength).ceil() + (width / plateLength).ceil() + 1;
}
// end

// https://codeforces.com/problemset/problem/71/A
// start
String toShortWord(String word){
  String short = '';
  if(word.length > 10){
    short += word.substring(0, 1);
    String temp = word.substring(1, word.length - 1);
    short += temp.length.toString();
    short += word.substring(word.length - 1, word.length);
    return short;
  }
  return word;
}
//end

/// DFS
/// BFS
/// Matching Parenthesis problem
/// Using Hash Tables
/// Variables/Pointers manipulation
/// Reverse Linked List (duplicates, removing duplicates)
/// Sorting Fundamentals (QuickSort, MergeSort, BubbleSort, runtime of a sort, time space complexity)
/// Recursion
/// Custom Data Structures (OOP)
/// Binary Search