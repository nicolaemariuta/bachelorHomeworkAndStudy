/*
 * Created on Oct 11, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package mainPack;

//Rezolvarea exercitiului 1

public class TestNeuron {
	
	public static void main(String[] args)
	{
		Neuron neuron1 = new Neuron(1,1,1);
		
		int y = neuron1.iesire(10,-2,-4);
		if(y >= 0)
		{
			System.out.println("Punctul e din clasa A");
		}
		else
		{
			System.out.println("Punctul e din clasa B");
		}
		
		
		
	}

}
