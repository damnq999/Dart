import 'dart:io';
import 'dart:math';
void main() {
List <int> number = [];

for(int i = 1; i <= 7;i++)
try{
  {
    int a = int.parse(stdin.readLineSync()!);
    if (a > 0){
      number.add(i);
      number.sort();
    }
    if (a == ''){
      i = 6;
    }
  }
}
catch(a) {
  stdout.writeln('Введите число: ');
}

stdout.writeln(number);
stdout.writeln(number.first);
stdout.writeln(number.last);
}

