
// Mihai Ivanovici, decembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void extragere_contururi( IplImage* image );

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
            
            extragere_contururi( img );
            
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


void extragere_contururi( IplImage* image )
{
    int		w, h;
    int		i, j;
    int     k, l;
    
    double	g, g1, g2,g3,g4;
    int		h1[ 3 ][ 3 ], h2[ 3 ][ 3 ],h3[ 3 ][ 3 ],h4[ 3 ][ 3 ];
    int     prag = 100;

    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;

    //operatori Prewitt
    h1[ 0 ][ 0 ] = -1;      h1[ 0 ][ 1 ] = 0;    h1[ 0 ][ 2 ] = 1;
    h1[ 1 ][ 0 ] = -2;      h1[ 1 ][ 1 ] = 0;    h1[ 1 ][ 2 ] = 2;
    h1[ 2 ][ 0 ] = -1;      h1[ 2 ][ 1 ] = 0;    h1[ 2 ][ 2 ] = 1;

    h2[ 0 ][ 0 ] = -1;     h2[ 0 ][ 1 ] = -2;   h2[ 0 ][ 2 ] = -1;
    h2[ 1 ][ 0 ] = 0;      h2[ 1 ][ 1 ] = 0;    h2[ 1 ][ 2 ] = 0;
    h2[ 2 ][ 0 ] = 1;      h2[ 2 ][ 1 ] = 2;    h2[ 2 ][ 2 ] = 1;
    
     h3[ 0 ][ 0 ] = 1;     h3[ 0 ][ 1 ] = 1;   h3[ 0 ][ 2 ] = 0;
    h3[ 1 ][ 0 ] = 1;      h3[ 1 ][ 1 ] = 0;    h3[ 1 ][ 2 ] = -1;
    h3[ 2 ][ 0 ] = 0;      h3[ 2 ][ 1 ] = -1;    h3[ 2 ][ 2 ] = -1;
    
    h4[ 0 ][ 0 ] = 0;     h4[ 0 ][ 1 ] = 1;   h4[ 0 ][ 2 ] = 1;
    h4[ 1 ][ 0 ] = -1;      h4[ 1 ][ 1 ] = 0;    h4[ 1 ][ 2 ] = 1;
    h4[ 2 ][ 0 ] = -1;      h4[ 2 ][ 1 ] = -1;    h4[ 2 ][ 2 ] = 0;
    
    
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 1; i < w - 1; i++ )
	     for( j = 1; j < h - 1; j++ )
	     {
              g1 = 0;
              g2 = 0;
              g3=0;
              g4=0;

              for( k = -1; k < 2; k++ )
                   for( l = -1; l < 2; l++ )
                   {
                        pixel = cvGet2D( image, i + k, j + l );
                        g1 += h1[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                        g2 += h2[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                        g3 += h3[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                        g4 += h4[ k + 1 ][ l + 1 ] * pixel.val[ 0 ];
                        
                    

                   }

              g = g1;
              if(g2>g)
                g=g2;
                    else 
                        if(g3>g)
                         g=g3;
                            else if(g4>g)
                            g=g4;

              if( g > prag )
              {
                  valoare.val[0] = (int) 0;
                  cvSet2D( result, i, j, valoare );    
              }
              else
              {
                  valoare.val[0] = (int) 255;
                  cvSet2D( result, i, j, valoare );    
              }
	    }

     cvNamedWindow( "Imagine contururi", 1 );
     cvShowImage( "Imagine contururi", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea contururi" );
}

