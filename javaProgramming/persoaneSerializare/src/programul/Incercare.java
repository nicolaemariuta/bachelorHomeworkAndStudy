package programul;

import java.io.*;
import java.util.*;

import tipuripersoane.Manager;
import tipuripersoane.Muncitor;
import tipuripersoane.Secretar;
import tipuripersoane.StudentLicenta;
import tipuripersoane.StudentMasterand;
import claseleabstrace.Persoane;

public class Incercare {

	public static void main(String[] args) {
		
		
		
		try
		{
			Persoane [] vector = new Persoane[5];
			Scanner tastatura = new Scanner(System.in);
			String name;
			
			System.out.println("introduceti numele Studentului Licenta");
			name = tastatura.next();
			StudentLicenta student1 = new StudentLicenta(name);
			student1.setBursa(2000);
			vector [0] = student1;
			
			System.out.println("introduceti numele Studentului Masterand");
			name = tastatura.next();
			StudentMasterand student2 = new StudentMasterand(name);
			student2.setBursa(3000);
			vector [1] = student2;
			
			System.out.println("introduceti numele Managerului");
			name = tastatura.next();
			Manager angajat1 = new Manager (name);
			angajat1.setSalariu(6000);
			angajat1.setBonus(2000);
			vector[2]=angajat1;
			
			System.out.println("introduceti numele Secretarului");
			name = tastatura.next();
			Secretar angajat2 = new Secretar (name);
			angajat2.setSalariu(5000);
			vector[3]=angajat2;
			
			System.out.println("introduceti numele Muncitorului");
			name = tastatura.next();
			Muncitor angajat3 = new Muncitor(name);
			angajat3.setSalariu(2500);
			vector[4]=angajat3;
			
			
			ObjectOutputStream file = new ObjectOutputStream (new FileOutputStream("C:\\Users\\npiulitza\\Desktop\\persoane\\aparate.txt"));
			
			
			file.writeObject(vector);
			file.close();
			
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
		
	
	}

}
