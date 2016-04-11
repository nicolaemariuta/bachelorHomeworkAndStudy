
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void compresie_decompresie_cu_DCT( IplImage* ); 

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
            
            compresie_decompresie_cu_DCT( img );
            
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


void compresie_decompresie_cu_DCT( IplImage* image )
{
    int		w, h;
    int		i, j;
    int     k, l;
    double	pi = 3.1415926;
    
    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *imagine_rezultat;
    IplImage   *imagine_diferenta;
    IplImage   *cosinus;

	int	    N, nivel;
	double  max = 0, min = 10000;
	double  value;
	CvMat	*C;	//matricea transformarii cosinus
	CvMat	*U;	//matricea imaginii in spatiul original
	CvMat	*V;	//matricea imaginii in spatiul transformatei
	CvMat   *AUX; //matrice auxiliara pentru rezultatul partial

    double m, M;
    double prag;
    int    nr;  //numarul de coeficienti anulati in spatiul transformatei

    w = image->width;
    h = image->height;

    if( w == h )
    {
        imagine_rezultat = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
        
        N = w;
        C = cvCreateMat( N, N, CV_32FC1 );
        U = cvCreateMat( N, N, CV_32FC1 );
        V = cvCreateMat( N, N, CV_32FC1 );
        AUX = cvCreateMat( N, N, CV_32FC1 );
        
        //formarea matricii C a transformarii cosinus discreta
        for( i = 0; i < N; i++ )
             cvmSet( C, 0, i, 1. / sqrt( (float)N ) );
        
        for( i = 1; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = sqrt( 2./N ) * cos( pi * ( 2*j + 1 ) * i / ( 2*N ) );
                  cvmSet( C, i, j, value );
                  if( value > max )
                      max = value;
             }
             
        //popularea matricei U cu valorile pixelilor imaginii
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  pixel = cvGet2D( image, i, j );
                  cvmSet( U, i, j, pixel.val[ 0 ] );
             }
    
        //V = C*U*Ct
        //mai intii vom calcula AUX = C * U
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = 0;	
                  for( k = 0; k < N; k++ )
                       value += cvmGet( C, i, k ) * cvmGet( U, k, j );
                  cvmSet( AUX, i, j, value );
             }
        
        //apoi V = AUX * Ct
        max = 0;
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = 0;	
                  for( k = 0; k < N; k++ )
                       value += cvmGet( AUX, i, k ) * cvmGet( C, j, k );
	              cvmSet( V, i, j, value );
	              
                  if( value > max )
                      max = value;
                  else
                      if( value < min )
                          min = value;    
             }

// /*
        //anularea coeficientilor de energie mica
        prag = 50;
        nr = 0;
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = fabs( cvmGet( V, i, j ) );
                  if( value < prag )
                  {
                      cvmSet( V, i, j, 0 );
                      nr++;
                  }
             }
        printf( "Procentul de valori retinute in spatiul transformatei = %5.2lf%%\n", 100.*(N*N - nr) / (N*N) );
        if( nr != 0 )
            printf( "Factorul de compresie obtinut = %5.2lf\n", 1. * (N * N) / (N*N - nr) );        
// */
        
        // DECOMPRESIA IMAGINII
            
        //U = Ct * V * C
        //AUX = Ct * V
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = 0;
                  for( k = 0; k < N; k++ )
                       value += cvmGet( C, k, i ) * cvmGet( V, k, j );
     		      cvmSet( AUX, i, j, value );	
             }
           	
        //apoi U = AUX * C
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = 0;
                  for( k = 0; k < N; k++ )
                       value += cvmGet( AUX, i, k ) * cvmGet( C, k, j );
                  cvmSet( U, i, j, value );
                  pixel.val[ 0 ] = value;
                  cvSet2D( imagine_rezultat, i, j, pixel );
             }	

        cvNamedWindow( "Imaginea dupa decompresie", 1 );
        cvShowImage( "Imaginea dupa decompresie", imagine_rezultat );

        //calcul pseudo-imagine diferenta (zgomot cauzat de compresia cu pierderi)     
        imagine_diferenta = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );  
        double vall=0;
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  pixel = cvGet2D( image, i, j );
                  value = (int)( fabs( pixel.val[ 0 ] - cvmGet( U, i, j ) ) );
                  valoare.val[ 0 ] = value;
                  cvSet2D( imagine_diferenta, i, j, valoare );
                  vall=vall+(value*value);
             }	        
        
        printf( "E = %f", (1./(N*N))*vall );   
        
        cvNamedWindow( "Pseudo-imaginea diferenta", 1 );
        cvShowImage( "Pseudo-imaginea diferenta", imagine_diferenta );        
        
        cvWaitKey(0);
        cvReleaseImage( &imagine_rezultat );
        cvReleaseImage( &imagine_diferenta );
        cvDestroyWindow( "Imaginea dupa decompresie" );
        cvDestroyWindow( "Pseudo-imaginea diferenta" );
        
        cvReleaseMat( &C );
        cvReleaseMat( &U );        
        cvReleaseMat( &V );
        cvReleaseMat( &AUX );
     }
     else
        printf( "Imaginea de intrare nu este patrata! (w != h)\n" );
}
