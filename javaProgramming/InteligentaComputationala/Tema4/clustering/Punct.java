package clustering;

import java.util.ArrayList;

public class Punct {
	
	double x;
	double y;
	String nume;
	Punct asignat = null;
	
	

	Punct(double x, double y)
	{
		this.x= x;
		this.y= y;
	}

	Punct(double x, double y, String nume)
	{
		this.x= x;
		this.y= y;
		this.nume = nume;
	}
	
	
	public String toString()
	{
		return nume+": " + x + " " + y;
	}
	
	public Punct getAsignat() {
		return asignat;
	}


	public void setAsignat(Punct asignat) {
		this.asignat = asignat;
	}
	
	public double distanta(Punct punct)
	{
		return Math.abs(this.x-punct.x) + Math.abs(this.y-punct.y);
	}
	
	
	public Punct getMin(ArrayList<Punct> centroizi)
	{
		Punct min = centroizi.get(0);
		for(int i =0; i< centroizi.size(); i++ )
		{
			if(this.distanta(centroizi.get(i))<this.distanta(min))
			{
				min = centroizi.get(i);
			}
		}
		return min;
	}

}
