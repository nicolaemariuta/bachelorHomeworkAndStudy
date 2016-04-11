
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>
void zgomot_sare_si_piper( IplImage* );
void filtru_median( IplImage* image );

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
            
            zgomot_sare_si_piper( img );
            filtru_median( img );
            
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
void zgomot_sare_si_piper( IplImage *img )
{
    int	i, j, k;
    int w, h;
    int nivel_gri;
    
    double	e_zgomot;	//energia zgomotului
    double	e_imagine;	//energia imaginii
    double	SNR;	//raportul semnal-zgomot

    double	nr = 0.1 ;	//procentul de pixeli afectati de zgomot (10%)
    CvScalar   pixel;
    CvScalar   sare_piper;
    IplImage   *imagine_zgomot;

    w = img->width;
    h = img->height;

    imagine_zgomot = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );
    e_imagine = 0;
    e_zgomot =  0;
    SNR = 0;
    
    //se copiaza imaginea originala si se calculeaza energia acesteia
    for( i = 0; i < h; i++ )
    	for( j = 0; j < w; j++ )
        {
             pixel = cvGet2D( img, i, j );
             nivel_gri = (int)( pixel.val[ 0 ] );
             e_imagine += nivel_gri * nivel_gri;
             cvSet2D( imagine_zgomot, i, j, pixel );    
	    }

    srand( rand() );
    
    k = 0;
    while( k < ( int )( w * h * nr ) )
    {
           //se genereaza in mod aleator coordonatele pixelului afectat de zgomot
           i = ( int )( 1. * h * rand() / ( RAND_MAX + 1. ) );
           j = ( int )( 1. * w * rand() / ( RAND_MAX + 1. ) );

           if( (i >= 0) && (i < h) && (j >= 0) && (j < w) )
           {
               //se decide daca zgomotul este "sare" sau "piper"           
               if( ( 100. * rand() / ( RAND_MAX + 1. ) ) >= 50 )
               {
                   sare_piper.val[ 0 ] = 255;
                   
                   pixel = cvGet2D( img, i, j );
                   nivel_gri = (int)( pixel.val[ 0 ] );
                   e_zgomot += (255 - nivel_gri) * (255 - nivel_gri);
               }
               else
               {
                   sare_piper.val[ 0 ] = 0;
                   
                   pixel = cvGet2D( img, i, j );
                   nivel_gri = (int)( pixel.val[ 0 ] );
                   e_zgomot += nivel_gri * nivel_gri;
               }
               
               cvSet2D( imagine_zgomot, i, j, sare_piper );
               k++;
           }
    }

    SNR = 20 * log( e_imagine / e_zgomot );
    printf( "Zgomot impulsiv de tip sare si piper, SNR = %6.3lf dB\n", SNR );

    cvNamedWindow( "Imagine + zgomot sare si piper", 1 );
    cvShowImage( "Imagine + zgomot sare si piper", imagine_zgomot );
    cvSaveImage( "imagine_zgomot.png", imagine_zgomot );
    cvWaitKey(0);
    cvReleaseImage( &imagine_zgomot );
    cvDestroyWindow( "Imagine + zgomot sare si piper" );
}


void filtru_median( IplImage* image )
{
    int		w, h;
    int		i, j, k, m, n, aux;
    int     sir[ 9 ];
    
    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *result;

    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 1; i < h - 1; i++ )
	     for( j = 1; j < w - 1; j++ )
	     {
 	          //se formeaza un sir de 9 elemente din pixelli din vecinatatea de 3x3 a pixelului curent
	          k = 0;
	          for( m = -1; m < 2; m++ )
		           for( n = -1; n < 2; n++ )
		           {
                        pixel = cvGet2D( image, i + m, j + n );
		                sir[ k ] = (int)( pixel.val[ 0 ] );
                        k++;
                   }
             
             //ordonarea crescatoare a valorilor pixelilor
	         //metoda BUBBLE SORT, ordin de complexitate O(N^2)
	         k = 0;
	         while( k == 0 )
	         {
                    k = 1;
		            for( m = 0; m < 8; m++ )
		            if( sir[ m ] > sir[ m + 1 ] )
		            {
			            aux = sir[ m ];
			            sir[ m ] = sir[ m + 1 ];
			            sir[ m + 1 ] = aux;
			            k = 0;
                    }
              }

              //elementul median (noua valoare a pixelului curent)
	          valoare.val[ 0 ] = sir[ 4 ];
              cvSet2D( result, i, j, valoare );    
     }

     cvNamedWindow( "Imaginea filtrata", 1 );
     cvShowImage( "Imaginea filtrata", result );
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea filtrata" );
}

