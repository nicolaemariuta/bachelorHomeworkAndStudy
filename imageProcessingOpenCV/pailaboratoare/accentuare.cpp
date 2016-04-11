
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void filtru_accentuare( IplImage* image );

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
            
            filtru_accentuare( img );
            
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


void filtru_accentuare( IplImage* image )
{
    int	i, j;
    int k, l;
    int w, h;

    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;

    double	sum;
    double	v[ 3 ][ 3 ];
    double  pondere = 2;

    //coeficientii mastii 
    v[ 0 ][ 0 ] = 0;      v[ 0 ][ 1 ] = -1./4;    v[ 0 ][ 2 ] = 0;
    v[ 1 ][ 0 ] = -1./4;  v[ 1 ][ 1 ] = 1;        v[ 1 ][ 2 ] = -1./4;
    v[ 2 ][ 0 ] = 0;      v[ 2 ][ 1 ] = -1./4;    v[ 2 ][ 2 ] = 0;

    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 1; i < h - 1; i++ )
	     for( j = 1; j < w - 1; j++ )
         {
              sum = 0;
              
              for( k = -1; k < 2; k++ )
                   for( l = -1; l < 2; l++ )
                   {
                        pixel = cvGet2D( image, i + k, j + l );
                        sum += 1. * v[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                   }
                   
              pixel = cvGet2D( image, i, j );
              valoare.val[ 0 ] = (int)( pixel.val[ 0 ] + pondere * sum );
              cvSet2D( result, i, j, valoare );    
         }

     cvNamedWindow( "Imaginea filtrata", 1 );
     cvShowImage( "Imaginea filtrata", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea filtrata" );

}
