#include <stdio.h>
#include "mpi.h"

int main (int argc, char* argv[])
{
	int rank, size;
	int suma,rezultat;


	MPI_Init(&argc,&argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &rank);
	MPI_Comm_size(MPI_COMM_WORLD, &size);
		
	suma=rank+1;
	rezultat=0;

	MPI_Reduce(&suma,&rezultat,1,MPI_INT,MPI_SUM,0,MPI_COMM_WORLD);
	if(rank == argc-1)printf("Suma=%d\n",rezultat);
	printf("Rank: %d; ", rank+1);
	MPI_Finalize();


return 0;
}

/* 

Reduce valorile de la toate procesele, la o singura va
loare.
Combină valorile din sendbuf ale fiecărui proces, folosind operaţia op şi pune rezultatul în recvbuf în procesul root.  

int MPI_Reduce(const void *sendbuf, void *recvbuf, int count, MPI_Datatype datatype,
               MPI_Op op, int root, MPI_Comm comm)




 */
