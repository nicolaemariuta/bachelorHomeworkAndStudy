
// Mihai Ivanovici, noiembrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void transformare_cosinus( IplImage* ); 

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
            
            transformare_cosinus( img );
            
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


void transformare_cosinus( IplImage* image )
{
    int		w, h;
    int		i, j;
    int     k, l;
    double	pi = 3.1415926;
    
    CvScalar   pixel;
    CvScalar   valoare;
    IplImage   *imagine_transformata;
    IplImage   *cosinus;

	int	    N, nivel;
	double  max = 0, min = 10000;
	double  value;
	CvMat	*C;	//matricea transformarii cosinus
	CvMat	*U;	//matricea imaginii in spatiul original
	CvMat	*V;	//matricea imaginii in spatiul transformatei
	CvMat   *AUX; //matrice auxiliara pentru rezultatul partial

 double m, M;

    w = image->width;
    h = image->height;

    if( w == h )
    {
        imagine_transformata = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
        
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


             double suma1 = 0; double suma2 = 0;
        
         for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  suma1=suma1+cvmGet(U,i,j)*cvmGet(U,i,j);
                  }
                  printf("Suma U: %f ", suma1);
                  
                  
         for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  suma2=suma2+cvmGet(V,i,j)*cvmGet(V,i,j);
                  }
                  printf("\nSuma V: %f", suma2);
                  




        //scalarea valorilor din matricea V in vederea afisarii
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  value = log( fabs( cvmGet( V, i, j ) ) );
                   cvmSet( V, i, j, value );
                   
             }
      
             
        cvMinMaxLoc( V, &m, &M, NULL, NULL, NULL);
        for( i = 0; i < N; i++ )
             for( j = 0; j < N; j++ )
             {
                  pixel.val[ 0 ] = ( int )( 255 * ( cvmGet( V, i, j ) - m ) / ( M - m ) );
                  cvSet2D( imagine_transformata, i, j, pixel ); 
             }

        cvNamedWindow( "Imaginea transformata", 1 );
        cvShowImage( "Imaginea transformata", imagine_transformata );
        cvWaitKey(0);
        cvReleaseImage( &imagine_transformata );
        cvDestroyWindow( "Imaginea transformata" );
        
        cvReleaseMat( &C );
        cvReleaseMat( &U );        
        cvReleaseMat( &V );
        cvReleaseMat( &AUX );
     }
     else
        printf( "Imaginea de intrare nu este patrata! (w != h)\n" );
}
