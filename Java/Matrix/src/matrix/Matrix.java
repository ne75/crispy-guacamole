package matrix;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Locale;
import java.util.Scanner;

public class Matrix {
	public static void main(String[] args) throws FileNotFoundException {
		
		double[][] matrix = new double[10][10];
		int size = 0;
		
		size = matrixSize("col", "/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		/*matrix = readMatrixFromFile("/Users/Nikita/Documents/Programming/Java/Matrix/a.txt");
		double det = calcDeterminant(matrix, size);
		System.out.println(det);*/
		
		matrix = addOrSubtract("/Users/Nikita/Documents/Programming/Java/Matrix/a.txt", 
					 "/Users/Nikita/Documents/Programming/Java/Matrix/b.txt", "+");
		
		printMatrix(matrix, size);
		
	}
	
	static double calcDeterminant(double[][] matrix, int size) {
		
		int powerCoef = -1;
		double[][] minorMatrix = new double[10][10];
		double determinate = 0;
		final int X = 2;
		
		for (int i = 0; i < size; i++){
			powerCoef = powerCoef * -1;
			minorMatrix = deleteXY(matrix, size, i, X);
			if (size != 2){
				determinate += (matrix[X][i] * powerCoef * calcDeterminant(minorMatrix, size - 1));
			} else {
				determinate = (matrix[0][0] * matrix[1][1]) - (matrix[0][1] * matrix [1][0]);
			}
		}	
		
		return determinate;
	}

	static void printMatrix(double[][] out, int i, int j){
		
		for (int x = 0; x < i; x++){
			System.out.print("[");
			for (int y = 0; y < j; y++){
				System.out.print(out[x][y] + "   ");
			}
			System.out.println("]");
		}
	}
	
	static void printMatrix(double[][] out, int size){
		
		for (int x = 0; x < size; x++){
			System.out.print("[");
			for (int y = 0; y < size; y++){
				System.out.print(out[x][y] + "   ");
			}
			System.out.println("]");
		}
	}
	
	static double[][] deleteXY(double[][] matrix, int size, int row, int col){
		
		double[][] matrixb = new double[9][9];
		
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
	        	readSize.nextDouble();
	        } while (readSize.hasNextDouble());
	        
	        size = sizeJ / sizeI;
	        
	        readSize.close();
		} else {
			size = sizeI;
		}
		
		return size;
	}
	
	private static double[][] matrixToArray(int i, int j, String file) throws FileNotFoundException{
		
		double[][] matrix = new double[10][10];
		
        Scanner matrixToArray = new Scanner(
				new BufferedReader(new FileReader(file)));
        matrixToArray.useLocale(Locale.US);
 
        for (int x = 0; x < i; x++){
        	for (int y = 0; y < j; y++){
        		matrix[x][y] = matrixToArray.nextDouble();
        	}
        }	
        return matrix;
	}
	
	static double[][] readMatrixFromFile(String file) throws FileNotFoundException{
		
		double[][] matrix = new double[10][10];
		
		int i = 0;
		int j = 0;
		
		i = matrixSize("row", file);
		j = matrixSize("col", file);

		matrix = matrixToArray(i, j, file);
		
		return matrix;
	}
	
	static double[][] multiply(double[][] a, double[][] b, String aFile, String bFile) throws FileNotFoundException{
		
		double[][] c = new double[10][10];
		int aI = 0;
		int aJ = 0;
		int bI = 0;
		int bJ = 0;
		
		aI = matrixSize("row", aFile);
		aJ = matrixSize("col", aFile);
		bI = matrixSize("row", bFile);
		bJ = matrixSize("col", bFile);

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
	
	static double[][] addOrSubtract(String aFile, String bFile, String operator) throws FileNotFoundException{
		
		double[][] answer = new double[10][10];
		double[][] a = new double[10][10];
		double[][] b = new double[10][10];
		int aI = 0;
		int aJ = 0;
		int bI = 0;
		int bJ = 0;
		
		aI = matrixSize("row", aFile);
		aJ = matrixSize("col", aFile);
		bI = matrixSize("row", bFile);
		bJ = matrixSize("col", bFile);
		
		if (!!((aI == aJ) && (bI == bJ))){
			throw new IllegalArgumentException("Matrix sizes don't match");
		} else {
			if (!!((operator == "+") && (operator == "-"))){
				if (operator == "+"){
					for(int i = 0; i < aI; i++){
						for(int j = 0; j < aJ; i++){
							answer[aI][aJ] = a[aI][aJ] + b[aI][aJ]; 
						}
					}
				} else {
					for(int i = 0; i < aI; i++){
						for(int j = 0; j < aJ; i++){
							answer[aI][aJ] = a[aI][aJ] - b[aI][aJ]; 
						}
					}
				}
			}
		}
		
		return answer;
	}
	
}

	

