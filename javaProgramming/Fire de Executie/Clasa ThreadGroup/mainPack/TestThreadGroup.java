package mainPack;

import java.awt.Frame;

public class TestThreadGroup
{
	static class Dummy implements Runnable
	{


		public void run()
		{
			while(true)
			{
				Thread.yield();
			}

			
		}
		
	}
	
	public static void main(String[] args)
	{
		// cream o fereastra pentru a fi create 
		//automat firele de executie din AWT
		Frame f = new Frame ("Test");
		
		//Cream un fir propriu
		new Thread(new Dummy(), "Fir test").start();
		
		// obtinem o referinta la grupul curent
		Thread firCurent = Thread.currentThread();
		ThreadGroup grupCurent = firCurent.getThreadGroup();
		
		//aflam numarul firelor de executie active
		int n = grupCurent.activeCount();
		
		
		// enumeram firele din grup
		Thread[] lista = new Thread[n];
		grupCurent.enumerate(lista);
		
		
		// le afisam
		for (int i =0; i<n; i++)
		{
			System.out.println("Thread #"+ i+ " = " + lista[i].getName());
		}
		
		
		
	}

}
