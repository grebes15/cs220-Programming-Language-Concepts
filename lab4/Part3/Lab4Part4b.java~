public class Lab4Part4b {
  public static void main(String[] args) {
    for (int i = 0; i <= 5; i++) {
      for (int j = 0; j <= 5; j++) {
        System.out.println("recur("+i+","+j+") = "+recur(i,j));
      }
    }
  }

  public static int recur(int i, int j) {

    if(i <= 0 || j <= 0) return 0;
    if(i == j) return i;
    if(i > j) return j;
		else{
		return (2 * recur(i - 1, j)) + recur(j - 1, i);    
	}
  }
}
