import 'dart:async';
import 'dart:io';
import 'dart:core';
import 'dart:convert';

main() {
  //из первого файла берем 
  var path = "D:\\projects\\input.txt";
  //во второй файл сохраняем
  var path1 = "D:\\projects\\output.txt";
  
  var file = new File(path);
  var file1 = new File(path1);
  //открываем поток на запись
  var stm = file1.openWrite();
  //читаем из первого файла 
  List<String> lines = file.readAsLinesSync();
  
  var totalNumbers = lines[0].split(" ");
  var ticketCount = lines[1].split(" ");
  var ticket1 = lines[2].split(" ");
  var ticket2 = lines[3].split(" ");
  var ticket3 = lines[4].split(" ");
  
  //выводим каждую линию
  lines.forEach((element) { 
    stm.writeln(element);
  });
  //определяем разницу в числах, если длина массива меньше 7, то кол выигр номеров меньш трех 
  var difference = totalNumbers.toSet().difference(ticket1.toSet()).toList();
  if(difference.length <= 7)
    stm.writeln("lucky");
  else 
    stm.writeln("unlucky");

  difference = totalNumbers.toSet().difference(ticket2.toSet()).toList();
  if(difference.length <= 7)
    stm.writeln("lucky");
  else 
    stm.writeln("unlucky");

  difference = totalNumbers.toSet().difference(ticket3.toSet()).toList();
   if(difference.length <= 7)
    stm.writeln("lucky");
  else 
    stm.writeln("unlucky");

  
  
}