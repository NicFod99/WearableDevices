/* Given an integer, n, perform the following conditional actions:
 * If n is odd, print ’Odd’
 * If n is even and in the inclusive range of 2 to 5, print ’Small even’
 * If n is even and in the inclusive range of 6 to 20, print ’Medium even’
 * If n is even and greater than 20, print ’Big even’
 * Otherwise print 'Dont't know'
 */
void main(List<String> args) {
    final int sel = 18;
    if ((sel % 2) != 0){
      print("Odd");
    } else if (sel >= 2 && sel <= 5) {
      print("Small even");
    } else if (sel >= 6 && sel <= 20) {
      print("Medium even");
    } else if (sel > 20) {
      print("Big even");
    } else {
      print("I don't know");
    }
}