package gradientul;

public class TestareGradient
{

	public static void grad() {
		double con = 0.01;// se alege constanta de invatare c = 0.01
		double xn = Math.random();// x0 se alege aleator
		double xn1, modificari = 0;
		int counter = 0;
		do {
			xn1 = xn - con * 12 * (xn - 1);// 12(x-1)
			modificari = Math.abs(xn1 - xn);
			xn = xn1;
			counter++;
		} while (modificari > 0.00001);// modificarea componentelor lui xo
		System.out.println("S-a gasit rezultatul " + xn + " dupa " + counter
				+ " iteratii.");
	}

	public static void gradg() {
		double con = 0.01;// se alege constanta de invatare c = 0.01
		double xn = Math.random();// x0 se alege aleator
		double yn = Math.random();// y0 se alege aleator
		double xn1, yn1, modificari1, modificari2 = 0;
		int counter = 0;
		do {
			xn1 = xn - con * 2 * xn;// 2x
			modificari1 = Math.abs(xn1 - xn);
			yn1 = yn - con * 4 * yn;// 4x
			modificari2 = Math.abs(yn1 - yn);
			xn = xn1;
			yn = yn1;
			counter++;
		} while ((modificari1 > 0.00001) && (modificari2 > 0.00001));// modificarea componentelor lui xo si y0
		System.out.println("S-a gasit rezultatul " + xn + " si " + yn
				+ " dupa " + counter + " iteratii.");
	}

	public static void gradh() {
		double con = 0.01;// se alege constanta de invatare c = 0.01
		double xn = 2;
		double yn = 23;
		double xn1, yn1, modificari1, modificari2 = 0;
		int counter = 0;
		do {
			xn1 = xn - con * 202 * xn - 200 * (yn * yn) - 2;// 202x-200y^2-2
			xn = xn1;
			modificari1 = Math.abs(xn1 - xn);
			yn1 = yn - con * 400 * yn * ((yn * yn) * xn);// 400y(y^2-x)
			yn = yn1;
			modificari2 = Math.abs(yn1 - yn);
			counter++;
		} while ((modificari1 > 0.00000001) && (modificari2 > 0.00000001));// modificarea componentelor lui xo si y0

		System.out.println("S-a gasit rezultatul " + xn + " si " + yn
				+ " dupa " + counter + " iteratii.");
	}

	public static void main(String[] args) {

		Gradient.gradient1();   //Pentru functia: f(x) = 6x^2-12x+1
		Gradient.gradient2();   //Pentru functia: g(x,y) = x^2+2y^2
		Gradient.gradient3();   //Pentru functia: h(x,y) = (1-x)^2+100(x-y^2)^2
	}

}
