
// Mihai Ivanovici, octombrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>


void pixeli_maiputin_semnif( IplImage* img );

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
            
            pixeli_maiputin_semnif( img );
            
            cvWaitKey(0);
            cvReleaseImage( &img );
            cvDestroyWindow( "Imaginea originala" );
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


void pixeli_maiputin_semnif( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
	          pixel = cvGet2D( image, i, j );
	          valoare.val[0] =  int(pixel.val[0])& 0xAA;
              cvSet2D( result, i, j, valoare );    
	    }

     cvNamedWindow( "Imaginea rezultat", 1 );
     cvShowImage( "Imaginea rezultat", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea rezultat" );
}

