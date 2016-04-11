# include <stdlib.h>
# include <stdio.h>

# include "mpi.h" //header pt folosirea programului mpi

int main ( int argc, char *argv[] );
void ring_io ( int p, int id ); //transmitere si receptie mesaje

/******************************************************************************/

int main ( int argc, char *argv[] )

/******************************************************************************/

{
  int error;
  int id; //id-ul procesorului stabilim cine ce face
  int p;

  MPI_Init ( &argc, &argv ); //metoda mediu de comunicare, de lucru a diferitelor procesoare pe care vreau sa le pun la treaba

  MPI_Comm_size ( MPI_COMM_WORLD, &p ); //metoda MPI_COMM_WORLD  avem un pointer(&p) prin care transmitem programului nr de procesoare ce vor rula programul respectiv, in principiu 4

  MPI_Comm_rank ( MPI_COMM_WORLD, &id ); //metoda pointer (variabila transmisa prin referita- &id), specifica tipul procesorul ce executa task-ul
					//procesorul 0 nu are ce sa faca el doar transmite la procesul 1
					//ultimul proces din lista de procese de ex. 10 va primii valoarea si va retrimite inapoi la procesul 0
					//determin rank-ul

  if ( id == 0 )
  {
    printf ( "\n" );
    printf ( "RING_MPI:\n" );
    printf ( "  C/MPI version\n" );
    printf ( "  Measure time required to transmit data around\n" );
    printf ( "  a ring of processes\n" );
    printf ( "\n" );
    printf ( "  The number of processes is %d\n", p );
  }

  ring_io ( p, id );//apel metoda ring_io cu argumentele: p-nr de procesoare si id - idul(in cazul nostru 0)

  MPI_Finalize ( );//ca sa se termine tot sa se incheie toata executia programului de catre cele 4 procesoare

  if ( id == 0 )//se incheie cu id-ul 0
  {
    printf ( "\n" );
    printf ( "RING_MPI:\n" );
    printf ( "  Normal end of execution.\n" );
  }
  return 0;
}
/******************************************************************************/

void ring_io ( int p, int id )//implemenatre metoda ring_io face efectiv transmiterea de valori intre procese(nu returneaza nimic)


{
  int dest;
  int i;
  int j;
  int n;
  int n_test_num = 5;
  int source;
  MPI_Status status;
  double tave;
  int test;
  int test_num = 10;
  double tmax;//timp
  double tmin;//timp
  double wtime;//timp; cu cei 3 timpi vom avea afisat timpul minim de executie, maxim si average
  int x;

  if ( id == 0 )
  {
    printf ( "\n" );//cap de tabel
    printf ( "  Timings based on %d experiments\n", test_num );
    printf ( "  N double precision values were sent\n" );
    printf ( "  in a ring transmission starting and ending at process 0\n" );
    printf ( "  and using a total of %d processes.\n", p );
    printf ( "\n" );
    printf ( "         N           T min           T ave           T max\n" );
    printf ( "\n" );
  }
/*
  Choose message size.
*/
  for ( i = 0; i < n_test_num; i++ )
  {    
   
/*
  Process 0 sends very first message, 
  then waits to receive the "echo" that has gone around the world.
*/
    if ( id == 0 )
    {
      dest = 1;
      source = p-1;

      tave = 0.0;
      tmin = 1.0E+30;
      tmax = 0.0;

      for ( test = 1; test <= test_num; test++ )
      {
/*
  Just in case, set the entries of X in a way that identifies
  which iteration of the test is being carried out.
*/
       
	x = id;

        wtime = MPI_Wtime ( );
	printf ( "x[1] = %d ce vreau sa trasmit\n", x);//afiseaza prima oara ce transmite si apoi ce primeste urmatorul
        MPI_Send ( &x, 1, MPI_INT, dest,   0, MPI_COMM_WORLD );//transmit un x(valoare) la destinatie
        MPI_Recv ( &x, 1, MPI_INT, source, 0, MPI_COMM_WORLD, &status );//sursa trebuie sa primeasca valoarea
	printf ( "x[11] = %d ce primeste urm. procesor \n", x);//pentru verificare
        wtime = MPI_Wtime ( ) - wtime;
/*
  Record the time it took.
*/
        tave = tave + wtime;
        if ( wtime < tmin )
        {
          tmin = wtime;
        }
        if ( wtime > tmax )
        {
          tmax = wtime;
        }
      }//calculeaza timpul-neimportant poate lipsii

      tave = tave / ( double ) ( test_num );

      printf ( "  %8d  %14.6g  %14.6g  %14.6g\n", n, tmin, tave, tmax );
    }
/*
  Worker ID must receive first from ID-1, then send to ID+1.
*/
    else
    {
      source = id -1;//in cazul in care id<>0, sursa este asa
      dest = ( ( id + 1 ) % p );//se calculeaza astfel pentru evitarea erorilor
 
      for ( test = 1; test <= test_num; test++ )
      {
	
	
        MPI_Recv ( &x, 1, MPI_INT, source, 0, MPI_COMM_WORLD, &status );//prima oara se primeste valoare respectiva si ulterior are loc retrimiterea(pt procesoarele diferite de 0)
	printf ( "x[2] = %d afisez ce am primit \n", x );//ca si la x[1] --se afiseaza ce primeste(0 pt procesul 1)
	x=id;

        MPI_Send ( &x, 1, MPI_INT, dest,   0, MPI_COMM_WORLD );
	printf ( "x[22] = %d trasmit mai departe\n", x);//tot pentru verificare ( se afiseaza ce se trasmite)
//cand trimit specific destinatia cand primesc descriu sursa

//-np pentru specificarea nr de procesoare 
      }
    }
    
  }

  return;
}
