package figurileGeometrice;

public class Sfera extends Cerc {
	
	
	
	
	
	public double arieCerc()
	{
		return 4*PI*Raza*Raza;
	}
	
	public double volumCerc()
	{
		return (arieCerc()*Raza)/3;
	}
	

}
