package tipuripersoane;

import java.util.Scanner;

import claseleabstrace.Angajat;

public class Secretar extends Angajat{

	public Secretar(String a)
	{
		super(a);
		nume = a;
		
	}

	
	public void venit()
	{
		System.out.println("Secretarul"+nume+" are un salariu de "+salariu+"lei");
	}
	
	

}
