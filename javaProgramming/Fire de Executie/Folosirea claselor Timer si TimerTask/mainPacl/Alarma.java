package mainPacl;

import java.util.TimerTask;

public class Alarma extends TimerTask
{
	public String mesaj;
	Alarma (String mesaj)
	{
		this.mesaj = mesaj;
	}


	public void run()
	{
		System.out.println(mesaj);
		
	}

}
