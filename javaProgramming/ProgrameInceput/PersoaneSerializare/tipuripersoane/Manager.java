package tipuripersoane;

import java.util.Scanner;

import claseleabstrace.Angajat;

public class Manager extends Angajat {
	
	private double bonus;

	public Manager(String a) 
	{
		super(a);
		nume = a;
	}

	
	
	
	public void setBonus (double x)
	{
		bonus = x;
	}
	
public void venit() {
	System.out.println("Managerul "+nume+" are un salariu de "+(salariu+bonus)+"lei");;
		
	}
}
