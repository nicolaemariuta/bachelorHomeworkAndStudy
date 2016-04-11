package mainPack;

public class ListaS
{
	int data;
	ListaS next;
	
	
	public ListaS(int data,ListaS next )
	{
		this.data = data;
		this.next = next;
		
	}
	
	public int getData()     
	{
		return data;
	}
	
	public ListaS getNext()
	{
		return next;
	}
	
	public void setData (int newData)    
    {
        data = newData;
    }
	
	 public void AddNodeAfter(int element)
	    {
	        next = new ListaS(element,next);
	       
	    }
	 
	 public void DeleteAfterAnElement(int dataVal, ListaS start)
	    {
		 ListaS prev = start;
		 ListaS iterator = start;
	        do
	        {
	            if (iterator.data == dataVal)
	            {
	                prev = iterator.next;
	                break;
	            }
	            iterator=iterator.next;
	        }
	        while(iterator!=null);
	        iterator.next = prev.next;
	    }
	 
	 public String ListToString()
	    {
		 ListaS iterator = this;
	        StringBuffer str=new StringBuffer();
	        for(;iterator!=null;iterator=iterator.next)
	        {
	            str.append(iterator.data);
	            str.append(" ");
	        }
	        return str.toString();
	    }
	     
	
	 
	 public void InsertAfterAnElement(int dataVal, ListaS start, int newVal)
	    {
		 ListaS tmp = new ListaS(newVal,null);
		 ListaS prev = start;
		 ListaS iterator = start;
	        do
	        {
	            if (iterator.data == dataVal)
	            {
	                prev = iterator.next;
	                break;
	            }
	            iterator=iterator.next;
	        }
	        while(iterator!=null);
	        tmp.next = prev;
	        iterator.next = tmp;
	    }
	 
	  public String toString()
	     {
	         return data +" ";
	     }
	
	

}
