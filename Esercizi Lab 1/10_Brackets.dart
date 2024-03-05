/* Write a function that given a string provided by the main function containing 
 * brackets [], braces {}, parentheses (), or any combination thereof that follows the 
 * math expression rules, returns a boolean that is true if any and all pairs are matched and nested correctly. 
 * Then print the result in the main function.
 * Example: 
 * This is ok: {this[is(o)]}k
 * This is not ok: T{hi[(sis)not}ok]
 * This is not ok: {{this[is(notok)]}}
*/
bool correctness(final String sentence) {
  bool T = false;
  bool Q = false;
  bool G = false;
  bool ok = false;
  for(int i = 0; i < sentence.length-1; i++) {
    print("++++++NUOVO CICLO++++++++ \n" + "G is: " + G.toString() + "\n" + "Q is: " + Q.toString()+ "\n" + "T is: " + T.toString());
    // PARENTESI APERTE
    if(sentence[i] == '{')
    G = true;

    if(sentence[i] == '['){
      if(G = false) return false;
      Q = true;
    }

    if(sentence[i] == '(') {
      if(G = false) return false;
      if(Q = false) return false;
      T = true;
    }

    // PARENTESI CHIUSE
    if(sentence[i] == ')')
    T = false;

    if(sentence[i] == ']'){
      if(T == true) return false;
      Q = false;
    }

    if(sentence[i] == '}') {
      if(T = true) return false;
      if(Q = true) return false;
      G = false;
    }

    if (!G && !Q && !T) {
      print("EJA");
      ok = true;
      print(ok.toString());
    }
  }
  return false;
}

void main (List<String> args){
  final String equazione = "{[()]}";
  bool isOk = correctness(equazione);
  print("RISULTATO: " + isOk.toString());
}
