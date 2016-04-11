package sortareNumere;

public class SortareSelectie extends Thread
{
	FereastraPrincipala fp;
	
	SortareSelectie(FereastraPrincipala fp)
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
		
		for ( int i = 0; i< fp.array.length-1; i++)
		{
			cuvant = "";
		
			
			int minx = fp.array[i];
			int minj = i;
			
			for(int j = i; j<fp.array.length; j++)
			{
				
				if(fp.array[j]<minx)
				{
					minx = fp.array[j];
					minj = j;
				}
				
			}
			
			fp.array[minj] = fp.array[i];
			fp.array[i] = minx;
			
			

			for(int k = 0; k < fp.array.length; k++)
			{
				cuvant = cuvant + fp.array[k]+ "   ";
			}
			
			System.out.println("cuvant= " +  cuvant);
			
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
