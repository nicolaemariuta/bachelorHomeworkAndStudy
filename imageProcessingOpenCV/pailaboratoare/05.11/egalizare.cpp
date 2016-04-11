
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void egalizeaza_histograma_imaginii( IplImage* img );

int main( int argc, char** argv )
{
    char     *filename;
    IplImage *img;
      
    if( argc == 2 )
    {
        filename = ( char* )malloc( sizeof( char ) * 128 );
        filename = argv[1];
        printf( "Loading %s...\n", filename );
        img = cvLoadImage( filename, 1 );
    
        if( img )
        {
            cvNamedWindow( "Imaginea originala", 1 );
            cvShowImage( "Imaginea originala", img );
            
            egalizeaza_histograma_imaginii( img );
            
            //cvWaitKey(0);
           // cvReleaseImage( &img );
           // cvDestroyWindow( "Imaginea originala" );
        }
        else
        {
            printf( "This is not a valid image file\n" );
        }
        
        free( filename );
        return 0;
    }
    else
    {
        printf( "Image filename was not specified\n" );
        exit( -1 );    
    }
}

void egalizeaza_histograma_imaginii( IplImage* img )
{
    int		i, j;
    int		w, h;
    int     nivel_vechi, nivel_nou;
    int		hist[ 256 ]; 
    long int  hist_cum[ 256 ];
    CvScalar   pixel;
    IplImage   *result;
    int max;
  
    for( i = 0; i < 256; i++ )
	     hist[ i ] = 0;
      
    w = img->width;
    h = img->height;
    
    //calcularea histogramei imaginii
    for( i = 0; i < h; i++ )
    	for( j = 0; j < w; j++ )
        {
             pixel = cvGet2D( img, i, j );
             hist[ (int)(pixel.val[0]) ]++ ;
        }
        
    //calcularea histogramei cumulative
    hist_cum[ 0 ] = hist[ 0 ];
    for( i = 1; i < 256; i++ )
	     hist_cum[ i ] = hist_cum[ i - 1 ] + hist[ i ];
	     
    //egalizarea histogramei
    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
             pixel = cvGet2D( img, i, j );
             nivel_vechi = (int)( pixel.val[ 0 ] );
             nivel_nou = (int)( ( hist_cum[ nivel_vechi ] - hist_cum[ 0 ] ) * 255 / ( w * h - hist_cum[ 0 ] ) );
             pixel.val[ 0 ] = nivel_nou;
             cvSet2D( result, i, j, pixel );
         }
         
  max = 0;
    for( i = 0; i < 256; i++ )
        if( hist[ i ] > max )
        {
	         max = hist[ i ];      
        }

    img = cvCreateImage( cvSize( 256, 256 ), IPL_DEPTH_32F, 3 );
    cvRectangle( img, cvPoint( 0, 0 ), cvPoint( 255, 255 ), cvScalar( 255, 255, 255 ), CV_FILLED );
    for( i = 0; i < 256; i++ )
         cvLine( img, cvPoint( i, 255 ), cvPoint( i, (int)(255 - 255.*hist[i]/max) ), cvScalar( 255, 0, 0 ), 1 );
         
    

    cvNamedWindow( "Histograma", 1 );
    cvShowImage( "Histograma", img );
     cvNamedWindow( "Rezultat", 1 );
    cvShowImage( "Rezultat", result ); 
    
    result = cvCreateImage( cvSize( 256, 256 ), IPL_DEPTH_32F, 3 );
    cvRectangle( result, cvPoint( 0, 0 ), cvPoint( 255, 255 ), cvScalar( 255, 255, 255 ), CV_FILLED );
    for( i = 0; i < 256; i++ )
    cvLine( result, cvPoint( i, 255 ), cvPoint( i, (int)(255 - 255.*hist[i]/max) ), cvScalar( 255, 0, 0 ), 1 );
    
    cvNamedWindow( "Histogram", 1 );
    cvShowImage( "Histogram", result);
    
    cvWaitKey(0);
    cvReleaseImage( &img );
    cvDestroyWindow( "Imaginea originala" );
    cvReleaseImage( &img );
    cvDestroyWindow( "Histograma" );
    cvReleaseImage( &result );
    cvDestroyWindow( "Result" );
    cvReleaseImage( &result );
    cvDestroyWindow( "Histogram" );  
}
