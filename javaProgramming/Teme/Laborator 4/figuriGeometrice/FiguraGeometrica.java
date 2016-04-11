package figuriGeometrice;

public abstract class FiguraGeometrica

{
	String nume;
	public FiguraGeometrica(String nume)
	{
		this.nume = nume;
	}
	public abstract double ariaTotala();
	public abstract double volumul();
	public abstract Punct centrulGreutate();
}
