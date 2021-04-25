import "dart:io";

void main (){
  
   
   double aggregatecgpa;
   double totalGradepoints= 0;
   double percent;

  var marks = List (5);

marks[0]= prompt("input first subject grade");
marks[1]= prompt("input second subject grade");;
marks[2]= prompt("input third subject grade");;
marks[3]= prompt("input fourth subject grade");;
marks[4]= prompt("input fifth subject grade");;
 
 print("marks = $marks");
 for (double grade in marks){ 
   totalGradepoints += grade/10;
  }
  
  aggregatecgpa = totalGradepoints / 5;
  percent = aggregatecgpa * 9.5 ;
  
  print("The aggregate cgpa is $aggregatecgpa and the percentage cgpa is $percent percent");

}

 double prompt(String text, [double answer]){
 print(text);
  answer = double.parse(stdin.readLineSync());
  return answer;
  

}
