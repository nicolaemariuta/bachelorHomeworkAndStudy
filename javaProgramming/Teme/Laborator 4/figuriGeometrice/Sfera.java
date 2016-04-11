package figuriGeometrice;

public class Sfera extends FiguraGeometrica
{
	Punct mijloc;
	Punct margine;

	public Sfera(Punct mijloc, Punct margine)
	{
		super("Sfera");
		this.margine = margine;
		this.mijloc = mijloc;
	}
	public double razaSfera()
	{
		return Punct.distanta(margine, mijloc);
	}

	public double ariaTotala()
	{
	
		return 4*Math.PI*this.razaSfera()*this.razaSfera();
	}


	public double volumul() 
	{
		
		return (4*Math.PI*this.razaSfera()*this.razaSfera()*this.razaSfera())/3;
	}

	public Punct centrulGreutate()
	{
		return this.mijloc;
	}



}
