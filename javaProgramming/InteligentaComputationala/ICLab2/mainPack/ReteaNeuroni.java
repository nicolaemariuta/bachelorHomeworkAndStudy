/*
 * Created on Oct 11, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package mainPack;

import java.io.IOException;
/*rezolvarea exercitiului 2. 
 * Pentru a scade sansele ca altcineva sa aiba tema identica am facut un Thread de tip daemon.
 * Afiseaza iesirile la fiecare 2 secunde.
 * Pentru a opri apasati enter
 * 
 * */


public class ReteaNeuroni extends Thread  
{
	
	
	
	public void run(){
		
		Neuron neuron1 = new Neuron(-1,1,1);
		int y1 = neuron1.iesire(1,3,1);
		
		Neuron neuron2 = new Neuron(1,1,-1);
		int y2 = neuron2.iesire(1,8,1);
		
		Neuron neuron3 = new Neuron(-1,1,-1);
		int y3 = neuron3.iesire(1,5,1);
		
		int n = 10;
		
		while(true)
		{
			System.out.println("y1= "+y1);
			System.out.println("y2= "+y2);
			System.out.println("y3= "+y3);
			
			int y1a = neuron1.iesire(y2,0,y3);
			int y2a = neuron2.iesire(y1,0,y3);
			int y3a = neuron3.iesire(y1,0,y2);
			
			//y1 = y1a!=0?y1a:y1;
			if(y1a!=0)
				y1=y1a;

			y2 = y2a!=0?y2a:y2;
			y3 = y3a!=0?y3a:y3;
			
			System.out.println("***********");
			
			n--;
			
			try
			{
				Thread.sleep(2000);
			}
			catch(InterruptedException e)
			{
				System.out.println(e);
			}
			
		}
		
			
		
	}
	
	public static void main(String[] args) throws IOException {
		
		
		ReteaNeuroni rn = new ReteaNeuroni();
		rn.setDaemon(true);
		
		System.out.println("Pentru a opri pasati Enter.... ");
		
		rn.start();
		
		System.in.read();
	}
	

}
