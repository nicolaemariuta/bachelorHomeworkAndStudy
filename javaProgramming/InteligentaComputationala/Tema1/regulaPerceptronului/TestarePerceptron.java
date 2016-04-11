package regulaPerceptronului;

public class TestarePerceptron {
	
	
	public static void main(String[] args) {
		
		double w[] = { 0, 1, 0 };
		double x1[] = { 2, 1, -1 };
		double x2[] = { 0, -1, -1 };
		double d1 = -1;
		double d2 = 1;
		double c = 0.1;
		
		Perceptron p = new Perceptron(w,c);
		IntrarePerceptron x0 = new IntrarePerceptron(x1, d1);
		IntrarePerceptron x00 = new IntrarePerceptron(x2, d2);
		
//		new Perceptrare(p, x0, x00).start();
//		p.printw();
	}

}
