import 'dart:io';

void main()
{
   var list = []; 
   for(int i = 1; i < 100; i += 2)
   list.add(i);
list.forEach((element) {
    stdout.write(element.toString()+" ");
  });
}