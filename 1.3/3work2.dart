import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:convert';

main() {
  var path = "D:\\projects\\nums.txt";
  
  var file = new File(path);
  
  List<String> lines = file.readAsLinesSync();
  String line = lines.elementAt(0);
  List <String> numStrings = line.split(" ");
  List<int> nums =[];
  //переводим из строки числа и добавляем в список 
  numStrings.forEach((element) { nums.add(int.parse(element));});
     //очищаем файл
      file.writeAsStringSync('');
      //открываем поток на запись
      var stm = file.openWrite();
  //в цикле выводим данные в файл
  nums.forEach((element) {
    file.writeAsStringSync('');
    if((element%2)==0)
    {
    stdout.writeln('$element: Четное');
    }
    else {
      stm.write('$element ');
      stdout.writeln('$element: Нечетное');}
    });
}