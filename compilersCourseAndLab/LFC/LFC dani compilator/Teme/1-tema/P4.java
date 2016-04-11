package p4;

import java.io.*;

import javax.swing.text.AbstractDocument.LeafElement;

public class P4 {
public static void main(String []args) throws IOException
{
	FileReader input = new FileReader("test.txt"); 
	BufferedReader bufRead = new BufferedReader(input);
	BufferedReader io = new BufferedReader(new InputStreamReader(System.in));
	int nr_stari = 0,j=0; // presupunem ca starea finala este max(nr_stari)
	int nr_simboluri = 0;
	int i_stare=0 , i_simbol=0;
	char []stari_automat = null;
	//int stare_finala;
	String line;
	char cuvant[] = null; 
	int stare_urmatoare = 0;
	String[] tmp = null;
	String[] simboluri = null;
	String[] tranzitie = null;
	char[][] stari = null;
	String delims = "[ ,]+";
	int sir[] = new int[20];
	int count = 0;
	//inceput citire din fisier
	
	//nr simboluri
	line = bufRead.readLine();
	nr_simboluri = Integer.parseInt(line);
	System.out.println("Numarul de simboluri:" + nr_simboluri); 
	count++; 
	
    while (line != null){
        line = bufRead.readLine();
        
        // simboluri
       // System.out.print("Simboluri: ");
        if(count == 1)
        {
        	simboluri = line.split(delims);
        	for(int i=0;i<simboluri.length;i++)
        		System.out.print(simboluri[i]+" ");
        	 System.out.println();
        }
        
        // nr stari automat
       if(count == 2)
       {
	       	nr_stari = Integer.parseInt(line);
	       	System.out.print("Nr. stari sutomat: " + nr_stari);
	       	 System.out.println();
       }
       // starile automatului
       if(count == 3)
       {
    	   stari_automat = new char[nr_stari];
    	   tmp = line.split(delims);
    	   for(int i=0;i<nr_stari;i++)
    	   {
    		   stari_automat[i] = tmp[i].charAt(0);
    		   System.out.println(stari_automat[i]+" ");
    	   }
    	   
       }
       stari = new char [nr_stari][nr_simboluri];
        //stari
        if((line != null) && (count > 3))
        {	
        	System.out.println("asas");
        	System.out.println(stari.length);
        	System.out.println(stari[0].length);
        	System.out.println();
	        tranzitie = line.split(delims);
	        for(int i=0;i<nr_simboluri;i++)
	        	System.out.println(tranzitie[i]+" ");
	        
	        for(i_simbol=0;i_simbol<nr_stari;i_simbol++)
	        {
	        	stari[i_stare][i_simbol] = tranzitie[i_simbol].charAt(0);
	        	System.out.println(stari[i_stare][i_simbol]+" ");
	        }
	        
	        System.out.println();
        }
        count++;
        i_stare++;
    }
    bufRead.close();
    //sfarsit citire din fisier
    
    System.out.print("Cuvant: ");
    line = io.readLine();
    cuvant = line.toCharArray();
    // j: tranzitii  i: stari/arce
    j = 1; //tranzitia initiala
    for(int i=0;i<cuvant.length;i++)
    {
	    if(cuvant[i] == stari[j][1]) //caracter = arc
	    {
	    	stare_urmatoare = Character.getNumericValue(stari[j][2]);
	    }
	    //else
	    	//break;
	    sir[i] = stare_urmatoare;
	    j++;
    }
    
    System.out.print("Succesiune stari: ");
    for(int i=0;i<sir.length;i++)
    {
    	if(sir[i] != 0)
    		System.out.print(sir[i]+" ");
    }
    System.out.println();
    if(stare_urmatoare == nr_stari)// sau stare_finala
    	System.out.println("Cuvant acceptat");
    else
    	System.out.println("Cuvant neacceptat");
    

}
}
