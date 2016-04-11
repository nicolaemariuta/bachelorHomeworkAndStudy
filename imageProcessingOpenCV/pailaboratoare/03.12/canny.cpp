
// Mihai Ivanovici, decembrie 2010
// Canny edge detection

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

int main( int argc, char** argv )
{
    int      th1, th2;     //praguri histerezis
    int      window_size = 3;
    char     *filename;
    IplImage *image;
    IplImage *gimage;
    IplImage *result;
      
    if( argc == 2 )
    {
        filename = ( char* )malloc( sizeof( char ) * 128 );
        filename = argv[ 1 ];
        printf( "Loading %s...\n", filename );
        image = cvLoadImage( filename, 1 );
    
        if( image )
        {
            cvNamedWindow( "Imaginea originala", 1 );
            cvShowImage( "Imaginea originala", image );
            
            result = cvCreateImage( cvSize( image->width, image->height ), 8, 1 );
            gimage = cvCreateImage( cvSize( image->width, image->height ), 8, 1 );
            cvCvtColor( image, gimage, CV_BGR2GRAY );

            th1 = 40;
            th2 = 200;
            cvCanny( gimage, result, th1, th2, window_size );

            cvNamedWindow( "Imagine contururi", 1 );
            cvShowImage( "Imagine contururi", result );
               
            cvWaitKey(0);
            cvReleaseImage( &image );
            cvReleaseImage( &result );
            cvDestroyWindow( "Imaginea originala" );
            cvDestroyWindow( "Imagine cotururi" );
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
