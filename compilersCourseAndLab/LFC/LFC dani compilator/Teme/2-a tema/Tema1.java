import java.io.*;
import java.lang.*;
import java.util.Scanner;
public class Tema1 {
	
	public static  String citire()
	  { String s = null;	
		BufferedReader in=new BufferedReader(new InputStreamReader(System.in));
		  
		  try
		  { 
			  s=in.readLine();
		  }
		  catch(IOException e)
		  {
			  e.printStackTrace();
		  }
		  return s;
	  }
	

	
	public static void main(String args[])
	  { 
		
	  String cod1 = null;//cod citit de la tastatura sub forma sir caractere
	  int i=1;//randu din fisier
	  int x=1;//linia din matricea f - a automatului
	  Character c = new Character('a'); //folosit pentru transformare char to int
	  int[] simb;	//vector de simboluri folosite  
	  simb = new int[20];//cate sumboluri	  
	  int [][] f;//matricea de functionare a automatului
	  f=new int[20][20];//dimensiunea matricei
	  int n=0,m=0; // nr de simboluri si stari - declaratii 
	  int[] COD;	//vector de simboluri folosite  
	  COD = new int[30];//codul sub forma de int  
	  boolean ok=false;
	  
		System.out.println("....START.....");
		
	  try{
		  // Deschidere fisier		 
		  FileInputStream fstream = new FileInputStream("textfile.txt");		  
		  DataInputStream in = new DataInputStream(fstream);
		  BufferedReader br = new BufferedReader(new InputStreamReader(in));
		  String strLine;
		  //Citire linie cu linie
		  while ((strLine = br.readLine()) != null)   {		 	 
			  if(i==1){ 			
				  //citesc primul rand
				  //retin numar de simboluri
				  c=strLine.charAt(0); 
				  String s = c.toString();	
				  n=Integer.parseInt(s);
					System.out.println(n);				
					}
			  if(i==2){  
				  //citesc randul 2
				  //retin simbolurile in vect: simb[n]
				  for (int j=0;j<n;j++)
				  {
					  if (j==0)
					  {					
						  c=strLine.charAt(j); 
					  }
					  if (j>0)
					  {
						  c=strLine.charAt(j+j);   
					  }
					 			 
					  String s = c.toString();					  
					  simb[j+1]=Integer.parseInt(s);						  
					  System.out.print (simb[j+1]+" "); 					 				  
				  }
				  System.out.println();	
				}
			  // citit randul 3 
			  //memorez numarul de stari automat
			  if(i==3){  
				  c=strLine.charAt(0); 
				  String s = c.toString();	
				  m=Integer.parseInt(s);
					System.out.println(m);
					}
			  // afisare starile de la 1 la m 
			  if(i==4){  
				  for (int j=0;j<m;j++)
				  {System.out.print (j+1+" ");
					}
				  System.out.println();
			  }
			  //citire restu randurilor
			  //citire matrice de functionare a automatului
			  if(i>4){ 				  
				  //System.out.print (strLine.charAt(0)); 
				 // System.out.println (strLine.charAt(2)); 
				  for (int j=0;j<n;j++)
				  {
					  if ((j)==0)
					  {					
						  c=strLine.charAt(j); 
					  }
					  if ((j)>0)
					  {
						  c=strLine.charAt(j+j);   
					  }
					 			 
					  String s = c.toString();					  
					  f[x][j+1]=Integer.parseInt(s);						  
					 // System.out.print (f[x][j+1]+" "); 
					
				  }
				  
				  x++;			  
			  }		  
		 
		  i++;
		  }
		  //Close the input stream
		  in.close();
		    }catch (Exception e){//Catch exception if any
		  System.err.println("Error: " + e.getMessage());
		  }
	  
	  //afisare matricea de functionare
	  for (int lin=1;lin<m+1;lin++)
	  {
		  for(int col=1;col<n+1;col++)
		  {
			  System.out.print (f[lin][col]+" ");  
		  }
		  System.out.println ();  
	  }
	  
	  // pornire program ------------------------------

	  //citire cod ------------------------------------
	  cod1=citire();  
	
	  //verificare cod---------------------------------
	  //din codul introdus transform in INT fiecare caracter si presupun ca nu este acceptat simbolu
	  for (int j=0;j<cod1.length();j++)
	  {
		  ok=false;
		  c=cod1.charAt(j);	 			 
	      String s = c.toString();					  
	      int test=Integer.parseInt(s); 
	      
	  //verific daca exista simbolu in vectorul de simboluri acceptate "simb"
      
	      for (int k=1;k<n+1;k++)
	      {
	    	  if (test==simb[k])
	    	  { ok=true;
	    		  COD[j+1]=test;
	    	   }
	    	      	  
	      }
	      
	     //daca nu am gasit un element Codul introdus este gresit 
	      if (!ok)
  		  break;
	      
	  }
	  if (ok)
	  {
		  for (int j=0;j<cod1.length();j++)
		  {
			  System.out.print (COD[j+1]+ " ");  
			  
		  }
	  }
	  else
	  {
		  System.out.println ("cod gresit");    
	  }
	  
	 
	
	  if (ok)//daca codul este introdus corect
	  {  
		  //verificare pozitie finala----------------------------------
		  x=1;//pozitia initiala g1
		  System.out.println();
		  System.out.print("1 ");
		  
		  for (int j=0;j<cod1.length();j++)
		  {
			  System.out.print (f[x][COD[j+1]+1]+ " ");  
			 // System.out.print (x +" "); 
			  x=f[x][COD[j+1]+1]; 			 
		  }	
		  System.out.println();
		  //verific daca am ajuns la ultima stare
		  if (x==3)
		  {
			  System.out.println (" S-a ajuns la ultima stare "+x);  
		  }
		  else
		  {
			  System.out.println (" NU s-a ajuns la ultima stare "+x);  
		  }
		  
	  }
	  
	  
	  }
}
