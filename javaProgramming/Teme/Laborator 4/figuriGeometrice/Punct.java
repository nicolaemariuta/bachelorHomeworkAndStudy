package figuriGeometrice;



public class Punct 
{
	



	double x;
	double y;
	double z;
	
	Punct(double x, double y, double z)
	{
		this.x = x;
		this.y = y;
		this.z = x;
	}
	
	Punct()
	{
		x = 0;
		y = 0;
		z = 0;
		
	}
	
	
	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return y;
	}

	public void setY(double y) {
		this.y = y;
	}

	public double getZ() {
		return z;
	}

	public void setZ(double z) {
		this.z = z;
	}
	
	
	
	public static double distanta(Punct a, Punct b)
	{
		double x1 = a.getX();
		double y1 = a.getY();
		double z1 = a.getZ();
		
		double x2 = b.getX();
		double y2 = b.getY();
		double z2 = b.getZ();
		
		double d = Math.abs(x2-x1)+Math.abs(y2-y1)+Math.abs(z2-z1);
		
		return d;
	}
	public static void afisarePunct (Punct a)
	{
		System.out.println("X= " + a.getX());
		System.out.println("Y= " + a.getY());
		System.out.println("Z= " + a.getZ());
	}
	

}
