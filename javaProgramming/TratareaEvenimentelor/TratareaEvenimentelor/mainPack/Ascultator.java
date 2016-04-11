package mainPack;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Ascultator implements ActionListener  {
private Fereastra f;
int n;


Ascultator(Fereastra f)
{
	this.f = f;
}
	
	public void actionPerformed(ActionEvent e)
	{
		
		
		if (e.getActionCommand()=="Cancel")
		{
			System.exit(0);
			
		}
		if (e.getActionCommand()== "Schimba")
		{
			f.setBackground(Color.RED);
		}
		if (e.getActionCommand()=="OK")
		{
			n++;
			f.setTitle("ati apasat "+e.getActionCommand()+" de "+n+" ori!");
		}
		
	}

}
