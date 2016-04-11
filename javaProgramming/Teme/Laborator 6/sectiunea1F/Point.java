
package sectiunea1F;
import java.util.ArrayList;

public class Point
{
	public int x;
	public int y;
	
	Point (int x, int y)
	{
		this.x = x;
		this.y = y;
	}
	
	public boolean equals(Object o)
	{
		if (!(o instanceof Point))
			return false;
		
		Point pt = (Point)o;
		return ((pt.x == this.x) && (pt.y == this.y));
	}
	
	public int hashCode()
	{
		return 17*this.x + 23*this.y + 43;
	}
	public String toString()
	{
		return "x = " +x+ " y = " +y + " id = "+ hashCode ()+ "\n";
	}

}
