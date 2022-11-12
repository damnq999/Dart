import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:convert';

main() {
  var path = "D:\\projects\\numsTask4.txt";
  
  List<int> nums = getNumbersFromFile(path, " ");
  int count = 0;
  for(int i = 0; i < nums.length; i++){
   //если i не послед.
    if(i < nums.length - 1){
    //первое число
    var i1 = nums[i];
    //след число
    var i2 = nums[i+1];
    //если они равны, то прибавляем счетчик
    if(i1 == i2){
      count++;
    }
  }
  }
  stdout.writeln(count);
}

//функция читает числа из файла и возвращает список чисел
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
