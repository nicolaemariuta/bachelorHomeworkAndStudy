
// Mihai Ivanovici, octombrie 2010

#include "cv.h"
#include "highgui.h"
#include <stdio.h>
#include <stdlib.h>

void translateaza_imaginea( IplImage* img );

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
            
            translateaza_imaginea( img );
            
            
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


/*void translateaza_imaginea( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    int		   iprim, ty = 100, jprim, tx = 300;
    CvScalar   pixel;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
	          pixel = cvGet2D( image, i, j );
	    
	          iprim = i - ty;
	          if( iprim < 0 )
		      iprim += h-1;
		      jprim = j - tx;
		      if (jprim <0 )
		      jprim += w-1;
	    
	      iprim = i + ty;
	          if( iprim >= h )
		      iprim -= w;
		      jprim = j + tx;
		      if (jprim >= w )
		      jprim -= h;
	          cvSet2D( result, iprim, jprim, pixel );    
	    }*/
/*void translateaza_imaginea( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    int		   iprim, ty = 100, jprim, tx = 300;
    double     u = 30*CV_PI/180;
    CvScalar   pixel;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
	          pixel = cvGet2D( image, i, j );
	          cvSet2D( result, h-1-i, w-1-j, pixel );    
	    }
	    */
	   /* void translateaza_imaginea( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    int        x0, y0, x1, y1, x2, y2;
    int		   iprim, ty = 100, jprim, tx = 300;
    double     u = 30*CV_PI/180;
    CvScalar   pixel;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    cvZero(result);
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
	          pixel = cvGet2D( image, i, j );
	          x0= w/2;
	          y0= h/2;
	          
	          x1 = j;
	          y1 = i;
	          
	          jprim = cos(u)* (x1 - x0) - sin(u)*(y1 - y0) + x0;
	          iprim = sin(u)* (x1 - x0) + cos(u)*(y1 - y0) + y0;
	          if (iprim >0 && iprim< h)
	           if(jprim >0 && jprim <w)
	          cvSet2D( result, iprim, jprim, pixel );    
	    }
	 */
void translateaza_imaginea( IplImage* image )
{
    int		   w, h;
    int		   i, j;
    int        x0, y0, x1, y1, x2, y2;
    int		   iprim, ty = 100, jprim, tx = 300;
    double     u = 30*CV_PI/180;
    CvScalar   pixel;
    IplImage   *result;
    
    w = image->width;
    h = image->height;

    result = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 1 );    
    cvZero(result);
    for( i = 0; i < h; i++ )
	     for( j = 0; j < w; j++ )
	     {
	         // pixel = cvGet2D( image, iprim, jprim );
	          x0= w/2;
	          y0= h/2;
	          
	          x1 = j;
	          y1 = i;
	          
	          jprim = (int)(cos(u)* (x1 - x0) - sin(u)*(y1 - y0) + x0);
	          iprim = (int)(sin(u)* (x1 - x0) + cos(u)*(y1 - y0) + y0);
	          if (jprim >0 && jprim< w)
	           if(iprim >0 && iprim <h){
                pixel = cvGet2D( image, iprim, jprim );
                cvSet2D( result, i, j, pixel );    
          }
        
        }

     cvNamedWindow( "Imaginea rezultat", 1 );
     cvShowImage( "Imaginea rezultat", result );
    
     cvWaitKey(0);
     cvReleaseImage( &result );
     cvDestroyWindow( "Imaginea rezultat" );
}

