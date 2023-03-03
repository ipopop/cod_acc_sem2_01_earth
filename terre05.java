// Display the result and the remainder of a division between two numbers.
// Langage : Java
// Exec Command in Shell : java terre05.java 42 17

public class terre05 {
   public static void main(String[] args) {
      int dividend = Integer.parseInt(args[0]);
      int divisor = Integer.parseInt(args[1]);
      int quotient, remainder;

      quotient = dividend / divisor;
      remainder = dividend % divisor;

      System.out.println("The quotient is " + quotient);
      System.out.println("The remainder is " + remainder);
   }
}
