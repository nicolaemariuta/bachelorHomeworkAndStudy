package youtubeVideo;

import java.util.List;

public class RetrieveVideos {
	
	public static YouTubeVideo retrieveVideo(String melodie) throws Exception
	{
		String url = null;
		
		String clientID = "nicolae.mariuta";
        String textQuery = melodie;
        int maxResults = 20;
        boolean filter = true;
        int timeout = 2000;
  
        YouTubeManager ym = new YouTubeManager(clientID);
  
        List<YouTubeVideo> videos = ym.retrieveVideos(textQuery, maxResults, filter, timeout);
       
        
 //       url = videos.get(0).getEmbeddedWebPlayerUrl();
      url = videos.get(1).getWebPlayerUrl();
      
      
  
        for (YouTubeVideo youtubeVideo : videos) {
  //          System.out.println(youtubeVideo.getWebPlayerUrl());
   //         System.out.println("Thumbnails");
            for (String thumbnail : youtubeVideo.getThumbnails()) {
                System.out.println("\t" + thumbnail);
            }
   //         System.out.println(youtubeVideo.getEmbeddedWebPlayerUrl());
  //          System.out.println("************************************");
        }
  
		
		return videos.get(0);
		
	}
	
	
	
	

}
