package calc;

import java.io.*;
import java.util.*;

public class factorial {
	
	static double in = 0;
	static double answer = 0;
	
	public static void main(String[] args) throws IOException {
		
		int w = 1;
		
		do{
			
			System.out.print("Enter number: ");
			Scanner intToCalc = new Scanner(System.in);
			in = intToCalc.nextInt();
			answer = Factorial(in);
			System.out.println("Answer:" + answer);
			
		} while (w > 0);
	}
	private static double Factorial(double n) {
		
		if (n != 1){
			return n * Factorial(n - 1);
		} else {
			return 1;
		}
	}
}
