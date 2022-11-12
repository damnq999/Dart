import 'dart:io';

void main(){
List numbers = [5, 78, 98, 45, 23, 55, 99, 12, 9, 1];
int min = 99;
int minindex = 0;

for (int i = 1; i < numbers.length; i++)
{
  if (numbers [i] < min){
  min = numbers [i];
  minindex = i;
}
}
stdout.writeln("Минимальный элемент - $minindex");

}