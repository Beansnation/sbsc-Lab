void main() {

//lab 1 assignment 
  int number = 103;
  var isprime = true;
  

  if (number == 1) {
    print('$number is not considered a prime number');
  } else if (number > 1) {
       for (var i = 2; i < number; i++) {
          if (number % i == 0) {
            isprime = false;
          }
       }
      if (isprime) {
         print('$number is a prime number');
      } else {
         print('$number is not a prime number');
        }
    } else {
       print('$number is not prime');
      }
}