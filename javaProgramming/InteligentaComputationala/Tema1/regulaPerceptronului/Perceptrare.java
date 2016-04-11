package regulaPerceptronului;

import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.text.Document;

public class Perceptrare extends Thread {
	
	Perceptron p;
	IntrarePerceptron x1;
	IntrarePerceptron x2;
	double constInv;
	JTextPane afisare;
	
	Perceptrare(Perceptron p, IntrarePerceptron x1, IntrarePerceptron x2, JTextPane afisare)
	{
		this.p = p;
		this.x1 = x1;
		this.x2 = x2;
		this.constInv = p.getC();
		this.afisare = afisare;
		afisare.setText("");
	}
	
	public void run()
	{
		
		
		
		
		double o1 = x1.getSgn(p);     // iesire patern x1
//		System.out.println("o1= "+o1);
		
		
		double o2 = x2.getSgn(p);     // iesire patern x2
//		System.out.println("o2= "+o2);
		
		
		double suma1 = x1.sumaPonderata(p);    // suma ponderata ptr x1
//		System.out.println("net1= "+suma1);
		
		
		
		double suma2 = x2.sumaPonderata(p);    // suma ponderata ptr x2
//		System.out.println("net2= "+suma2);
		
		
		double ch = 0;
		
		int contor = 0;
		
		try
		{
			
			Document doc = afisare.getDocument();

		do {
			
			contor++;
			
			
		
			
			System.out.println("------------------PASUL " + contor+ "------------------");
			doc.insertString(doc.getLength(),"------------------PASUL " + contor+ "------------------", null);
			
			if (x1.getD() != o1) {//daca iesirea dorita difera de iesirea obtinuta , contor ia valoarea 1
				
				System.out.println(" Pentru patternul X1, iesirea obtinuta "
						+ o1 + " difera de iesirea dorita " + x1.getD()
						+ " deci , vom corecta valorile ponderile.");
				
				doc.insertString(doc.getLength(),"\n Pentru patternul X1, iesirea obtinuta "
						+ o1 + " difera de iesirea dorita " + x1.getD()
						+ " deci , vom corecta valorile ponderile.", null);
				
				ch = 1;
			} else {//daca iesirea dorita difera de iesirea obtinuta , contor ia valoarea 0
				
				
				
				System.out.println("Pentru patternul X1,  iesirea obtinuta "
						+ o1 + " NU difera de iesirea dorita " + x1.getD()
						+ " deci , vom pastra valorile ponderilor.");
				
				doc.insertString(doc.getLength(),"\n Pentru patternul X1,  iesirea obtinuta "
						+ o1 + " NU difera de iesirea dorita " + x1.getD()
						+ " deci , vom pastra valorile ponderilor.", null);
				
				ch = 0;
			}

			for (int i = 0; i < x1.getX().length; i++) {//calculeaza ponderea pe baza patternului x1(daca e nevoie)
				p.getW()[i] = p.getW()[i] + constInv * (x1.getD() - o1) * x1.getX()[i];
			}
			o1 = x1.getSgn(p);//iesirea obtinuta dupa modificarea ponderilor pe baza patternului x1
			
			
			double nt = suma1;//netul de la pasul precedent
			suma1 =  x1.sumaPonderata(p);//netul de la pasul curent
			
			
			if (ch == 0) {//afiseaza neturile curente si precedente(unde e cazul)
				System.out.print("Valoarea net este aceeasi : ");
				System.out.printf("%.2f", suma1);
				System.out.println();
				
				doc.insertString(doc.getLength(),"\n Valoarea net este aceeasi : " + suma1, null);
				
				
				
			} else {
				System.out.print("Valoarea net se schimba din ");
				System.out.printf("%.2f", nt);
				System.out.print(" in ");
				System.out.printf("%.2f", suma1);
				System.out.println();
				
				doc.insertString(doc.getLength(),"\n Valoarea net se schimba din " + nt + " in " + "%.2f"+ suma1, null);
				
				
				
			}

			if (x2.getD() != o2) {//daca iesirea dorita difera de iesirea obtinuta , contor ia valoarea 1
				System.out.println(" Pentru patternul X2, iesirea obtinuta "
						+ o2 + " difera de iesirea dorita " + x2.getD()
						+ " deci , vom corecta valorile ponderile.");
				ch = 1;
				doc.insertString(doc.getLength(),"\n Pentru patternul X2, iesirea obtinuta "
						+ o2 + " difera de iesirea dorita " + x2.getD()
						+ " deci , vom corecta valorile ponderile.", null);
				
				
			} else {//daca iesirea dorita difera de iesirea obtinuta , contor ia valoarea 0
				System.out.println("Pentru patternul X2,  iesirea obtinuta "
						+ o2 + " NU difera de iesirea dorita " + x2.getD()
						+ " deci , vom pastra valorile ponderilor.");
				
				doc.insertString(doc.getLength(),"\n Pentru patternul X2,  iesirea obtinuta "
						+ o2 + " NU difera de iesirea dorita " + x2.getD()
						+ " deci , vom pastra valorile ponderilor.", null);
				
				
				ch = 0;
			}

			for (int i = 0; i < x1.getX().length; i++) {//calculeaza ponderea pe baza patternului x2(daca e nevoie)
				p.getW()[i] = p.getW()[i] + constInv * (x2.getD() - o2) * x2.getX()[i];
			}
			o2 = x2.getSgn(p);//iesirea obtinuta dupa modificarea ponderilor pe baza patternului x2
			double nt2 = suma2;//netul de la pasul precedent
			suma2 = x2.sumaPonderata(p);//netul de la pasul curent
			if (ch == 0) {//afiseaza neturile curente si precedente(unde e cazul)
				System.out.print("Valoarea net este aceeasi : ");
				System.out.printf("%.2f", suma2);
				System.out.println();
				
				doc.insertString(doc.getLength(),"\n Valoarea net este aceeasi : "+ suma2, null);
				
				
				
			} else {
				System.out.print("Valoarea net se schimba din ");
				System.out.printf("%.2f", nt2);
				System.out.print(" in ");
				System.out.printf("%.2f", suma2);
				System.out.println();
				
				
				doc.insertString(doc.getLength(),"\n Valoarea net se schimba din " + nt2 + " in " + suma2, null);
			
			}
			Thread.sleep(5000);
			afisare.setText("");
			
		

		} while (o1 != x1.getD() || o2 != x2.getD());//conditia de oprire (iesirea dorita sa fie egala cu iesirea obtinuta)
		
		
		p.printw();
		
		
		double temp = 0;
	
		
		doc.insertString(doc.getLength(),"\n Valoarea ponderilor(dupa " + contor + " pasi)" + ": ", null);
		
		

		for (int i = 0; i < p.getW().length; i++) {
			temp = p.getW()[i];
			doc.insertString(doc.getLength(),"\n  w["+i+"]= " + String.valueOf(temp), null);
			
		}
		
		}
		catch(Exception ex) {}
		
		

	}
	
	

}
