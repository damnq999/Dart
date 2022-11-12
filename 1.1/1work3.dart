import 'dart:io';
import 'dart:math';
void main()
{
  List <int> list = []; 
  var n = readInt();
  //пока в цикле не вернется -1 (ввод с консоли пустой строки)
  while (n != -1 ){
    list.add(n);
    n = readInt();

  }
  //выводим в консоль макс и мин. и минимальное значение из списка
  stdout.writeln(list.reduce(max));
  stdout.writeln(list.reduce(min));
}
int readInt(){
  stdout.writeln('Введите число ');
  var s = stdin.readLineSync()!;
  if(s == "")
    return -1;
  
  return int.parse(s);
 
  
} 