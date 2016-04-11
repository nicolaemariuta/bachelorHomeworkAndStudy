package mainPack;

public class Conexiuni {
	
	
	public double[][] w = new double[3][3];
	
	
	Conexiuni()
	{
		for(int i =0; i < 3; i++)
		{
			for(int j = 0; j < 3; j++)
			{
				w[i][j] = (Math.random()*2)-1;
			}
		}
	}
	
	
	

}
