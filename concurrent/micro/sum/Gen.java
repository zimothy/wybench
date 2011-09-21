import java.util.*;

public class Gen {

  public static int randNumber() {
    return (int) (Math.random() * 100);
  }
    
  public static void main(String[] args) {
    int n = Integer.parseInt(args[0]);
    ArrayList<Integer> list = new ArrayList<Integer>();
    
    for(int i = 0; i != n; ++i) {
      System.out.print(randNumber() + " ");
    }
    System.out.println();
  }
}
