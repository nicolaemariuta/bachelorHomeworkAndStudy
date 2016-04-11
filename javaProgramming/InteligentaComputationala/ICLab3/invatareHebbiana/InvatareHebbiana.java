package invatareHebbiana;

public class InvatareHebbiana

{
	
	public static void main(String[] args) {

		System.out.println("Exercitiul 1");
	
		double x1[] = {1, -2, 1.5, 0};
		double x2[] = {1, -0.5, -2, -1.5};
		double x3[] = {0, 1, -1, 1.5};
		double w1[] = {1, -1, 0, 0.5};
		//
		Neuron n1 = new Neuron(w1);
		n1.hebb(x1);    // pas1
		n1.hebb(x2);    // pas2
		n1.hebb(x3);    // pas3
		System.out.println(n1.toString());
		
		
		
		
		
		
		
		
		
		
		System.out.println("exercitiul 2");


		double w10[] = {1, -1};
		double x11[] = {1, -2};
		double x12[] = {0, 1};
		double x13[] = {2, 3};
		double x14[] = {1, -1};
		//
		n1.w = w10;
		n1.hebb(x11);
		n1.hebb(x12);
		n1.hebb(x13);
		n1.hebb(x14);
		System.out.println(n1.toString());

	}

}
