/* Write a function with an optional named parameter up, that, for a given string, 
 * provided by the main function, make it upper case if up is true, lower case otherwise. 
 * By default, up is false. Then print the result in the main function.
*/

String? swapString(String? str, [bool okay = false]){
  String rev ="";
  if (okay && str != null){
      rev = str.toUpperCase();
      return rev;
    }
  return null;
}

void main(List<String> args){
  bool up = true;
  String? word = "aaaaaaaaa";
  print(swapString(word, up));
}