package tipuripersoane;

import claseleabstrace.Angajat;

public class Muncitor extends Angajat{

	public Muncitor(String a) {
		super(a);
		nume = a;
	}

	
	public void venit() {
		System.out.println("Muncitorul"+nume+" are un salariu de "+salariu+"lei");
		
	}

}
