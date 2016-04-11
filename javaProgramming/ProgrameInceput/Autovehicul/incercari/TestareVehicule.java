package incercari;

import auto.Camion;
public class TestareVehicule

{
	public static void main(String[] args) {
		Camion Roman = new Camion();
		System.out.println("camionul are culoarea "+Roman.culoarea());
		Roman.Utilizare();
	}
}
