import java.util.*;
import java.lang.Integer;

public class numberGame {
	
	static int number = 0;
	static int compNumber[];
	static int guess[];
	static int correctNumber = 0;
	static int correctPlace = 0;
	static int error = 0;
	static boolean cheating = false;
	static final String quit = "q";
	static String command;
	static boolean validCommand;
	static int moves = 0;
	
	public static void main(String arg[]){

	guess = new int[50];
	compNumber = new int [5];
	String quit = "q";
	
	Scanner in = new Scanner(System.in);
	
	String s = "" + generateNumber();                         
	char[] compString = s.toCharArray();     
	for(int i = 0; i < compString.length; i++){
		compNumber[i] = (compString[i] - 48);
	}
	do {
		do {
			error = 0;
			cheating = false;
			System.out.print ("Enter Guess: ");
			command = in.nextLine();
			validCommand = isInteger(command);
			if (command.equals(quit)){
				System.exit(0);
			}
			if (validCommand == true){
				number = Integer.parseInt(command);				
			} else {
				System.err.println("Invalid input");
			}	
			if (number < 10000) {
				System.err.println("Guess to small!");
			}
			if (number > 99999){
				System.err.println("Guess to large!");
			} 
			cheating = checkForCheating(number);
			if (cheating == true){
				System.err.println("All numbers must be different!");
			} else {
				String str = "" + number;                         
				char[] guessString = str.toCharArray();     
				for(int i = 0; i < guessString.length; i++){
					guess[i] = (guessString[i] - 48);
					if (error == 0) {
						if ((guess[0] > 9) || (guess[1] > 9) || (guess[2] > 9) || (guess[3] > 9) || (guess[4] > 9)) {
							System.err.println("Enter only numbers");
							error = error + 1;
						}
					}
				}
			}
		} while ((number < 10000) || (number > 99999) || (cheating == true) || (validCommand == false));
	
		correctPlace = checkPlace(guess[0], guess[1], guess[2], guess[3], guess[4]);
		correctNumber = checkNumber(guess[0], guess[1], guess[2], guess[3], guess[4]);
		moves = moves + 1;
		System.out.print(correctNumber + " " + correctPlace + '\r');
		if ((correctPlace == 5) && (correctNumber == 5)) {
			System.out.println("Congrats! You won in " + moves + " moves!");
		}
	} while ((correctPlace < 5) || (correctNumber < 5));
	
	}
	public static int generateNumber(){
		int answer = 0;
		int a = 0;
		int b = 0;
		int c = 0;
		int d = 0;
		int e = 0;
		
		Random randomGenerator = new Random();
		do {
			a = randomGenerator.nextInt((9) + 1);
		} while (a == 0);
		do {
			b = randomGenerator.nextInt((9) + 1);
		} while (a == b);
		do {
			c = randomGenerator.nextInt((9) + 1);
		} while ((c == a) || (c == b));
		do {
			d = randomGenerator.nextInt((9) + 1);
		} while ((d == a) || (d == b) || (d == c));
		do {
			e = randomGenerator.nextInt((9) + 1);
		} while ((e == a) || (e == b) || (e == c) || (e == d));
		answer = ((a * 10000) + (b * 1000) + (c *100) + (d * 10) + e);
		return answer;
	}
	public static int checkPlace(int a, int b, int c, int d, int e){
		int correctPlace = 0;
		if (compNumber[0] == a){
			correctPlace = correctPlace + 1;
		}
		if (compNumber[1] == b){
			correctPlace = correctPlace + 1;
		}
		if (compNumber[2] == c){
			correctPlace = correctPlace + 1;
		}
		if (compNumber[3] == d){
			correctPlace = correctPlace + 1;
		}
		if (compNumber[4] == e){
			correctPlace = correctPlace + 1;
		}
		return correctPlace;
	}
	public static int checkNumber(int a, int b, int c, int d, int e){
		int correctNumber = 0;
		if ((compNumber[0] == a) || (compNumber[0] == b) || (compNumber[0] == c) || (compNumber[0] == d) || (compNumber[0] == e)){
			correctNumber = correctNumber + 1;
		}
		if ((compNumber[1] == a) || (compNumber[1] == b) || (compNumber[1] == c) || (compNumber[1] == d) || (compNumber[1] == e)){
			correctNumber = correctNumber + 1;
		}
		if ((compNumber[2] == a) || (compNumber[2] == b) || (compNumber[2] == c) || (compNumber[2] == d) || (compNumber[2] == e)){
			correctNumber = correctNumber + 1;
		}
		if ((compNumber[3] == a) || (compNumber[3] == b) || (compNumber[3] == c) || (compNumber[3] == d) || (compNumber[3] == e)){
			correctNumber = correctNumber + 1;
		}
		if ((compNumber[4] == a) || (compNumber[4] == b) || (compNumber[4] == c) || (compNumber[4] == d) || (compNumber[4] == e)){
			correctNumber = correctNumber + 1;
		}
		
	return correctNumber;
	}
	public static boolean checkForCheating(int guess){
		boolean cheating = false;
		int guessDigits[];
		
		guessDigits = new int[50];
		
		String str = "" + guess;                         
		char[] guessString = str.toCharArray();     
		for(int i = 0; i < guessString.length; i++){
			 guessDigits[i] = (guessString[i] - 48);
		}
		if ((guessDigits[1] == guessDigits[0])){
			cheating = true;
		}
		if ((guessDigits[2] == guessDigits[0]) || (guessDigits[2] == guessDigits[1])){
			cheating = true;
		}
		if ((guessDigits[3] == guessDigits[0]) || (guessDigits[3] == guessDigits[1]) || (guessDigits[3] == guessDigits[2])){
			cheating = true;
		}
		if ((guessDigits[4] == guessDigits[0]) || (guessDigits[4] == guessDigits[1]) || (guessDigits[4] == guessDigits[2]) || (guessDigits[4] == guessDigits[3])){
			cheating = true;
		}
	return cheating;
	}
	public static boolean isInteger( String input ) {  
	    try {  
	    	Integer.parseInt( input );  
	    	return true;  
	    } catch( Exception e ) {  
	    return false;  
	    }  
	} 
}
	





