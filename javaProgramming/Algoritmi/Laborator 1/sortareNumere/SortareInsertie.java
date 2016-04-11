package sortareNumere;

public class SortareInsertie extends Thread
{
	
	FereastraPrincipala fp;
	
	
	SortareInsertie(FereastraPrincipala fp)
	{
		this.fp = fp;
	}
	
	
	public void run()
	{
		String cuvant = "";
		fp.setTitle("Sorteaza");
		for(int i = 0; i < fp.array.length; i++)
		{
			cuvant = cuvant + fp.array[i] + "   ";
		}
		fp.lblNewLabel.removeAll();
		fp.lblNewLabel.setText(cuvant);
		
		try
		{
			Thread.sleep(1000);
		}
		catch(InterruptedException E)
		{
			E.printStackTrace();
		}
		
		for ( int i = 1; i< fp.array.length; i++)
		{
			cuvant = "";
			int x = fp.array[i];
			int j = i-1;
			
				while(j>=0 && x<fp.array[j])
				{
					fp.array[j+1] = fp.array[j];
					j = j-1;
				}
				
			fp.array[j+1] = x;
			
			
			for(int k = 0; k < fp.array.length; k++)
			{
				cuvant = cuvant + fp.array[k]+ "   ";
			}
			
			
			fp.lblNewLabel.setText(cuvant);
		
			
			try
			{
				Thread.sleep(1000);
			}
			catch(InterruptedException E)
			{
				E.printStackTrace();
			}	
		}
		System.out.println("Sortarea s-a terminat");
		
		
		
	}

}
