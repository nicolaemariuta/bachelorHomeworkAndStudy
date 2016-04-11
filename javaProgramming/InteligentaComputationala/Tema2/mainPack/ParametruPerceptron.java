package mainPack;

import java.util.ArrayList;
import java.util.Arrays;



public class ParametruPerceptron {
	int[] cod;
	double fi=0;
	double pi=0;
	
	double valoare;
	
	public ParametruPerceptron(int[] cod)
	{
		this.cod = cod;
	}
	
	public String toString()
	{
		String cd = "";
		
		for(int i=0; i<cod.length; i++)
		{
			cd = cd+cod[i];
		}
		
		return cd;
	}
	
	public int getInt()    // fiecare  w este transformat in numar de la -8 la 8
	{
		int nr = 0;
		int index = 0;
		
		for(int i= getCod().length-1; i>-1; i-- )
		{
		//	System.out.println(nr);
			nr = nr +  getCod()[i]*(int)(Math.pow(2,index));
			index++;
			
		}
		
		return nr-8;
	}
	
	
	public void evaluare(Intrare x, Intrare d, int index)     
	{
		
	     valoare = Math.abs(this.getInt()*x.getX()[index] - d.getX()[index]);
	}
	
	

	
	
	
	
	
	
	
	public int[] getCod() {
		return cod;
	}

	public void setCod(int[] cod) {
		this.cod = cod;
	}

	public double getFi() {
		return fi;
	}

	public void setFi(double fi) {
		this.fi = fi;
	}

	public double getPi() {
		return pi;
	}

	public void setPi(double pi) {
		this.pi = pi;
	}



	public double getValoare() {
		return valoare;
	}

	public void setValoare(double valoare) {
		this.valoare = valoare;
	}

	
	
	
	

}
