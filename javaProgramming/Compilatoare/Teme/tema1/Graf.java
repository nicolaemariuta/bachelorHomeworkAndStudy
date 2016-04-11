package tema1;

public class Graf {
	
	public static void main(String[] args) {
		
		String vocabular = "ab";
		int[] puncte = {1,2,3};
		
		int start = 1;
		
		int[][] graf = {{2,3},
						{2,3},
						{3,1}};
		
		String cuvant = "ababab";
		
		int l = cuvant.length();
		
		for(int i = 0; i < l; i++)
		{
			System.out.println( (i+1) + ". " + puncte[start-1] + "," +cuvant);
			
			start = graf[start-1][vocabular.indexOf(cuvant.substring(0, 1))];
			cuvant = cuvant.substring(1,cuvant.length());
		}
		
		System.out.println("A ajuns in punctul: " + puncte[start-1]);
		
		
	}
	

}
