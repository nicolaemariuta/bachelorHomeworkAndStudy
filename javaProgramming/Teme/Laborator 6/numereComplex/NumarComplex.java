
package numereComplex;


public class NumarComplex 
{
	int arg;
	int rez;
	
	NumarComplex(int arg, int rez)
	{
		this.arg = arg;
		this.rez = rez;
	}
	
	public String toString()
	{
		return arg+ "+"+ rez+"*j";
	}
	public static NumarComplex adunare(NumarComplex n1, NumarComplex n2)
	{
		int args = n1.arg+n2.arg;
		int rezs = n1.rez+ n2.rez;
		NumarComplex suma = new NumarComplex(args,rezs);
		return suma;
	}
	public boolean equals(Object o)
	{
		if (!(o instanceof NumarComplex))
			{
			return false;
			}
		NumarComplex nc = (NumarComplex)o;
		return((nc.arg == this.arg)&&(nc.rez == this.rez));
		
	}
	public int hashCode()
	{
		return 17*arg + 23*rez + 43;
	}

}
