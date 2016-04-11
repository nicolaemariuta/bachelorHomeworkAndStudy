
#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void erodare( IplImage* img );

int main( int argc, char** argv )
{
    char     *filename;
    IplImage *img;
      
    if( argc == 2 )
    {
        filename = ( char* )malloc( sizeof( char ) * 128 );
        filename = argv[1];
        printf( "Loading %s...\n", filename );
        img = cvLoadImage( filename, 0 );
    
        if( img )
        {
            cvNamedWindow( "Imaginea originala", 1 );
            cvShowImage( "Imaginea originala", img );
            
            erodare( img );
            
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

void erodare( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );  
    
    IplConvKernel* SE = cvCreateStructuringElementEx( 3, 3, 1, 1, CV_SHAPE_RECT);
    //Dilate(image, result, SE, 1);
    cvMorphologyEx( image, result, NULL, SE, CV_MOP_TOPHAT,1);
    //cvErode(image, result, SE, 1);
    cvReleaseStructuringElement(&SE);
    
    cvNamedWindow( "Imaginea rezultat", 1 );
    cvShowImage( "Imaginea rezultat", result );
    cvWaitKey(0);
    cvReleaseImage( &result );
    cvDestroyWindow( "Imaginea rezultat" );
}

