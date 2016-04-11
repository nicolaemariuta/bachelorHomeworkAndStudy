#include <stdio.h>
#include<mpi.h>
#include<string.h>

int main(argc, argv)
	int argc;
	char *argv[];
{
int rank, size;
int x=5;
char sir[]="sir";

MPI_Status status;
MPI_Init (&argc, &argv);
MPI_Comm_rank (MPI_COMM_WORLD, &rank); /* get current process id */
MPI_Comm_size (MPI_COMM_WORLD, &size); /*get number of processes */


if(size>3){printf("Maxim 3 procese!");
		return 0;}
if(size==1){printf("Sunt acceptate 2 sau 3 procese!Un singur proces nu se accepta.");
		return 0;}
		
if(size==2){
	if(rank==0){
	sprintf(sir,"%s%d",sir,rank);
	MPI_Send(&sir,4,MPI_CHAR,1,0,MPI_COMM_WORLD);
	printf("Procesul %d a trimis sirul (%s) la procesul %d\n" , rank,sir,rank+1);
	}
	else if(rank==1){
	MPI_Recv(&sir,4,MPI_CHAR,0,MPI_ANY_TAG,MPI_COMM_WORLD,&status);
	printf("Procesul %d a primit sirul (%s) de la procesul %d\n" ,rank,sir,rank-1);
	}
}

if(size==3){
	if(rank==0){
	sprintf(sir,"%s%d",sir,rank);
	MPI_Send(&sir,5,MPI_CHAR,1,0,MPI_COMM_WORLD);
	printf("Procesul %d a trimis sirul (%s) la procesul %d\n" , rank,sir,rank+1);
	}
	if(rank==1){ 
	MPI_Recv(&sir,5,MPI_CHAR,0,MPI_ANY_TAG,MPI_COMM_WORLD,&status);
	printf("Procesul %d a primit sirul (%s) de la procesul %d\n" ,rank,sir,rank-1);
	
	sprintf(sir,"%s%d",sir,rank);
	MPI_Send(&sir,6,MPI_CHAR,2,1,MPI_COMM_WORLD);
	printf("Procesul %d a trimis sirul (%s) la procesul %d\n" , rank,sir,rank+1);
	
	}
	if(rank==2){ 
	MPI_Recv(&sir,6,MPI_CHAR,1,MPI_ANY_TAG,MPI_COMM_WORLD,&status);
	printf("Procesul %d a primit sirul (%s) de la procesul %d\n" ,rank,sir,rank-1);
	}
}



MPI_Finalize();
return 0;
}

/* 
~~TEMA~~
pentru compilare: mpicc fisier.c
pentru rulare: mpirun -np <nr_procese> a.out

1. Transmitere mesaj intre x procese. Fiecare proces dupa ce a primit mesajul isi adauga ID-ul propriu la mesaj. Pe urma transmite mai departe mesajul la urmatorul proces si le afiseaza. 

Procedura: am mesajul ( string ) , procesul 0: trimite si afiseaza, procesul 1: primeste, adauga,trimite etc

2. calculul sumelor prefix a n numere.
 */
