
// Mihai Ivanovici, decembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

IplImage *image;

void crestere_regiune( IplImage*, int, int );
void inspecteaza_vecinii( IplImage*, int, int, int, int );

int main( int argc, char** argv )
{
    char     *filename;
    IplImage *gimage;
      
    if( argc == 2 )
    {
        filename = ( char* )malloc( sizeof( char ) * 128 );
        filename = argv[ 1 ];
        printf( "Loading %s...\n", filename );
        image = cvLoadImage( filename, 3 );
    
        if( image )
        {    
            gimage = cvCreateImage( cvSize( image->width, image->height ), 8, 1 );
            cvCvtColor( image, gimage, CV_BGR2GRAY );

            crestere_regiune( gimage, 230, 320 );

            cvNamedWindow( "Regiune", 1 );
            cvShowImage( "Regiune", image );
               
            cvWaitKey(0);
            cvReleaseImage( &image );
            cvDestroyWindow( "Regiune" );
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

void crestere_regiune( IplImage* img, int i, int j )
{
    int prag = 13;
    int nivel;
    CvScalar pixel;

    pixel = cvGet2D( image, i, j );
	nivel = (int) pixel.val[ 0 ];
	inspecteaza_vecinii( img, i, j, nivel, prag );
	
	//marcheaza germenele cu o cruciulitza galbena
    pixel.val[ 0 ] =   0;
    pixel.val[ 1 ] = 255;
    pixel.val[ 2 ] = 255;
        
    cvSet2D( image, i  , j  , pixel );
    cvSet2D( image, i-1, j  , pixel );
    cvSet2D( image, i+1, j  , pixel );
    cvSet2D( image, i  , j-1, pixel );
    cvSet2D( image, i  , j+1, pixel );
}

void inspecteaza_vecinii( IplImage* img, int i, int j, int germene, int prag )
{
	static int nivel;
    CvScalar pixel;

    pixel = cvGet2D( img, i, j );
	nivel = (int) pixel.val[ 0 ];

	if( abs( nivel - germene ) < prag )
	{
        pixel.val[ 0 ] =   0;
        pixel.val[ 1 ] =   0;
        pixel.val[ 2 ] = 255;
        
        //marcheaza pixelul (i,j) ca vizitat
        cvSet2D( image, i, j, pixel );
		
		//atentie: nu se verifica faptul ca (i,j) este in suportul imaginii
		inspecteaza_vecinii( image, i+1, j  , germene, prag );
		inspecteaza_vecinii( image, i-1, j  , germene, prag );
		inspecteaza_vecinii( image, i  , j+1, germene, prag );
		inspecteaza_vecinii( image, i  , j-1, germene, prag );	
		inspecteaza_vecinii( image, i+1, j+1, germene, prag );	
		inspecteaza_vecinii( image, i-1, j-1, germene, prag );	
		inspecteaza_vecinii( image, i+1, j-1, germene, prag );	
		inspecteaza_vecinii( image, i-1, j+1, germene, prag );	
	}
}

