
package listaDubluInlantuita;

public class Nod 
{
	private Nod next;
	private Nod prev;
	private int data;
	public Nod(int data, Nod next, Nod prev)
	{
	this.data = data;
	this.next = next;
	}
	
	public int getData ()
	{
	return data;
	}
	
	public Nod getNext ()
	{
	return next;
	}
	
	public Nod getPrev()
	{
		return prev;
	}
	
	public void setData (int newData)
	{
	data = newData;
	}
	
	public void setLink (Nod newNext)
	{
	next = newNext;
	}
	
	public void AddNodeAfter(int element)
	{
	next = new Nod(element,next,prev);
	}
	
	public void RemoveNodeAfter()
	{
	next = next.next;
	}
	public void RemoveNodeBefore()
	{
		prev = prev.prev;
	}
	public static Nod PositionInList (Nod start, int index) throws Exception
	{
	int i;
	Nod iterator;
	if (!(index>0)) throw new Exception("Index incorect!");
	iterator = start;
	for(i=1;(i<index && iterator!=null);i++)
	{
	iterator = iterator.next;
	}
	return iterator;
	}
	
	public static Nod SearchInList(Nod start, int target)
	{
	Nod iterator = start;
	for(;iterator!=null;iterator=iterator.next)
	{
	if (iterator.data == target)
	return iterator;
	}
	return null;
	}
	
	public String ListToString()
	{
	Nod iterator = this;
	StringBuffer str=new StringBuffer();
	for(;iterator!=null;iterator=iterator.next)
	{
	str.append(iterator.data);
	str.append(" ");
	}
	return str.toString();
	}
	public String toString()
	{
	return data +"";
	}

}
