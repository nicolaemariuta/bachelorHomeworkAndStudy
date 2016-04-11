package claseleabstrace;

public abstract class Student extends Persoane {
	
	
	public double bursa;
	
	
	protected Student(String a) {
		super(a);
		nume = a;
	}
	
	public void setBursa (double x)
	{
		bursa = x;
	}
	
	public double getBursa ()
	{
		return bursa;
	}
	
	
}
