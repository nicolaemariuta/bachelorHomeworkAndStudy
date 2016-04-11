
package listaDubluInlantuita;


public class NodDemo
{
	public static void main(String[] args)
	{
		
		Nod lista = new Nod(5,null,null);
		lista.AddNodeAfter(3);
		lista.AddNodeAfter(100);
		lista.AddNodeAfter(84);
		System.out.println(lista.getPrev());
		System.out.println(lista.toString());
	}

}
