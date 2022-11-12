import 'dart:io';
import 'dart:core';
import 'dart:math';
void main()
{
int days = 30;

var map = <String, List<int>>{"Январь": [],
"Февраль": [], 
"Март": [], 
"Апрель": [], 
"Май": [], 
"Июнь": [], 
"Июль": [], 
"Август": [], 
"Сентябрь": [], 
"Октябрь": [], 
"Ноябрь": [], 
"Декабрь": [], 
};

map.forEach((key, val){
 for (int day = 0; day < days; day ++){
    var rnd = Random().nextInt(40);
    //stdout.writeln(rnd);
    val.add(rnd);
  }

});


var result = getTemps(map,  days);
result.forEach((key, val) 
{
  stdout.write(key); 
  stdout.write(":"); 
  stdout.writeln(val); 
  });

}

Map<String, int> getTemps(Map<String, List<int>> map,  days)
{
  
 var result =<String, int>{"Январь": 0,
"Февраль": 0, 
"Март": 0, 
"Апрель": 0, 
"Май": 0, 
"Июнь": 0, 
"Июль": 0, 
"Август": 0, 
"Сентябрь": 0, 
"Октябрь": 0, 
"Ноябрь": 0, 
"Декабрь": 0, 
};

 map.forEach((key, val){
  int sum = 0;
  val.forEach((element){
    
    sum+=element;
  });
  int avg = (sum/ val.length).round();
  result[key] = avg;
});

  return result; 
}