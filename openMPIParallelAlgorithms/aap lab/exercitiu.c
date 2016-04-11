# include <stdlib.h>
# include <stdio.h>
# include <mpi.h>

int main(argc, argv)
int argc;
char *argv[];
{
int rank, size, x=25;
MPI_Status status;

MPI_Init(&argc, &argv);
MPI_Comm_rank(MPI_COMM_WORLD, &rank);
MPI_Comm_size(MPI_COMM_WORLD, & size);

if(size!=2)
{
printf("Numarul de procese trebuie sa fie 2");
return 0;
}
else 
{
if (rank==0)
{
	MPI_Send(&x, 1, MPI_INT, 1,0, MPI_COMM_WORLD);
	printf("Procesul %d a transmis valoarea %d \n", rank,x);

}
else
if(rank==1)
{
	MPI_Recv(&x, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, &status);
	printf("Procesul %d a primit valoarea %d \n", rank,x);
}
}
MPI_Finalize();

return ;
}
