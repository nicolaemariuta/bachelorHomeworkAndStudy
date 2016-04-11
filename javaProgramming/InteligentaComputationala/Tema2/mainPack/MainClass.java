package mainPack;

import java.util.ArrayList;

import jocCarti.Pachet;



public class MainClass {
	
	public static void main(String[] args) {
		
		
		//creare populatie de perceptroni
		int dimensiunePop = 20;
		ArrayList<Perceptron> populatie = new ArrayList<Perceptron>();
		
		for(int i = 0; i<dimensiunePop; i++)
		{
			int[] cod = new int[12];
				
			for(int k = 0; k<cod.length; k++)
			{
				cod[k] = (int)(Math.random()*2);
			}
				
			populatie.add(new Perceptron(cod));
		}  
		
		
		
		
		
		
		// intrarea si iesirea dorita
		double[] x1 = {1,-2,1};
		Intrare intrare = new Intrare(x1);
		double[] i1 = {-1,0,1};
		Intrare iesire = new Intrare(i1);
		
		// evaluare indivizi
					for(Perceptron p: populatie)
					{
						p.evaluare(intrare, iesire);
						p.evaluareFi();
					}
					for(Perceptron p: populatie)
					{
						p.evaluarePi(populatie);
					}
					
					
					//afisare indivizi
					for(Perceptron p: populatie)
					{
						System.out.println(p.toString() + " cu valoarea:" + p.valoare + " fi= " + p.fi+ " pi= " + p.pi);
					}
		
		Perceptron gasit = null;	
		int index;
		for(index = 0; index <1000; index++)
		{
			
			
			System.out.println("Generatie noua!!");
			//selectie 
			populatie = Perceptron.selectie(populatie);
			//afisare indivizi
			for(Perceptron p: populatie)
			{
				
				System.out.println(p.toString() + " cu valoarea:" + p.valoare + " fi= " + p.fi+ " pi= " + p.pi);
				if(p.valoare == 0)
				{
					gasit = p;
					break;
				}
			}
			
			
			// inscrucisare 
			populatie = Perceptron.incrucisare(populatie);
			
			//mutatie
			for(Perceptron cr: populatie)
			{
				for(int i =0; i<cr.cod.length; i++)
				{
					int rand = (int)(Math.random()*10000);
				
					
					if(rand<(cr.cod.length*dimensiunePop))
					{
						System.out.println("MUTATIE");
						cr.cod[i] = (cr.cod[i] + 1)%2;
					}
				}
			}
			
			
			//afisare  si reevaluare populatie dupa o incrucisare
			
			for(Perceptron p: populatie)
			{
				p.evaluare(intrare, iesire);
				p.evaluareFi();
			}
			for(Perceptron p: populatie)
			{
				p.evaluarePi(populatie);
			}
			
			
			//afisare indivizi
			for(Perceptron p: populatie)
			{
				System.out.println(p.toString() + " cu valoarea:" + p.valoare + " fi= " + p.fi+ " pi= " + p.pi);
				if(p.valoare == 0)
				{
					gasit = p;
					break;
				}
			}
			if(gasit!=null)
			{
				break;
			}
			
		}
		
		
		if(gasit != null)
		{
			System.out.println("A fost gasit rezultatul : " + gasit.toString() + " dupa " + index + " generatii");
		}
		
		
		
		
	}

}
