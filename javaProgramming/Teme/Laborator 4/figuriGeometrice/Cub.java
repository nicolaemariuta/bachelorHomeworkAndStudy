package figuriGeometrice;

public class Cub extends FiguraGeometrica
{

	Punct punctMijloc;
	Punct margine;
	
	public Cub(Punct punctMijloc, Punct margine )
	
	{
		super("Cub");
		this.punctMijloc  = punctMijloc;
		this.margine = margine;
	}
	
	
	public double lungimeLatura()
	{
		double d = Punct.distanta(margine, punctMijloc);
		
		double latura = d/Math.sqrt(3);
		return latura;
	}

	
	



	public double volumul()
	{
	
		return this.lungimeLatura()*3;
	}



	public Punct centrulGreutate()
	{

		return punctMijloc;
	}


	public double ariaTotala() 
	{
		return this.lungimeLatura()*this.lungimeLatura()*6;
	}

}
