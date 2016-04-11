package mainPack;

public abstract class Functie 
{
	public int[] v = null;
	
	public void setVector (int[] v)
	{
		this.v = v;
	}
	public abstract int  executa();

}
