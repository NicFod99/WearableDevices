//Given a number n > 0, print the first n numbers of the Fibonacci series. Bonus: do it recursively.
/*
List<int> fibonacci (int numero){
  int s = 0;
  List<int> fibList = [];
  for(int i = 1; i < numero; i++){
    s = s + i;
    fibList.add(s);
  }
  return fibList;
}

void main (List<String> args){
  int fibNum = 10;
  List<int> fibList;
  fibList = fibonacci(fibNum);
  print(fibList); 
}*/
List<int> fibonacci (int numero){

  //If n = 0, return a list with just a 0
  if(numero == 0){
    return [0];
  }//if
  //If n = 1, return a list with just a 1
  if(numero == 1){
    return [1];
  }//if
  
  //Get the fibonacci series of n - 1
  var fib1 = fibonacci(numero-1);
  //Get the fibonacci series of n - 2
  var fib2 = fibonacci(numero-2);

  //Add to the first list the sum of its last value and 
  //the last value of the second list 
  fib1.add(fib2[fib2.length-1]+fib1[fib1.length-1]);

  //return the first list
  return fib1;
}
void main (List<String> args){
  int fibNum = 10;
  List<int> fibList;
  fibList = fibonacci(fibNum);
  print(fibList); 
}