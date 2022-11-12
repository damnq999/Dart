import 'dart:io';
import 'dart:math' as math;

main() {

var path = "D:\\projects\\numsTask1.txt";
  
  List<int> nums = getNumbersFromFile(path, ",");
  
  var result = 0;
  //находим мин число
  var min = nums.reduce(math.min);
  //находим индекс этого числа в списке
  var index = nums.indexOf(min);
  //в цикле начиная с найдненного индекса вычисляем произвд.
  for(int i = index; i < nums.length; i++){
    if(result == 0){
    result = nums[i];
    }
    else {
      result = result * nums[i];
    }
  }
  stdout.writeln(result);
}

List <int> getNumbersFromFile(String path, String delimiter){
  List <int> nums = [];
  var file = new File(path);
  
  List<String> lines = file.readAsLinesSync();
  lines.forEach((line){
    
    List <String> numStrings = line.split(delimiter);
    //numStrings.forEach((element) {stdout.writeln(element);});
    numStrings.forEach((element) { nums.add(int.parse(element));});
    

  });
  
  
  return nums;
}