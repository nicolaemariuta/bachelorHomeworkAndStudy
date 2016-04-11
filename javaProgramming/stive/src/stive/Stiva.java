package stive;

import java.util.ArrayList;

public class Stiva {
	
	ArrayList<String> prop;
	public Stiva()
	{
		prop = new ArrayList<String>();
	}
	
	public void enqueue (String N)
	{
		prop.add(N);
		
	}
	public String dequeue ()
	{
		if (size()>0)
		{
		String A= prop.get(0);
		prop.remove(0);
		return A;
		}
		else return null;
		
		
	}
	public int size()
	{
		return prop.size();
		
	}
	public boolean isEmpty()
	{
		return size() == 0;
	}
	
	public String afisare(int i)
	{
		return prop.get(i);
	}

}
