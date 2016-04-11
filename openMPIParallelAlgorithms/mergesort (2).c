#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h> 

void Mergesort_parallel( long *list, int size, int height )
{  int parent;
   int myRank, nProc;
   int next, child;

   MPI_Comm_rank (MPI_COMM_WORLD, &myRank);
   MPI_Comm_size (MPI_COMM_WORLD, &nProc);

   parent = myRank & ~(1<<height);
   next = height - 1;
   if ( next >= 0 )
      child = myRank | ( 1 << next );
	  
   if ( height > 0 )
   {
      printf ("The parent %d with id-ul %d with the child %d from %d\n proc", parent, myRank, child, nProc);
      if ( child >= nProc )     // No right child.  Move down one level
         Mergesort_parallel ( list, size, next );
      else
      {
	 int left_size = size/2;
         int right_size = size - left_size;
	 long *left  = (long*) calloc (left_size, sizeof *left);
         long *right = (long*) calloc (right_size, sizeof *right);
         
         MPI_Status status;  
		 
	 memcpy (left,  list, left_size*sizeof *left);
	 memcpy (right, list + left_size, right_size*sizeof *right);
         printf ("%d sending data to %d \n", myRank, child);        
         int i = 0, j = 0, k = 0; 
         int temp[2];

         temp[0] = right_size;
         temp[1] = next;
                  
	    MPI_Send( temp, 2, MPI_INT, child, 1,
              MPI_COMM_WORLD);
         MPI_Send( right, right_size, MPI_LONG, child, 2,
              MPI_COMM_WORLD);
          
	 Mergesort_parallel( left, left_size, next );

         printf ("%d waiting for data from the child no. %d\n", myRank, child);
         MPI_Recv( right, right_size, MPI_LONG, child, 3,
              MPI_COMM_WORLD, &status );
		 
	while ( i < left_size && j < right_size )
            if(left[i] > right[j]) 
	           list[k++] = right[j++]; 
	    else
	           list[k++] = left[i++];
         
         while ( i < left_size )
            list[k++] = left[i++];
         while ( j < right_size )
            list[k++] = right[j++];
	  	
	}
      }
   if ( parent != myRank )
       MPI_Send( list, size, MPI_LONG, parent, 3, MPI_COMM_WORLD );
}

void sorted (long **listP, int *sizeP)
{
   int size;
   int k;
   long *list;
   size = *sizeP;
   printf("%d\n", size);
   
   list = (long*) calloc (size, sizeof *list);
   for (k = 0; k<size; k++)
      list[k] = k+1;
	  *listP = list;
	  *sizeP = size;
}
int valid(long *list, int size) {
    int i;
    for (i=1; i<size; i++)
        if (list[i]!= i+1)
            return 0;
    return 1;
}

int main(int argc, char *argv[])
{
   int myRank, nProc;
   int   size;         // Size of the vector being sorted
   long *list;         // Vector for parallel sort
   
   srand(time(NULL));
   MPI_Init(&argc, &argv);

 
   if ( argc > 1 )
      size = atoi(argv[1]);
	  
   MPI_Comm_rank (MPI_COMM_WORLD, &myRank);
   MPI_Comm_size (MPI_COMM_WORLD, &nProc);
   
   printf ("Started rank %d\n", myRank);
   
   if ( myRank == 0 )        // Host process
   {
      int root = 0, nodeCount = 1;
      while ( nodeCount < nProc )
      {  
	     nodeCount ++; 
		 root++;  
      }
      sorted(&list, &size); //the vector to be sorted

	  Mergesort_parallel ( list, size, root);

    }  
	  else             
   {
      int temp[2],      
          height,          
          parent;          
      MPI_Status status;     

      MPI_Recv( temp, 2, MPI_INT, MPI_ANY_SOURCE, 1,
           MPI_COMM_WORLD, &status );
      size   = temp[0];     
      height = temp[1];  
      list = (long*) calloc (size, sizeof *list);

      MPI_Recv( list, size, MPI_LONG, MPI_ANY_SOURCE, 2,
           MPI_COMM_WORLD, &status );

      Mergesort_parallel ( list, size, height );
      printf ("%d finalize\n", myRank);
	MPI_Finalize();
      return 0;
   }
 if ( valid( list, size ) )
      puts ("Sorting succeeds.");
   else
      puts ("SORTING FAILS.");
   MPI_Finalize();
}
