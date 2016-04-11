
package sectiunea1F;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class Multimi
{
	public static void main(String[] args)
	{
		HashSet set = new HashSet();
		
		
		// adaug in multime
		set.add(new Point(1,2));
		set.add(new Point(2,1));
		set.add("c");
		
		//sterg un element din multime
		set.remove("c");
		
		// adaug un element ce exista deja
		set.add(new Point(1,2));
		
		
		// fara a avea insa efect
		int size = set.size();
		System.out.println(size);
		
		// verificam daca un element este deja in multime
		boolean b = set.contains(new Point(2,1));  //true
		System.out.println(b);
		
		b = set.contains("c"); // false
		System.out.println(b);
		
		// parcurgem multimea
		Iterator it = set.iterator();
		while(it.hasNext())
		{
			// si afisam elementele
			Object element = it.next();
			System.out.println(element);
		}
		
	}

}
