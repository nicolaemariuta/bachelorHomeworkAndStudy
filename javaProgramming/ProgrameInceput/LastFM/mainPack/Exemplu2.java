package mainPack;

import java.text.DateFormat;
import java.util.Collection;

import de.umass.lastfm.Artist;
import de.umass.lastfm.Chart;
import de.umass.lastfm.PaginatedResult;
import de.umass.lastfm.Tag;
import de.umass.lastfm.Track;
import de.umass.lastfm.User;

public class Exemplu2 {
	
	public static void main(String[] args) {
		
		String key = "b25b959554ed76058ac220b7b2e0a026" ; //this is the key used in the Last.fm API examples
		String user = "JRoar";
		
		PaginatedResult<Track> chart = User.getRecentTracks("nikipiulitza", "b958bdc1633a31eb1dcaf9fd085d9940");
		


		
		
		Collection<Tag> tags = Tag.getTopTags("b958bdc1633a31eb1dcaf9fd085d9940");
		
		
		DateFormat format = DateFormat.getDateInstance();
//		String from = format.format(chart.getFrom());
//		String to = format.format(chart.getTo());
		
//		System.out.println("Charts for %s for the week from %s to %s:%n"+ user+ from + to);
//		Collection<Artist> artists = chart.getEntries();
		
		for(Tag tag :tags)
		{
			System.out.println(tag.getName());
		}
		
//		while(true)
		{
			System.out.println(tags.size());
		}
		
		
	}

}
