import 'dart:async';

void twoSum(List<int> nums, int target){

  final controller = new StreamController();
  nums.map((int num) => controller.sink.add(num));

  final transformer = StreamTransformer.fromHandlers(
    handleData: (number, sink){
//      final List<int> indices = []

    }
  );

  controller.stream.
      map((number){
        //
      })
      .transform(transformer)
      .listen((numbers) => print(numbers));
}

void twoSumHardCode(List<int> nums, int target){
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if(nums[j] == target - nums[i]){
        print([i, j]);
      }
    }
  }

}