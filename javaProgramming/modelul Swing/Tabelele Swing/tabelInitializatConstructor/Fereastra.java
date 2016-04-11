package tabelInitializatConstructor;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.*;

public class Fereastra extends JFrame 
{
	Fereastra (String titlu)
	{
		super(titlu);
		setSize(400,400);

		
		String[] coloane = {"Nume", "Varsta", "Student"};
		Object[][] elemente = {{"Ionescu", new Integer(20), Boolean.TRUE}, {"Popescu", new Integer(80), Boolean.FALSE}};
		JTable tabel = new JTable(elemente,coloane);
		getContentPane().add(tabel, BorderLayout.CENTER);
		
	
		
		
	}
	

}
