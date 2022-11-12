import 'dart:io';
import 'dart:math';
main() {
 int nums = int.parse(stdin.readLineSync()!);
    
      if (nums% 10 == 0 && nums%2 ==0){
      stdout.writeln ('Является');
      } else {stdout.writeln ('Не является'); }
      {
        stdout.writeln((nums).toString());
      }
    }
       
    
  