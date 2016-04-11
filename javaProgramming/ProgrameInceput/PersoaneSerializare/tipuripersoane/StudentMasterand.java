package tipuripersoane;

import java.util.Scanner;

import claseleabstrace.Student;

public class StudentMasterand extends Student {

	public StudentMasterand(String a) {
		super(a);
		nume =a;
	}

	
	public void venit() {
		System.out.println("Studentul Masterand "+nume+" are o bursa de "+bursa+"lei");
	}

}
