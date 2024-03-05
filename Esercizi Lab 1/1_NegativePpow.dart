/* In the main function, given a number n, for all non-negative integers i < n, 
 * print i^4. Do it using a for loop sand a while loop.
*/
import 'dart:math'; 

void main(List<String> args){
    int n = 6;
    final List<int> lista1 = [1,2,3,4,5,6,7,8,9,10];
    for (int numero in lista1){
        if(numero < n) {
           print(pow(numero, 4));
        }
    }

    List<int> lista2 = [0,1,2,3,4,5,6,7,8,9,10];
    int x = lista2.length;
    print("--------------------------");
    while(x > 0) {
        if(lista2[x-1] < n) {
           print(pow(lista2[x], 4));
        }
        x--;
    }
}