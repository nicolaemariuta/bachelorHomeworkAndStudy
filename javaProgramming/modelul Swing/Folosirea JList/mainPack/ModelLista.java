package mainPack;

import javax.swing.*;

public class ModelLista extends AbstractListModel
{
	String[] elemente = {"Unu", "Doi", "Trei", "Patru", "Cinci"}; 

	public Object getElementAt(int index)
	{

		return elemente[index];
	}


	public int getSize()
	{

		return elemente.length;
	}
	

}
