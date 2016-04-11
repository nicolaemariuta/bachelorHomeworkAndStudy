package mainPack;

import javax.swing.AbstractListModel;

public class Model2 extends AbstractListModel{


	public Object getElementAt(int index) 
	{
	
		return Fereastra5.data2[index];
	}


	public int getSize()
	{

		return Fereastra5.data2.length;
	}

}
