import 'dart:io';
import 'dart:math' as math;

main() {

var path = "D:\\projects\\numsTask2.txt";
  List<int> nums = getNumbersFromFile(path, ";");
  //сортируем список по возврст.
  nums.sort();
  //сохраняем результат в файл
  var file = new File(path);
  file.writeAsString(nums.join(";"));
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
  