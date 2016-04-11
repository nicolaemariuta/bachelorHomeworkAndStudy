package programZilnic;
import java.util.*;

public class Program
{
	Stack<Ora> program;
	
	Program()
	{
		
		program = new Stack<Ora>();
	}
	
	public void setareProgram()
	{
		
		for (int i = 0; i < 25; i++)
		{
			Scanner k = new Scanner(System.in);
			System.out.println("Scrie ce faci la ora "+ i);
			String actiune = k.next();
			Ora ora = new Ora(i,actiune);
			program.push(ora);
		}

	
	}
	
	public void afisare()
	{
		for (int i =0; i< program.size(); i++)
		{
			Ora ora = program.get(i);
			System.out.println("La ora "+ ora.ora+ " tu: "+ ora.actiune);
		}
	}
	
	public void taiere (int i )
	{
		
		for(int j = 0; j< i; j++)
		{
			program.remove(0);
			
		}
		

	}
	

}
