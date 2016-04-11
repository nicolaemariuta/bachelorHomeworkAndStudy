package tipuripersoane;

import java.util.Scanner;

import claseleabstrace.Student;

public  class StudentLicenta extends Student{

	public StudentLicenta(String a) {
		super(a);
		nume = a;
		
	}
	public void venit ()
	{
		System.out.println("Studentul "+nume+" are o bursa de "+bursa+"lei");
		
	}

}
