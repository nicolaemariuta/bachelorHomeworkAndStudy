/*
 * Created on Oct 11, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package mainPack;

// Clasa Neuron

public class Neuron 
{
	int w1;
	int w2;
	int w3;
	
	public Neuron(int w1,int w2,int w3)
	{
		this.w1 = w1;
		this.w2 = w2;
		this.w3 = w3;
		
	}
	
	public int iesire(int x1, int x2, int x3)
	{
		int S = w1*x1+w2*x2+w3*x3;
		
		if(S>0)
		{
			return 1;
		}
		else if(S==0) {return 0;}
		else {return -1;}
	}

}
