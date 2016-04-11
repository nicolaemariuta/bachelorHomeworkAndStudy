package claseleabstrace;

import java.io.Serializable;

public abstract class Persoane implements Serializable {
	
	public String nume;
	Persoane (String a)
	{
		nume = a;
	}
	public String getNume ()
	{
		return nume;
	}
	public abstract void venit();

}
