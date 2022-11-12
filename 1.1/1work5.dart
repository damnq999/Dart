import 'dart:io';

void main()
{
  stdout.writeln('Введите строку ');
  var str = stdin.readLineSync()!;
  //методом split определяем количество слов
  int count = str.split(" ").length;
  stdout.writeln('Количество слов: $count');
  var str1 = "Start ";
  str1+=str;
  str1+=" End";
  stdout.writeln(str1);
}