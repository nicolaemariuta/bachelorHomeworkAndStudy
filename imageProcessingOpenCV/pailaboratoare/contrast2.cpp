
// Mihai Ivanovici, octombrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

int f_accentuare( int );
void accentueaza_contrastul( IplImage* img );

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
            
            accentueaza_contrastul( img );
            
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

int f_accentuare( int nivel_gri )
{
    int  a = 80;
    int  Va = 20;
    int  b = 170;
    int  Vb = 235;
    
    double alfa = 1. * Va / a;
    double beta = 1. * ( Vb - Va ) / ( b - a );
    double gama = 1. * ( 255 - Vb ) / ( 255 - b );


    if( nivel_gri >= 0 && nivel_gri <= a ) 
	return	( int )( alfa * nivel_gri );

    if( nivel_gri > a && nivel_gri <= b )
	return	( int )( beta * ( nivel_gri - a ) + Va );
    
    if( nivel_gri > b && nivel_gri <= 255 )
	return	( int )( gama * ( nivel_gri - b ) + Vb );

    return	nivel_gri;
}

void accentueaza_contrastul( IplImage* image )
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
	          valoare.val[0] = f_accentuare( int( pixel.val[0] ) );
              cvSet2D( result, i, j, valoare );    
	    }

     cvNamedWindow( "Imaginea rezultat", 1 );
     cvShowImage( "Imaginea rezultat", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea rezultat" );
}

