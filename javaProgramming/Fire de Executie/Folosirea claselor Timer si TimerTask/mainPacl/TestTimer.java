package mainPacl;

import java.util.*;
import java.util.Timer;
import java.util.TimerTask;

public class TestTimer 
{
	public static void main(String[] args) 
	{
		// setam o actiune repetitiva cu rata fixa
		final Timer t1 = new Timer();
		t1.scheduleAtFixedRate(new Atentie(), 0, 1*1000);
		
		// folosim o clasa anonima prentru o alta actiune
		Timer t2 = new Timer();
		t2.schedule(new TimerTask()
		{
			public void run()
			{
				System.out.println("S-au scurs 10 secunde!!!");
				// oprim primul timer
				t1.cancel();
			}
			
		},10*1000);
		
		// setam o actiune pentru ora 22:30
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 18);
		calendar.set(Calendar.MINUTE,33);
		calendar.set(Calendar.SECOND,0);
		Date ora = calendar.getTime();
		
		Timer t3 = new Timer();
		t3.schedule(new Alarma("Toti copii la culcare!!"), ora);
		
		
	}

}
