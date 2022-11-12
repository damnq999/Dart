import 'dart:io';

void main()
{
   var list = []; 
   for(int i = 300; i > 0; i-=3)
   list.add(i);
//в цикле forEach выводим каждый  элемент с разделителем в виде пробела 
list.forEach((element) {
    stdout.write(element.toString()+" ");
  });
}