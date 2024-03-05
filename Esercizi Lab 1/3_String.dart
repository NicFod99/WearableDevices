/* Write a function that given a string, provided by the main function, 
 * returns the same text with swapped cases. Then print the result in the main function.
*/

String? swapString([final String? str]){
  String rev = "";
  var i;
  if(str != null){
    for(i = 0; i < str.length; i++){
      if(str[i] == str[i].toUpperCase()){
        rev += str[i].toLowerCase();
      } else {
        rev += str[i].toUpperCase();
      }
      print(str[i]);
    }
  }
  return rev;
}
void main(List<String> args){
  String? word = "EjA";
  print(swapString(word));
}