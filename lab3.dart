import "dart:core";

void main (){
  
   //declaring variables
   double aggregatecgpa;
   double totalGradepoints= 0;
   double percent;

  var marks = List.filled(5, 0, growable: false);
//the marks input
marks[0]= 60;
marks[1]= 70;
marks[2]= 80;
marks[3]= 90;
marks[4]= 80;
 
 //find the aggregate by finding the average of the all the marks in the array
 for (int grade in marks){ 
   totalGradepoints += grade/10;
  }
  
  aggregatecgpa = totalGradepoints / 5;
  percent = aggregatecgpa * 9.5 ;
  
  print("The aggregate cgpa is $aggregatecgpa and the percentage cgpa is $percent percent");

}