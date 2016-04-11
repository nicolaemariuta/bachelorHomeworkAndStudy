package mainPack;

public class ListaD
{
	int data;
	ListaD next;
	ListaD prev;
	
	
	public ListaD(int data,ListaD next, ListaD prev )
	{
		this.data = data;
		this.next = next;
		
	}
	
	public int getData()     
	{
		return data;
	}
	
	public ListaD getNext()
	{
		return next;
	}
	
	public ListaD getPrev()
	{
		return prev;
	}
	
	public void setData (int newData)    
    {
        data = newData;
    }
	
	

	 public void AddNodeAfter(int element)
	    {
	        next = new ListaD(element,next,prev);
	       
	    }
	 
	 public void AddNodeBefore(int element)
	    {
	        prev = new ListaD(element,next,prev);
	       
	    }
	 
	 
	 
	 public void DeleteAfterAnElement(int dataVal, ListaD start)
	    {
		 ListaD prev = start;
		 ListaD iterator = start;
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
	 
	 
	 public void DeleteBeforeAnElement(int dataVal, ListaD start)
	    {
		 ListaD next = start;
		 ListaD iterator = start;
	        do
	        {
	            if (iterator.data == dataVal)
	            {
	                next = iterator.prev;
	                break;
	            }
	            iterator=iterator.prev;
	        }
	        while(iterator!=null);
	        iterator.prev = prev.prev;
	    }
	 
	 public void InsertAfterAnElement(int dataVal, ListaD start, int newVal)
	    {
		 ListaD tmp = new ListaD(newVal,null,null);
		 ListaD prev = start;
		 ListaD iterator = start;
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
	 
	 public void InsertBeforeAnElement(int dataVal, ListaD start, int newVal)
	    {
		 ListaD tmp = new ListaD(newVal,null,null);
		 ListaD prev = start;
		 ListaD iterator = start;
	        do
	        {
	            if (iterator.data == dataVal)
	            {
	                prev = iterator.prev;
	                break;
	            }
	            iterator=iterator.prev;
	        }
	        while(iterator!=null);
	        tmp.prev = prev;
	        iterator.prev = tmp;
	    }


}
