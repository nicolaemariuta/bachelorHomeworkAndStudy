package testare;
import java.io.*;
import claseleabstrace.Persoane;

public class Deserializarea {
public static void main(String[] args) {
	
	Persoane[] vector = new Persoane [5];
	
	try
	{
		ObjectInputStream fisier = new ObjectInputStream ( new FileInputStream("C:\\Users\\npiulitza\\Desktop\\persoane\\aparate.txt"));
		vector = (Persoane[]) fisier.readObject();
	
		fisier.close();
		for (int i =0; i< vector.length;i++)
		{
			vector[i].venit();
		}
		
		
		
	}
	catch (Exception e)
	{
		System.out.println(e);
	}
	
	
	
}
}
