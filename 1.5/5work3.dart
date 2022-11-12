import 'dart:io';
import 'dart:math' as math;

main() {

var path = "D:\\projects\\numsTask3.txt";
  List<int> nums = getNumbersFromFile(path, " ");
  double avg = getAverage(nums);
  stdout.write(avg);
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
} //функция для сред.арифм.
  double getAverage(List <int> list){
  int sum = 0;
  list.forEach((element) {sum += element;});
  return (sum / list.length);
}
  