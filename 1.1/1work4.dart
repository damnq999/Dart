import 'dart:io';
import 'dart:core';
void main()
{
  var list = []; 
  //считываем с консоли два числа
  var n1 = readInt();
  var n2 = readInt();
  //в цикле добавляем в список значения от первого до второго числа 
  for(int i=n1; i < n2 ;i++){
    list.add(i);
  }
  list.forEach((element) {
    stdout.write(element.toString()+" ");
  });
  
}
int readInt(){
  stdout.writeln('Введите число ');
  var s = stdin.readLineSync()!;
  if(s == " ")
    return -1;
  
  return int.parse(s);
 
  
} 