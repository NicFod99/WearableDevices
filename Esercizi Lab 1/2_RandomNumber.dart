/* In the main function, given an integer number n, instantiate a list of n random 
 * integers, with possible maximum value 10. Then, for each element of the list, 
 * print it multiplied by 2. (Big hint: 
 * https://stackoverflow.com/questions/11674820/how-do-i-generate-random-numbers-in-dar
*/
import 'dart:math'; 

void main(List<String> args){
  int n = 10;
  List<int> randomList = [];
  for (var i = 0; i < n; i++){
    Random random = new Random();
    int randomNumber = random.nextInt(10); // From 0 to 10
    randomList.add(randomNumber);
    print("Numero: " + i.toString() + " >> " + pow(randomNumber,2).toString());
  }
}