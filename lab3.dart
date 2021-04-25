/*
Given an array arr[] of size N which contains the marks of a student in N subjects, the task is to calculate the CGPA and the CGPA percentage of the student. 
Note: Consider all marks to be out of 100, for each subject.
This is just for assignment purposes. It’s not the accurate reflection of the conventional CGPA in  Nigeria
*/

import "dart:io";

void main (){
  
   
   double aggregatecgpa;
   double totalGradepoints= 0;
   double percent;
  
//Create a List of grades collected from the user
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
//create a method that prints instruction and collects data of grades from the user
 double prompt(String text, [double answer]){
 print(text);
  answer = double.parse(stdin.readLineSync());
  return answer;
  

}
