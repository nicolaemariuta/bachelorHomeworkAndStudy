package mainPack;

import java.awt.*;


public class Afisare {
	

	public static void main(String[] args) {
		Panel f = new Panel();
		GridBagLayout gbl = new GridBagLayout() ;
		GridBagConstraints gbc = new GridBagConstraints();
		gbc.weightx = 1;
		gbc.weighty = 1;
		gbc.insets= new Insets(5,5,5,5);
		
		f.setLayout(gbl);
		Label mesaj = new Label ("Evidenta Persoane", Label.CENTER);
		mesaj.setFont(new Font("Arial", Font.BOLD,24));
		mesaj.setBackground(Color.magenta);
		gbc.fill = GridBagConstraints.BOTH;
		TestGrid.adauga(f,gbc,gbl,mesaj,0,0,4,2);
		
		Label etNume = new Label ("Nume:");
		gbc.fill = GridBagConstraints.NONE;
		gbc.anchor = GridBagConstraints.EAST;
		TestGrid.adauga(f,gbc,gbl,etNume, 0, 2, 1, 1);
		
		Label etSalariu = new Label ("Salariu:");
		TestGrid.adauga(f,gbc,gbl,etSalariu, 0, 3, 1, 1);
		
		TextField nume = new TextField ("", 30);
		gbc.fill = GridBagConstraints.HORIZONTAL;
		gbc.anchor = GridBagConstraints.CENTER;
		TestGrid.adauga(f,gbc,gbl,nume, 1, 2, 2, 1);
		
		TextField salariu = new TextField("",30);
		TestGrid.adauga(f,gbc,gbl,salariu, 1, 3, 2, 1);
		
		Button adaugare = new Button ("Adaugare");
		gbc.fill = GridBagConstraints.NONE;
		TestGrid.adauga(f,gbc,gbl,adaugare, 3, 2, 1, 2);
		
		Button salvare = new Button ("Salvare");
		gbc.fill = GridBagConstraints.HORIZONTAL;
		TestGrid.adauga(f,gbc,gbl,salvare, 1, 4, 1, 1);
		
		Button iesire = new Button ("Iesire");
		TestGrid.adauga(f,gbc,gbl,iesire, 2, 4, 1, 1);
		
		
		f.setVisible(true);
		
		
		
	}

}
