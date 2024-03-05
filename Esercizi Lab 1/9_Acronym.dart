/* Write a function that given a string provided by the main function, 
 * converts that string to its acronym. Then print the result in the main function.
 * For example:  Portable Network Graphics will generate PNG.
 */

String acronym (final String str){
  String parola = "";
  parola += (str[0].toString()).toUpperCase();
  for (int i = 1; i < str.length; i++) {
    if (str[i-1] == " "){
      if(str[i] != str.toUpperCase()) {
        parola += str[i].toUpperCase();
      } else {
      parola += str[i];
      }
    }
  }
  return parola;
}

// Using SPLIT
String acronymSplit (final String str){
  String acronimo = "";
  final parole = str.split(' ');
  for(var parola in parole) {
    acronimo += parola[0].toUpperCase();
  }
  return acronimo;
}
void main (List<String> args){
  final String parola = "eeeeeeeeee EJA EJA Ejasssss";
  final String parola2 = "pppalle Grosse Ciccione Ejasssss";
  String acronimo = acronym(parola);
  String acronimo2 = acronymSplit(parola2);
  print(acronimo);
  print(acronimo2);
}