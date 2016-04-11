package mainPack;

import java.io.File;

import net.sf.javaml.clustering.Clusterer;
import net.sf.javaml.clustering.KMeans;
import net.sf.javaml.core.Dataset;
import net.sf.javaml.core.DefaultDataset;
import net.sf.javaml.core.DenseInstance;
import net.sf.javaml.core.Instance;
import net.sf.javaml.tools.InstanceTools;
import net.sf.javaml.tools.data.FileHandler;

public class ClusteringTest {
	
	

    /**
     * Tests the k-means algorithm with default parameter settings.
     */
    public static void main(String[] args) throws Exception {
    	
    	
/*    	Dataset dataset = new DefaultDataset();
    	
    	for(int i =0; i<100000;i++)
    	{
    		
    		
    		
    		double[] d = new double[250];
    		for(int j =0; j<d.length; j++)
    		{
    			double random = Math.random()*9;
    			if (random<0.49)
    			{
    				d[j] = 0;
    			} else {d[j] = 1;}
    		}
    		
    		
    		Instance instance = new DenseInstance(d);
    		dataset.add(instance);
    	}
    	
    	System.out.println("*");
    	
    	Clusterer km = new KMeans(1);
    	
    	Dataset[] clusters = km.cluster(dataset);
		System.out.println(clusters.length);
		*/
    	
    	
    	double[] d = new double[250];
    	Instance instance = new  DenseInstance(d, "jazz");
    	
    	Object o = instance.classValue();
    	String s = (String) o;
    	
    	System.out.println(s);
		
		


    }

}
