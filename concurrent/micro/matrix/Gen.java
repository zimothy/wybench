import java.util.*;

public class Gen {

  public static int randNumber() {
		return (int) (Math.random() * 100);
  }
    
  public static void main(String[] args) {
		int n = Integer.parseInt(args[0]);
		ArrayList<Integer> list = new ArrayList<Integer>();
		System.out.println(n + " " + n);
		System.out.println("--");
		
		for(int i = 0; i != n; ++i) {
		  for(int j = 0; j != n; ++j) {
			  System.out.print(randNumber() + " ");
		  }
		  System.out.println();
		}
		
		System.out.println("--");
		for(int i = 0; i != n; ++i) {
		  for(int j = 0; j != n; ++j) {
			  System.out.print(randNumber() + " ");
		  }
		  System.out.println();
		}
  }
}
