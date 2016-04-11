package inmultieMatrici;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;





public class MatriceBidimensionala

{
	
	public int n;
	public int m;
	int[][] matrice= new int[n][m];
	
	MatriceBidimensionala(int[][] matrice, int n, int m )
	{
		this.matrice = matrice;
		this.n = n;
		this.m = m;
	}
	
	public static void afisareMatrice(MatriceBidimensionala mb1)
	{
		int n = mb1.n;
		int p = mb1.m;
		
		for (int i = 0; i< n; i++)
		{
			System.out.print("(");
			for (int j = 0; j< p; j++)
			{
				System.out.print(mb1.matrice[i][j] + ",");
			}
			System.out.print(")");
			System.out.println();
		}
	}
	
	public static MatriceBidimensionala inmultireMatrice (MatriceBidimensionala mb1, MatriceBidimensionala mb2) throws ExceptieMatrice 
	{
		System.out.println(mb1.m);
		System.out.println(mb2.n);
		if (mb1.m != mb2.n )
		{
			throw new ExceptieMatrice("Cele doua matrici nu se pot inmulti!!");
			
		}
		
		else
		{
			int[][] matrice = new int[mb1.n][mb2.m];
			
			for (int i = 0; i < mb1.n; i ++)
			{
				for (int j = 0; j < mb2.m; j++)
				{
					int contor = 0;
					for (int k = 0; k < mb2.n; k++)
					{
					
						contor = contor + mb1.matrice[i][k]*mb2.matrice[k][j];
					}
					
					matrice[i][j] = contor;
					
				}
			}
			
			
			return new MatriceBidimensionala(matrice, mb1.n, mb2.m);
			
		}
		
	}
		
		public static MatriceBidimensionala citireFisierMatrice(String url)
		
		{
			String numere = "0123456789";
	
			
			try
			{
				FileReader fr = new FileReader (url);
				int n = 0;
				int m = 0;
				
				while (true)				// citim numarul de linii ale fisierului
				{
					
					char a = (char) fr.read();
					String s = Character.toString(a);
					
					if (numere.contains(s))
					{
						String j = "";
						while (numere.contains(s))
						{
							j = j + Character.toString(a);
							a = (char) fr.read();
							s = Character.toString(a);
						}
						n = Integer.parseInt(j);
						
						break;
					}
					
				}
				
				while (true)				// citim numarul de coloane ale fisierului
				{
					
					char a = (char) fr.read();
					String s = Character.toString(a);
					
					if (numere.contains(s))
					{
						String j = "";
						while (numere.contains(s))
						{
							j = j + Character.toString(a);
							a = (char) fr.read();
							s = Character.toString(a);
						}
						m = Integer.parseInt(j);
						
						break;
					}
					
				}
			int[][] matrice = new int[n][m];
				
				for  ( int i = 0; i < n; i++)
				{
					for (int w = 0; w < m; w++)
					{
						while (true)				// citim cate un element al matricei si il adaugam
						{
							
							char a = (char) fr.read();
							String s = Character.toString(a);
							
							if (numere.contains(s))
							{
								String j = "";
								while (numere.contains(s))
								{
									j = j + Character.toString(a);
									a = (char) fr.read();
									s = Character.toString(a);
								}
								
								matrice[i][w] = Integer.parseInt(j);
								
								break;
							}
							
						}
					}
				}
				
			MatriceBidimensionala mb = new MatriceBidimensionala(matrice, n, m);
			fr.close();
			return mb;
				
			}
			catch (Exception e )
			{
				System.out.println("Matricea nu a putut fi citita"+e);
				return null;
				
			}
			
		}
		
		
		
		public static MatriceBidimensionala citireTastaturaMatrice()
		{
			System.out.println("Introduceti numarul de linii: ");
			int n = citireNumarBuffered();
			
			System.out.println("Introduceti numarul de coloane");
			int m = citireNumarBuffered();
			
			int[][] matrice = new int[n][m];
			for (int i = 0; i< n; i++)
			{
				for (int j = 0; j< m; j++)
				{
					System.out.println("Introduceti elementul " + i + "," + j );
					matrice[i][j] = citireNumarBuffered();
				}
			}
		
			return new MatriceBidimensionala(matrice, n, m);
			
			
		}
	
		
		public static int citireNumarBuffered ()
		{
			
			try 
			{
				String numere = "0123456789";
				BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
				String contor = "";
				
				while (true)
				{
				char a = (char) br.read();
				String s = Character.toString(a);
				
				if (numere.contains(s))
				{
					contor =  contor + s;
					
				}
				
				else
				{
					break;
				}
				
			
					
				}
			
				return Integer.parseInt(contor);
			
				
			}
			catch (Exception e )
			{
				System.out.println(e);
				return 0;
			}
			
		}
	
		
		public static void scriereMatriceFisier(MatriceBidimensionala mb, String url)
		{
			int n = mb.n;
			int m = mb.m;
			int[][] matrice = mb.matrice;
			
			scriereInt(n,true,url);
			scriereInt(m,false,url);
			
			for (int i = 0; i< n; i++)
			{
				for (int j = 0; j< m; j++)
				{
					if (j!=m-1)
					{
					scriereInt(matrice[i][j], true, url);
					}
					else
					{
						scriereInt(matrice[i][j], false, url);
					}
					
				}
				
				
				
			}
			
			
			
		}
		
		
		public static void scriereInt(int i, boolean b, String url)
		{
			
			try
			{
			String j = Integer.toString(i);
	    	
	    	
	    	for (int k = 0; k< j.length(); k++)
	    		
	    	{
	    		char c = j.charAt(k);
	    		FileWriter fw = new FileWriter(url,true);
	    		fw.write((int)c);
	    		
	    		
	    		
	    		if ( b == true)
	    		{
	    			fw.write(' ');
	    		}
	    		else
	    		{
	    			fw.write("\t");
	    		}
	    		
	    		fw.close();
	    	}
	    	
			}
			catch (Exception e)
			{
				System.out.println(e);
			}
		}
	
	
	
	
	
	
}
