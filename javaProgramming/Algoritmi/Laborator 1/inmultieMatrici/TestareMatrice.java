package inmultieMatrici;

import java.io.*;



public class TestareMatrice
{
	public static void main(String[] args) 
	{
		int[][] matrice = {{1,0,1}, {0,1,0}};
		int[][] matrice2 = {{1,1},{1,1},{1,1}};
		System.out.println("...");
		
		MatriceBidimensionala mb1 = new MatriceBidimensionala(matrice, 2, 3);
		MatriceBidimensionala.afisareMatrice(mb1);
		
		
		MatriceBidimensionala mb2 = new MatriceBidimensionala(matrice2,3,2);
		
		
		MatriceBidimensionala mb3;
		try {
			mb3 = MatriceBidimensionala.inmultireMatrice(mb1, mb2);
			mb3.afisareMatrice(mb3);
			mb3.scriereMatriceFisier(mb3, "C:\\Users\\nikipiulitza\\Desktop\\matrice3.txt");
		} catch (ExceptieMatrice e) 
		{
	
			e.printStackTrace();
		}
	
		
	
		
		
	}

}
