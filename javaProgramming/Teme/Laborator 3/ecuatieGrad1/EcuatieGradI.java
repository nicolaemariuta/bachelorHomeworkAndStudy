package ecuatieGrad1;

public class EcuatieGradI
{
	double a;
	double b;
	
	public EcuatieGradI(int a, int b)
	{
		this.a = a;
		this.b = b;
	}
	
	public void afisareEcuatie()
	{
		System.out.println(a+"* x + "+  b+ "=0 ");
	}
	public double solutieEcuatie()
	{
		return -b/a;
	}

}
