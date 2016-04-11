package tema2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class AFNinAFD {

	public static void main(String[] args) {

		AFN afn = AFN.citireFisier("citireAFN");

		ConcurrentLinkedQueue<String> coada = new ConcurrentLinkedQueue<String>();
		ConcurrentLinkedQueue<String> coadaFinala = new ConcurrentLinkedQueue<String>();

		coada.add(new Integer(afn.start).toString());
		coadaFinala.add(new Integer(afn.start).toString());

		Iterator<String> it = coada.iterator();

		int contor = 0;
		
		
		// creeare coada
		
		while (it.hasNext()) {

			contor++;

			String stare = (String) it.next();

			for (int i = 0; i < afn.nrSimboluri; i++) {
				String tranzitie = afn.transformare(stare, afn.vocabular
						.getVocabular().substring(i, i + 1));

			
				if (!coadaFinala.contains(tranzitie)) {
					coada.add(tranzitie);
					coadaFinala.add(tranzitie);
				}
			}
			coada.poll();

			if (coada.size() == 0) {
				break;
			} else {
				it = coada.iterator();
			}
		}
		
/*		System.out.println("***");
		
		for(String tranz : coadaFinala)
		{
			System.out.println(tranz);
		}
		
		*/
		
		//contruire AFD
		AFD afd = new AFD();
		afd.nrStari = coadaFinala.size();
		afd.nrSimboluri = afn.nrSimboluri;
		afd.vocabular = afn.vocabular;
		
		afd.matriceTranzitii = new int[afd.nrStari][afd.nrSimboluri];
		
		it = coadaFinala.iterator();
		
		while(it.hasNext())
		{
			coada.add(it.next());
		}
		
	//	coada = coadaFinala;      // construire matrice tranzitii
		
	//	System.out.println(coada.size());
		
		
		ArrayList<Integer> finale = new ArrayList<Integer>();
		
		for (int i =0; i< afd.nrStari; i++)
		{
		//	System.out.println(i);
			
			for(int k =0; k<afd.nrSimboluri; k++)
			{
				String numere = coada.peek();
				
				
				
				String iesire = afn.transformare(numere, afn.vocabular.getVocabular().substring(k, k + 1));
				
		//		System.out.println(iesire);
				
				int index = 0;
				
				it = coadaFinala.iterator();
				System.out.println(coadaFinala.size());
				while(true)
				{
					
					if(it.hasNext())
					{
						index++;
						String s = it.next();
						if(s.equals(iesire))
						{
		//					System.out.println("&");
							break;
						}
	
					}
					else
					{
						break;
					}
				}
				
				for (int o = 0; o< afn.indiciSF.length; o++)
				{
					if(numere.contains(new Integer (afn.indiciSF[o]).toString() ))
					{
						finale.add(index);
					}
				}
				
				
			
				
				afd.matriceTranzitii[i][k] = index;
				
	//		   System.out.println(index);
				
			}  coada.poll();
			
			System.out.println("**");
		}
		
		
		
		afd.start = 0;
		afd.stariFinale = finale.size();
		afd.indiciSF = new int[afd.stariFinale];
		for(int i =0; i  < afd.stariFinale; i++)
		{
			afd.indiciSF[i] = finale.get(i);
		}
		
		
		
		// afisare afd obtinut
		System.out.println("Numar stari: " + afd.nrStari);
		System.out.println("Numar simboluri: " + afd.nrSimboluri);
		System.out.println("Simbolurile automatului: " + afd.vocabular.getVocabular().replace("", " "));
		System.out.println("Matricea de tranzitii:");
		
		for(int i =0; i<afd.nrStari; i++)
		{
			String linie = "S"+ (i+1) + ": ";
			for(int j = 0; j<afn.nrSimboluri; j++)
			{
				
				linie = linie + "S"+afd.matriceTranzitii[i][j]+ " ";
			}
			System.out.println(linie);
		}
		
		System.out.println("abaa" );
		afd.parcurgere("abaa");
		afn.parcurgere("abaa");
		

	}

}
