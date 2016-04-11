package mainPack;
import java . awt .*;

public class TestGrid {
	static Panel f;
	static GridBagConstraints gbc;
	static GridBagLayout gbl;
	
	static void adauga (Panel f, GridBagConstraints gbc,GridBagLayout gbl ,Component comp, int x, int y, int w, int h )
	{
		gbc.gridx=x;
		gbc.gridy=y;
		gbc.gridheight = h;
		gbc.gridwidth = w;
		gbl.setConstraints(comp, gbc);
		f.add(comp);
	}
}


