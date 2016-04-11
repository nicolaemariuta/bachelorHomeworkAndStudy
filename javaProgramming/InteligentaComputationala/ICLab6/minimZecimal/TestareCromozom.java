/*
 * Created on Nov 8, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package minimZecimal;

import java.util.ArrayList;

/**
 * @author user
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class TestareCromozom {
	
	public static void main(String[] args) {
		
		
		//initiere populatie ***************************************
		ArrayList<Cromozom> populatie = new ArrayList<Cromozom>();
		
		int dimensiunePop = 10;
		
		for(int i = 0; i<dimensiunePop; i++)
		{
			int[] cod = new int[6];
			
			for(int k = 0; k<cod.length; k++)
			{
				cod[k] = (int)(Math.random()*2);
			}
			
			populatie.add(new Cromozom(cod));
		}
		
		int contor = 0;
		while(contor<10)
		{
			contor++;
		System.out.println("Selectie noua");
		
		//evaluare populatie ****************************************
		for(Cromozom cr : populatie)
		{
	//	System.out.println(cr.toString());
			cr.evaluare();
		}
		
		Cromozom.evaluarePi(populatie);
		
		
		double suma = 0;
		
		for(Cromozom cr : populatie)
		{
			suma = suma + cr.pi;
	//		System.out.println(cr.pi);
			
		}
	//	System.out.println(suma);
		
		
	//selectie *******************************************************************
		ArrayList<Cromozom> selectie = Cromozom.selectie(populatie);
		
		System.out.println("***********************");
		for(Cromozom sl: selectie)
		{
			System.out.println(sl.toString());
		}
		
		
	//incrucisare ****************************************************
		
		populatie = Cromozom.incrucisare(selectie);
		System.out.println("Incrucisare");
		System.out.println("***********************");
		for(Cromozom sl: populatie)
		{
			System.out.println(sl.toString());
		}
		
	 // mutatie **************************************************
		for(Cromozom cr: populatie)
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
		
		}
	}

}
