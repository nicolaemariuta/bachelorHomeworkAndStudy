package mainPack;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;

import de.umass.lastfm.Artist;
import de.umass.lastfm.Chart;
import de.umass.lastfm.PaginatedResult;
import de.umass.lastfm.Tag;
import de.umass.lastfm.Track;

public class ListaTrackuri {
	
	
	
	public static void main(String[] args) {
		
		
		ArrayList<Artist> listaCompletaArtisti = new ArrayList<Artist>();
		ArrayList<Track> listaCompletaTrack = new ArrayList<Track>();
		
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

		
	
		
		
		System.out.println("Numar artisti: " + listaCompletaArtisti.size());
	//	creeare lista completa trackuri
		
		
		System.out.println(listaCompletaArtisti.get(12).getName());
		
//		listaCompletaArtisti.remove(12);
//		listaCompletaArtisti.remove(111);
		
		
		
		
		
		
	
		
		
		
		for(Artist artist: listaCompletaArtisti)
		{
			
			 System.out.println(listaCompletaArtisti.indexOf(artist));
			
			for(int i =0; i<1; i++)
			{
				System.out.println(artist.getName());
				
				 Collection<Track> tracks =Artist.getTopTracks(artist.getName(),  "2c630b7db24d2ad2d607c9b46953a8a3");
				

				 for(Track track: tracks)
				 {
					 if(!listaCompletaTrack.contains(track))
					 {
						 Collection<Tag> taguri = track.getTopTags(artist.getName(), track.getName(), "2c630b7db24d2ad2d607c9b46953a8a3");
						 System.out.println(artist.getName()+" "+track.getName()+  " Nr taguri " + taguri.size());
						 
						 for(Tag tag: taguri)
						 {
							 System.out.println(artist.getName()+" "+track.getName()+" "+tag.getName());
						 }
						 
						 track.getTags();
						 listaCompletaTrack.add(track);
					 }
				 }
			}
			
		} 
		
		System.out.println("Numar melodii: " + listaCompletaTrack.size());
		System.out.println("Numar artisti: " + listaCompletaArtisti.size());
		
		//verificare dubluri
		ArrayList<String> artistii = new ArrayList<String>();
		int contor = 0;
		for(Artist artist: listaCompletaArtisti)
		{
			String art = artist.getName();
			
			if(artistii.contains(art))
			{
				contor++;
				
			}
			else
			{
				artistii.add(art);
			}
		}
	
		System.out.println(contor);
		
		
		try {
			ObjectOutputStream file = new ObjectOutputStream (new FileOutputStream("fisier"));
			file.writeObject(listaCompletaTrack);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		 PaginatedResult<Artist> artistiHy = Chart.getHypedArtists(10, "2c630b7db24d2ad2d607c9b46953a8a3");
		 
		 PaginatedResult<Artist> artistiTop = Chart.getTopArtists(10, "2c630b7db24d2ad2d607c9b46953a8a3");
		 
		 
		 
		 
		 
		 
		
		
		
	}
	
	
	
	
	
	

}
