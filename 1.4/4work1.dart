import 'dart:io';
import 'dart:math';
main() {
  const int num = 21;
    
    int result = 0;
    for(int i = 1; i <= num; i++){
      if (i% 3 == 0){
        if(result == 0){
          result = i;
        }
        else {
          result = result * i;
        }
        stdout.writeln((i).toString());
      }
    }
    stdout.writeln(result.toString());
}
