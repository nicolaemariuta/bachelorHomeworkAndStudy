package mainPack;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import net.sf.javaml.clustering.Clusterer;
import net.sf.javaml.clustering.KMeans;
import net.sf.javaml.core.Dataset;
import net.sf.javaml.core.DefaultDataset;
import net.sf.javaml.core.DenseInstance;
import net.sf.javaml.core.Instance;
import net.sf.javaml.distance.DistanceMeasure;

import uk.ac.shef.wit.simmetrics.similaritymetrics.JaroWinkler;

import de.umass.lastfm.Artist;
import de.umass.lastfm.CallException;
import de.umass.lastfm.Chart;
import de.umass.lastfm.PaginatedResult;
import de.umass.lastfm.Tag;
import de.umass.lastfm.Track;

import net.sf.javaml.tools.data.FileHandler;

public class Melodie implements Serializable, Comparable{
	
	
	String artist;
	String numeMelodie;
	public ArrayList<String> taguri ;
	public double[] valori ;
	
	
	Melodie(String artist, String numeMelodie )
	{
		this.artist = artist;
		this.numeMelodie = numeMelodie;
		taguri = new ArrayList<String>();
		
	}
	
	
	
	
	
	

	Melodie(String artist, String numeMelodie, ArrayList<String> taguri)
	{
		this.artist = artist;
		this.numeMelodie = numeMelodie;
		this.taguri = taguri;
		
		
		Collection<Tag> topTags = Tag.getTopTags("b958bdc1633a31eb1dcaf9fd085d9940");
		
		ArrayList<String> topTaguri = new ArrayList<String>();
		
		for(Tag tag: topTags)
		{
			topTaguri.add(tag.getName());
		}
		
		valori = new double[topTaguri.size()];
		
		System.out.println("Numar taguri melodie " + this.taguri.size());
		
		
		
		for(int i =0; i<valori.length; i++)
		{
			
			
			if(this.taguri.contains(topTaguri.get(i)) )
			{
				valori[i] = 1;
			} else valori[i] = 0;
			
			
			
			
			
		}
		
		

	}
	
	
	public String getArtist() {
		return artist;
	}


	public void setArtist(String artist) {
		this.artist = artist;
	}


	public String getNumeMelodie() {
		return numeMelodie;
	}


	public void setNumeMelodie(String numeMelodie) {
		this.numeMelodie = numeMelodie;
	}
	
	
	public static  ArrayList<Melodie> update()
	
	{

		ArrayList<Artist> listaCompletaArtisti = new ArrayList<Artist>();
		ArrayList<Track> listaCompletaTrack = new ArrayList<Track>();
		Collection<Tag> topTags = Tag.getTopTags("b958bdc1633a31eb1dcaf9fd085d9940");
		JaroWinkler algorithm = new JaroWinkler();
		
		
		ArrayList<Melodie> listaMelodii =  new ArrayList<Melodie>();
		
		// creare lista completa artisti
		for(int i =0; i<1; i++)
		{
			
			 PaginatedResult<Artist> artistiHy = Chart.getHypedArtists(i, "2c630b7db24d2ad2d607c9b46953a8a3");
			 PaginatedResult<Artist> artistiTop = Chart.getTopArtists(i, "2c630b7db24d2ad2d607c9b46953a8a3");
			 
			 
			   for(Artist artist : artistiHy)
			    {
				   if(!listaCompletaArtisti.contains(artist))
				   {
					   listaCompletaArtisti.add(artist);
				   }
			    }
			   
			   
			   for(Artist artist : artistiTop)
			    {
				   if(!listaCompletaArtisti.contains(artist))
				   {
					   listaCompletaArtisti.add(artist);
				   }
			    }
				
		}
		listaCompletaArtisti.remove(12);
		
		// lista melodii de top pentru fiecare artist

		for(Artist artist: listaCompletaArtisti)
		{
			
			 System.out.println(listaCompletaArtisti.indexOf(artist));
			
			for(int i =0; i<1; i++)
			{
				System.out.println("Artist:"+artist.getName());
				
				 Collection<Track> tracks =Artist.getTopTracks(artist.getName(),  "2c630b7db24d2ad2d607c9b46953a8a3");
				

				 for(Track track: tracks)
				 {
					 
					 if(!listaCompletaTrack.contains(track))
					 {
						 System.out.println("Track:"+track.getName());
						 
						 
						 Collection<Tag> taguriMelodie = null;
						 
						 try
						 {
							 taguriMelodie = Track.getTopTags(artist.getName(), track.getName(), "2c630b7db24d2ad2d607c9b46953a8a3");
							 
						 }catch(NumberFormatException e){}
						 catch(CallException e){}
					
						 
						 if(taguriMelodie != null)
						 {
						 
						 listaCompletaTrack.add(track);
						 
						 Melodie melodie = new Melodie(artist.getName(),track.getName());
						 
						 
						 for(Tag tagm :taguriMelodie)
						 {
							 for(Tag top:topTags)
							 {
								 
						//		 System.out.println( tagm.getName() +" Similare : " + (algorithm.getSimilarity(tagm.getName(), top.getName())>0.87));
								 
								 if(algorithm.getSimilarity(tagm.getName(), top.getName())>0.87)
								 {
									 melodie.taguri.add(top.getName());
								 }
							 }
						 
						 }
						 
						 System.out.println("Dimensiune " + melodie.taguri.size());
						 
						 if(melodie.taguri.size()!=0 && (!melodie.getArtist().equals("!!!")))
						 {
							
						 if(!listaMelodii.contains(melodie) )
						 {  
							 Melodie finala = new Melodie(melodie.getArtist(), melodie.getNumeMelodie(), melodie.taguri);
							 listaMelodii.add(finala);}
						 }
						 }
						 
					 }
				 }
			}
			
		} 
		
		
	return listaMelodii;
		
		
	}
	
	public boolean equals(Object o)
	{
		Melodie melodie = (Melodie) o;
		
		if(this.getArtist().equals(melodie.getArtist()) && this.getNumeMelodie().equals(melodie.getNumeMelodie()))
		{
			return true;
		}
		
		else
		{return false;}
	}
	
	
	public static void writeFile(ArrayList<Melodie> lista)
	{
		try {
			ObjectOutputStream file = new ObjectOutputStream (new FileOutputStream("fisier"));
			file.writeObject(lista);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static ArrayList<Melodie> readFile()
	{
		
		ArrayList<Melodie> lista = null;
		
		
		
		try {
			ObjectInputStream fisier = new ObjectInputStream ( new FileInputStream("fisier"));
			try {
				 lista = (ArrayList<Melodie>) fisier.readObject();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return lista;
	}
	
	
	public String toString()
	{
		return this.getArtist()+" --> "+this.getNumeMelodie();
	}


	@Override
	public int compareTo(Object arg) {
		
		Melodie mel = (Melodie) arg;
		
		
		return this.toString().compareTo(mel.toString());
	}
	
	
	
	public static Melodie getNext(Melodie curenta, ArrayList<Melodie> lista, ArrayList<String> artistiRecenti,  ArrayList<Melodie> melodiiRecente   )
	{
		
		Collection<Tag> topTags = Tag.getTopTags("b958bdc1633a31eb1dcaf9fd085d9940");
		Dataset data = new DefaultDataset();
		Melodie next = null;
		
		ArrayList<Tag> taguri = new ArrayList<Tag>();
		
		for(Tag tag: topTags)
		{
			taguri.add(tag);
		}
		
		
		

		
		for(Melodie melodie: lista)
		{
			Instance instance = new DenseInstance(melodie.valori, melodie);
			data.add(instance);
			
		}
		
		
		
		
	//	System.out.println("A ajuns aici");
	//	System.out.println("Melodii: " + lista.size());
//		System.out.println("Taguri: " + taguri.size());
		
		
		
		
		Clusterer km = new KMeans(1);
		
		
		
		Dataset[] clusters = km.cluster(data);
		System.out.println(clusters.length);
		
		
		Instance aleatoare = data.get(lista.indexOf(curenta));
		
		
		int numar = 1;
		
		
		
		
		while(true)
		{
		
		@SuppressWarnings("serial")
		Set<Instance> inst = data.kNearest(numar, aleatoare , new DistanceMeasure() {
			
	
			@Override
			public double measure(Instance inst1, Instance inst2) {
				
				Object o1 = inst1.classValue();
				Melodie m1 = (Melodie) o1;
				
				Object o2 = inst2.classValue();
				Melodie m2 = (Melodie) o2;
				
			
				double measure = 0;
				
				for(int i =0; i <m1.valori.length; i++)
				{
					
					measure = measure + Math.abs(m1.valori[i]-m2.valori[i]);
				}
			
				
				return measure;
			}

			@Override
			public boolean compare(double d1, double d2) {
				// TODO Auto-generated method stub
				
				
				if(d1<d2)
				{return true;} else {return false;}
			}
			
			
		});
		
//		System.out.println("Aici" + inst.size());
		
		
		
		for(Instance instanta : inst)
		{
			Object o = instanta.classValue();
			next = (Melodie) o;
			
			
			if(inst.size()<150)
			{
			break;}
		}
		
		
		
		if(inst.size()  == 170)
		{
			artistiRecenti.clear();
			melodiiRecente.clear();
		}
		
		
		
		
		if( !artistiRecenti.contains(next.getArtist())  &&     !melodiiRecente.contains(next) )
		{
			if(artistiRecenti.size() == 5)
			{
				artistiRecenti.remove(0);
			}
			artistiRecenti.add(next.getArtist());
			
			if(melodiiRecente.size() == 100)
			{
				melodiiRecente.remove(0);
			}
			melodiiRecente.add(next);
			
			System.out.println("Numae melodii ascultate: " + melodiiRecente.size());
			
			
			break;
		}
		
		
		
		
		numar++;
		
		}
		
		

		return next;
	}








	
	
	

}
