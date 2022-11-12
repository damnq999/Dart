import 'dart:io';
import 'dart:math' as math;

main() {

var path = "D:\\projects\\numsTask4.txt";
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
    
    numStrings.forEach((element) { nums.add(int.parse(element));});
    

  });
  
  
  return nums;
}
double getAverage(List <int> list){
  int sum = 0;
  int maxVal = list.reduce(math.max);
  list.forEach((element) 
  {
    if (element == maxVal -1)
    sum += element;
  }
  );
  return (sum / list.length);
}