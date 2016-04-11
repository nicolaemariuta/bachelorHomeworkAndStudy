package mainPack;

import java.io.IOException;

public class Aranjamente 
{
	
	static int[] x;
    static int n;
    static boolean succ, eValid;

    public static void main(String[] args) throws IOException {
       
    	n  = 3;
        x = new int[n];
        
        
        
        Aranjamente p = new Aranjamente();
        
        for(int i = 0; i < 3; i++)
        {
        	init(0);
        }
        
        
        p.BackTraking();
        afisare();
    
    }

    static boolean solutie(int k) {
        if (k == n - 1)
            return true;
        else
        return false;
    }

    static void succesor(int k) {
        if (x[k] < n) {
            x[k]++;
            succ=true;
        }else{
            succ=false;
        }
    }

    static void valid(int k) {
        eValid=true;
        for (int i = 0; i < k-1; i++)
            if (x[i] == x[k] || k-1 == Math.abs(x[i]-x[k]))
                eValid=false;
    }

    static void init(int k) {
    	
        x[k] = 0;
    }

    static void afisare()
    {
    	
    	System.out.println();

        for (int i = 0; i < n; i++)
        {
       
            System.out.print(x[i]+" ");
        }
    }

    private void BackTraking() {
        int k = 0;
        init(k);
        while (k > -1){
            do{
                succesor(k);
                if (succ == true)
                    valid(k);
            }while((succ) && !(succ && eValid));
            if (succ){
                if (solutie(k))
                    afisare();
                else{
                    k++;
                    init(k);
                }
            }else{
                k--;
            }
        }
    }

}
