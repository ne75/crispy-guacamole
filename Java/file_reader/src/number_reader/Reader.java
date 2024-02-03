package number_reader;

import java.util.*;
import java.io.*;

public class Reader {
	public static void main(String[] args) throws FileNotFoundException {
		Scanner read = new Scanner(
				new BufferedReader(new FileReader("/Users/Nikita/Documents/Programming/Java/file_reader/numbers.txt")));
        read.useLocale(Locale.US);
        do {
        	System.out.println(read.nextInt());
        } while (read.hasNext());
	}
}
