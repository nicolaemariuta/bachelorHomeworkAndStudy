package ecuatieGrad1;

public class TectEc1 
{
	public static void main(String[] args)
	{
		EcuatieGradI e = new EcuatieGradI(4, 6);
		e.afisareEcuatie();
		System.out.println("Solutiile ecatiei sunt:" + e.solutieEcuatie());
	}

}
