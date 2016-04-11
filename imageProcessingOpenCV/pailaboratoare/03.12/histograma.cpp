
// Mihai Ivanovici, octombrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>

void histograma_imaginii( IplImage* img );

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
            cvNamedWindow( "Exemplu", 1 );
            cvShowImage( "Exemplu", img );
            
            histograma_imaginii( img );            
            
            cvWaitKey(0);
            cvReleaseImage( &img );
            cvDestroyWindow( "Exemplu" );
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

void histograma_imaginii( IplImage* img )
{
    int		i, j;
    int		w, h;
    int     max;
    int		hist[ 256 ]; 
    CvScalar   pixel;
    IplImage   *histograma;
  
    for( i = 0; i < 256; i++ )
	     hist[ i ] = 0;
      
    w = img->width;
    h = img->height;
    
    for( i = 0; i < w; i++ )
    	for( j = 0; j < h; j++ )
        {
             pixel = cvGet2D( img, i, j );
             hist[ (int)(pixel.val[0]) ]++ ;
        }

    max = 0;
    for( i = 0; i < 256; i++ )
        if( hist[ i ] > max )
        {
	         max = hist[ i ];      
        }

    histograma = cvCreateImage( cvSize( 256, 256 ), IPL_DEPTH_32F, 3 );
    cvRectangle( histograma, cvPoint( 0, 0 ), cvPoint( 255, 255 ), cvScalar( 255, 255, 255 ), CV_FILLED );
    for( i = 0; i < 256; i++ )
         cvLine( histograma, cvPoint( i, 255 ), cvPoint( i, (int)(255 - 255.*hist[i]/max) ), cvScalar( 255, 0, 0 ), 1 );

    cvNamedWindow( "Histograma", 1 );
    cvShowImage( "Histograma", histograma );
    cvWaitKey(0);
    cvReleaseImage( &histograma );
    cvDestroyWindow( "Histograma" );
}

            
            
