package location;

public class Location implements Cloneable
{
  private double x;
  private double y;
  
  public Location (double xInitial, double yInitial)
  {
    x = xInitial;
    y = yInitial;
  }
  
  public Object clone ()
  {
    Location answer;
    
    try
    {
      answer = (Location)super.clone ();
    }
    catch( CloneNotSupportedException e)
    {
      throw new RuntimeException ("class not cloneable");
    }
    
    return answer;
  }	
  
  public static double distance (Location p1, Location p2)
  {
    double a, b, c_squared;
    
    // prevent null reference
    if( (p1 == null) || (p2 == null) )
      return Double.NaN;

    // calculate distance
    a = p1.x - p2.x;
    b = p1.y - p2.y;
    c_squared = a * a + b * b;

    return Math.sqrt (c_squared);
  }
  
  public boolean equals (Object obj)
  {
    if( obj instanceof Location )
    {
      Location candidate = (Location)obj;
      return (candidate.x == x) && (candidate.y == y);
    }
    else
      return false;
  }
  
  public double getX () { return x; }
  
  public double getY () { return y; }
  
  public static Location midpoint (Location p1, Location p2)
  {
    double xMid, yMid;
    
    if ( (p1 == null) || (p2 == null) )
      return null;
      
    xMid = (p1.x + p2.x) / 2;
    yMid = (p1.y + p2.y) / 2;
    
    Location answer = new Location (xMid, yMid);
    return answer;
  }
  
  public void rotate90 ()
  {
    double xNew = y;
    double yNew = -x;
    x = xNew;
    y = yNew;
  }
  
  public void shift (double xAmount, double yAmount)
  {
    x += xAmount;
    y += yAmount;
  }
  
  public String toString ()
  {
    return "(x=" + x + " y=" + y + ")";
  }
  
  
}
