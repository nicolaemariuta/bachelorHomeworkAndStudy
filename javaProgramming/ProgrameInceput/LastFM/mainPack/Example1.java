package mainPack;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;

import de.umass.lastfm.Artist;
import de.umass.lastfm.Authenticator;
import de.umass.lastfm.Caller;
import de.umass.lastfm.Chart;
import de.umass.lastfm.PaginatedResult;
import de.umass.lastfm.Playlist;
import de.umass.lastfm.Session;
import de.umass.lastfm.Tag;
import de.umass.lastfm.Track;
import de.umass.lastfm.User;



public class Example1 {
	
public static void main(String[] args) {
//	Caller.getInstance().setUserAgent("tst");   // set user agent
//	Caller.getInstance().setDebugMode(true);    // enables debugging mode while developing
//	Caller.getInstance().setProxy(null);   // set  a proxy

	    
	    String key = "2c630b7db24d2ad2d607c9b46953a8a3";      		// api key
	    String secret = "is 67915cd5abbce2033d2b53f4218e8a14";   	// api secret
	    String user = "nikipiulitza";     							// user name
	    String password = "surub"; 									// user's password
	   
	   
	    Session session = Authenticator.getMobileSession( user, password, key, secret);
	   
//	    Playlist playlist = Playlist.create("example playlist", "description", session);
	    
	//    System.out.println(token);
	    
	   
	    PaginatedResult<Track> chart = Chart.getHypedTracks(10, "2c630b7db24d2ad2d607c9b46953a8a3");
	    
	    
	    PaginatedResult<Artist> artisti = Chart.getHypedArtists(10, "2c630b7db24d2ad2d607c9b46953a8a3");
	    
	    
	    
	    PaginatedResult<Tag> tags = Chart.getTopTags(1,"2c630b7db24d2ad2d607c9b46953a8a3");
	   
	    boolean find = false;
	    
	    int contor = 0;
	    
	    for(Tag tag: tags)
	    {
	    	if(tag.getName().contains("lust"))
	    	{
	    		find = true;
	    	}
	    	
	    	System.out.println(tag.getName());
	    	contor++;
	    }
	    System.out.println(contor);
	    
	
	    
	   
	    
	    System.out.println(find);
	    
	    
	    
	    
	    
	    
	    
	    

	    
	    DateFormat format = DateFormat.getDateInstance();
	 //   String from = format.format(chart.getFrom());
	//    String to = format.format(chart.getTo());
	//    System.out.printf("Charts for %s for the week from %s to %s:%n", user, from, to);
	//    Collection<Artist> artists = chart.getEntries();
	//    System.out.println(artists.size());

	    
	    for(Artist artist : artisti)
	    {
	//    	System.out.println(artist.toString());
	    	contor++;
	    	
	    }
	    
//	    System.out.println(contor);
	    	
	   
}

}
