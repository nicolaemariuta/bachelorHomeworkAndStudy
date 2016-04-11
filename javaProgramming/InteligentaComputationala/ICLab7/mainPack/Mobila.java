package mainPack;

public class Mobila {
	
	int lungime;
	int latime;
	String nume;
	
	public String getNume() {
		return nume;
	}

	public void setNume(String nume) {
		this.nume = nume;
	}

	Mobila(int lungime, int latime)
	{
		this.lungime = lungime;
		this.latime = latime;
	}
	
	public int getLungime() {
		return lungime;
	}

	public void setLungime(int lungime) {
		this.lungime = lungime;
	}

	public int getLatime() {
		return latime;
	}

	public void setLatime(int latime) {
		this.latime = latime;
	}
	
	public static double getDelta(Mobila w, Mobila x)
	{
		return Math.sqrt((Math.pow(w.lungime-x.lungime, 2)) + (Math.pow(w.latime-x.latime, 2)));
			}
	
	
	public String toString()
	{
		if(nume != null)
		{
		return nume+" are lungimea " + lungime + " si latimea " + latime;
		}
		else return " are lungimea " + lungime + " si latimea " + latime;
		
					}


}
