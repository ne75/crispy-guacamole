package matrix;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Locale;
import java.util.Scanner;

public class Matrix1 {
	public static void main(String[] args) throws FileNotFoundException {
		
		int aI = 0;
		int aJ = 0;
		int bI = 0;
		int bJ = 0;
		int[][] a = new int[10][10];
		int[][] b = new int[10][10];
		int[][] c = new int[10][10];
		
		aI = matrixSize("row", "/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		aJ = matrixSize("col", "/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		bI = matrixSize("row", "/Users/Nikita/Documents/Programming/Java/Matrix/b.txt");
		bJ = matrixSize("col", "/Users/Nikita/Documents/Programming/Java/Matrix/b.txt");
		
		a = readMatrixFromFile("/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		b = readMatrixFromFile("/Users/Nikita/Documents/Programming/Java/Matrix/b.txt");
		
		c = multiply(a, b);
		
	}
	
	static int calcDeterminate(int[][] matrix, int size) {
		
		int powerCoef = -1;
		int[][] minorMatrix = new int[10][10];
		int determinate = 0;
		final int X = 2;
		
		for (int i = 0; i < size; i++){
			powerCoef = powerCoef * -1;
			minorMatrix = deleteXY(matrix, size, i, X);
			if (size != 2){
				determinate = determinate + (matrix[X][i] * powerCoef * calcDeterminate(minorMatrix, size - 1));
			} else {
				determinate = (matrix[0][0] * matrix[1][1]) - (matrix[0][1] * matrix [1][0]);
			}
		}	
		
		return determinate;
	}

	static void printMatrix(int[][] out, int i, int j){
		
		for (int x = 0; x < i; x++){
			System.out.print("[");
			for (int y = 0; y < j; y++){
				System.out.print(out[x][y] + "   ");
			}
			System.out.println("]");
		}
	}
	
	static int[][] deleteXY(int[][] matrix, int size, int row, int col){
		
		int[][] matrixb = new int[9][9];
		
		for (int x = 0; x < col; x++){
			for (int y = 0; y < row; y++){
				matrixb[x][y] = matrix[x][y];
			}
		}
		for (int x = col + 1; x < size; x++){
			for (int y = 0; y < row; y++){
				matrixb[x-1][y] = matrix[x][y];
			}		
		}
		for (int x = 0; x < col; x++){
			for (int y = row + 1; y < size; y++){
				matrixb[x][y-1] = matrix[x][y];
			}		
		}
		for (int x = col + 1; x < size; x++){
			for (int y = row + 1; y < size; y++){
				matrixb[x-1][y-1] = matrix[x][y];
			}		
		}
		
		return matrixb;
	}
	
	static int matrixSize(String colOrRow, String file) throws FileNotFoundException{
		
		int size = 0;
		int sizeI = 0;
		int sizeJ = 0;
		
		Scanner read = new Scanner(
				new BufferedReader(new FileReader(file)));
        read.useLocale(Locale.US);
        
        do {
        	sizeI++;
        	read.nextLine();
        } while (read.hasNextLine()); 
        
        read.close();
		
		if (colOrRow == "col"){
			
			Scanner readSize = new Scanner(
					new BufferedReader(new FileReader(file)));
	        readSize.useLocale(Locale.US);
	        
	        do {
	        	sizeJ++;
	        	readSize.nextInt();
	        } while (readSize.hasNextInt());
	        
	        size = sizeJ / sizeI;
	        
	        readSize.close();
		} else {
			size = sizeI;
		}
		
		return size;
	}
	
	static int[][] matrixToArray(int i, int j, String file) throws FileNotFoundException{
		
		int[][] matrix = new int[10][10];
		
        Scanner matrixToArray = new Scanner(
				new BufferedReader(new FileReader(file)));
        matrixToArray.useLocale(Locale.US);
 
        for (int x = 0; x < i; x++){
        	for (int y = 0; y < j; y++){
        		matrix[x][y] = matrixToArray.nextInt();
        	}
        }	
        return matrix;
	}
	
	static int[][] readMatrixFromFile(String file) throws FileNotFoundException{
		
		int[][] matrix = new int[10][10];
		
		int i = 0;
		int j = 0;
		
		i = matrixSize("row", file);
		j = matrixSize("col", file);

		matrix = matrixToArray(i, j, file);
		
		return matrix;
	}
	
	static int[][] multiply(int[][] a, int[][] b) throws FileNotFoundException{
		
		int[][] c = new int[10][10];
		int aI = 0;
		int aJ = 0;
		int bI = 0;
		int bJ = 0;
		
		aI = matrixSize("row", "/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		aJ = matrixSize("col", "/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		bI = matrixSize("row", "/Users/Nikita/Documents/Programming/Java/Matrix/b.txt");
		bJ = matrixSize("col", "/Users/Nikita/Documents/Programming/Java/Matrix/b.txt");

		if (aJ != bI){
			throw new IllegalArgumentException("Matrix sizes don't match");
		}
		
		for(int i = 0; i < aI; i++){
			for(int j = 0; j < bJ; j++){
				for(int k = 0; k < aJ; k++){
					c[i][j] += a[i][k] * b[k][j];
				}
			}
		}
		
		return c; 
	}
}

	

