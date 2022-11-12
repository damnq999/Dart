import 'dart:io';
void main()
{
  List<int>list = []; 
  var n = readInt(); 
//пока с консоли не введется ноль, добавляем в цикле значение в список 
  while (n != 0 ){ 
    list.add(n);
    n = readInt();

  }
  var sum = 0;
  //складываем в цикле каждый элемент
  list.forEach((element) => sum+=element); 
  //выводим сумму
stdout.writeln(sum);
//записываем в переменную первый элемент
int abd = list[0];
//в цикле вычисляем произведение
for(int i=1;i<list.length;i++)
{
  abd = abd* list[i];
}
//выводим произведение
stdout.writeln(abd);
}
//функция считывания числа с консоли
int readInt(){
  stdout.writeln('Введите число ');
  return int.parse(stdin.readLineSync()!);
}