package jocCarti;

import java.util.ArrayList;
import java.util.Arrays;

import mainPack.Perceptron;
import minimZecimal.Cromozom;



public class JocCarti {
	public static void main(String[] args) {
		
	
		int dimensiunePop = 10;
		ArrayList<Pachet> populatie = new ArrayList<Pachet>();
		
		
		
		//generare seturi de carti
		
		for(int i = 0; i<dimensiunePop; i++)
		{
			int[] cod = new int[10];
				
			for(int k = 0; k<cod.length; k++)
			{
				cod[k] = (int)(Math.random()*2);
			}
				
			populatie.add(new Pachet(cod));
		}
		
		// calcul fi,suma, produs si evaluare pentru fiecare set de carti
		// 1 --> pachetul suma
		// 0 --> pachetul produs
		
		for(Pachet pachet: populatie)
		{
			pachet.sumaSiProdus();
			pachet.evaluare();
			pachet.evaluareFi();
			
	//		System.out.println((populatie.indexOf(pachet)+1)+" Suma: " + pachet.getSuma() + "Produs: " 
	//		+ pachet.getProdus() + "Valoare: "+ pachet.getValoare() + " Fi " + pachet.getFi());
		}
		
		
		
		// calcul  pi
		double verificare = 0;
		for(Pachet p:populatie)
		{
			p.evaluarePi(populatie);
			verificare = verificare + p.getPi();
			
			System.out.println((populatie.indexOf(p)+1)+" Suma: " + p.getSuma() + "Produs: " 
				+ p.getProdus() + "Valoare: "+ p.getValoare() + " Fi " + p.getFi() + " Pi " + p.getPi() );
			
		}
	
		System.out.println("Verificare" +verificare);
		
		int contor = 0;
		
		boolean ideal = false;
		
		
		for(int eee = 0; eee<100; eee++)
		{
			contor++;
			
			
			// pachetul de carti inainte de selectie
			System.out.println("PASUL " + contor);
			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			System.out.println("Pachetul de carti inainte de selectie: ");
			for(Pachet p:populatie)
			{
			
				
				System.out.println("Pachetul: " +(populatie.indexOf(p)+1)+" Suma: " + p.getSuma() + "Produs: " 
					+ p.getProdus() + "Valoare: "+ p.getValoare() + " Fi " + p.getFi() + " Pi " + p.getPi() );
				if(p.getValoare() == 0)
				{
					ideal = true;
				}
				
			}
			if(ideal)
			{
				break;
			}
			
			// selectie
			ArrayList<Pachet> selectie = Pachet.selectie(populatie);
			populatie = selectie;
			
			//mutatie
			for(Pachet cr: populatie)
			{
				for(int i =0; i<cr.cod.length; i++)
				{
					int rand = (int)(Math.random()*1000);
				
					
					if(rand<(cr.cod.length*dimensiunePop))
					{
						System.out.println("MUTATIE");
						cr.cod[i] = (cr.cod[i] + 1)%2;
					}
				}
			}
			
			
			// afisare si reevaluare pachet dupa selectie si mutatie
			for(Pachet p: populatie)
			{
				p.evaluare();
				p.evaluareFi();
			}
			for(Pachet p: populatie)
			{
				p.evaluarePi(populatie);
			}
			
			
			System.out.println("Pachetul de carti dupa selectie si mutatie: ");
			for(Pachet p:populatie)
			{
			
				
				System.out.println("Pachetul: " +(populatie.indexOf(p)+1)+" Suma: " + p.getSuma() + "Produs: " 
					+ p.getProdus() + "Valoare: "+ p.getValoare() + " Fi " + p.getFi() + " Pi " + p.getPi() );
				if(p.getValoare() == 0)
				{
					ideal = true;
				}
				
			}
			if(ideal)
			{
				break;
			}
			
			
		}
		
		if(ideal)
		{
			System.out.println("Pachetul ideal a fost gasit dupa" + contor + " runde");
		}
		
		
	/*
		
		//evaluare populatie ****************************************
		for(Pachet cr : populatie)
		{
	//	System.out.println(cr.toString());
			cr.evaluare();
		}
		
		Pachet.evaluarePi(populatie);
		
		
		double suma = 0;
		
		for(Pachet cr : populatie)
		{
			suma = suma + cr.pi;
	//		System.out.println(cr.pi);
			
		}
	//	System.out.println(suma);
		
		
	//selectie *******************************************************************
		ArrayList<Pachet> selectie = Pachet.selectie(populatie);
		
		System.out.println("***********************");
		for(Pachet sl: selectie)
		{
			System.out.println(sl.toString());
		}
		
		
	//incrucisare ****************************************************
		
		populatie = Pachet.incrucisare(selectie);
		System.out.println("Incrucisare");
		System.out.println("***********************");
		for(Pachet sl: populatie)
		{
			System.out.println(sl.toString());
		}
		
	 // mutatie **************************************************
		for(Pachet cr: populatie)
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
		*/
		
		}
		
	

}
