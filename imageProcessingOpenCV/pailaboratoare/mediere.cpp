
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void filtru_mediere( IplImage* image );

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
            
            filtru_mediere( img );
            
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


void filtru_mediere( IplImage* image )
{
    int		w, h;
    int		i, j;
    int     k, l;
    
    double	v[ 3 ][ 3 ];
    double  sum;

    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;

    //coeficientii mastii de filtrare 3x3
    v[ 0 ][ 0 ] = 1./9;    v[ 0 ][ 1 ] = 1./9;    v[ 0 ][ 2 ] = 1./9;
    v[ 1 ][ 0 ] = 1./9;    v[ 1 ][ 1 ] = 1./9;    v[ 1 ][ 2 ] = 1./9;
    v[ 2 ][ 0 ] = 1./9;    v[ 2 ][ 1 ] = 1./9;    v[ 2 ][ 2 ] = 1./9;
    
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
                        sum += v[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                   }
              valoare.val[0] = (int) sum;
              cvSet2D( result, i, j, valoare );    
	    }

     cvNamedWindow( "Imaginea filtrata", 1 );
     cvShowImage( "Imaginea filtrata", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea filtrata" );
}

