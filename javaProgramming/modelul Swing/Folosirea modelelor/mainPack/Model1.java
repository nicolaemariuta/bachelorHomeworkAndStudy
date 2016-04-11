package mainPack;

import javax.swing.*;

public class Model1 extends AbstractListModel
{


	public Object getElementAt(int index) {

		return Fereastra5.data1[index];
	}


	public int getSize() {

		return Fereastra5.data1.length;
	}

}
