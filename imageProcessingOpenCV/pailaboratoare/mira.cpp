
// Mihai Ivanovici, octombrie 2010

#include "cv.h"
#include "highgui.h"

int main( int argc, char** argv )
{
    int		i, j;
    int		w = 600, h = 400;
    CvScalar   pixel;
    IplImage *mira;

    mira = cvCreateImage( cvSize( w, h ), IPL_DEPTH_8U, 3 );
  
    for( i = 0; i < w; i++ )
    	for( j = 0; j < h; j++ )
        {
             pixel.val[2] = (int)( j / 80 ) * 255./4;
             pixel.val[1] = (int)( i / 80 ) * 255./4;
          //   pixel.val[1] = (int)( i / 80 ) * 255./5;
           //  pixel.val[2] = (int)( i / 50 ) * 255./5;
             cvSet2D( mira, j, i, pixel );
        }

    cvNamedWindow( "Mira", 1 );
    cvShowImage( "Mira", mira );
    cvWaitKey(0);
    cvReleaseImage( &mira );
    cvDestroyWindow( "Mira" );
}

