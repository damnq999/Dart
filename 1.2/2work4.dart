import 'dart:io';
import 'dart:core';
import 'dart:math';
void main()
{
int days = 30;
int months = 12;
//создаем двумерный массив размером days * months
var list =  List.generate(months,
    (i) => List.generate(days + 1, (j) => i + j * days + 1, growable: false),
    growable: false);

//в цикле присваиваем каждлму элементу значение случайное от 0 до 40 
for (int month = 0; month < months; month++){
  for (int day = 0; day < days; day ++){
    list [month][day] = Random().nextInt(40);
  }
}
var result = getTemps(list, months, days);
result.forEach((element) 
{
  stdout.writeln(element); 
  });

}
//функция возвращает массив средних температур для каждого месяца 
List getTemps(List <List<int>> list, months, days)
{
  
 var result = []; 
for (int month = 0; month < months; month++){
  int sum = 0;
  
  for (int day = 0; day < days; day ++){
 
   int dval = list [month][day] ;
   sum+=dval;
  }
  // round округление
  int avg = (sum/ list[month].length).round();
   
    
  result.add(avg);
}
  return result; 
}