package expresiiPostfixate;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Arrays;
import java.util.Stack;

public class ExpresiePostfixata

{
	public static void main(String[] args) 
	{
		evaluareExpresie("Laborator4\\expresiiPostfixate\\expresii.txt");
		
		
		
		
	}
	
	
	
	
	
	
	
	public static void evaluareExpresie(String url)
	{
		Stack<Integer> stack = new Stack();
		
		
		try
		{
			BufferedReader in = new BufferedReader(new FileReader(url));
			
			
			while(true)
			{
				
				
				
				
				int i = in.read();
				char c = (char) i;
				String s = String.valueOf(c);

				if(i == -1)
				{
					
					break;
				}
			
				
				
				try
				{
				int x = Integer.parseInt(s);
				stack.push(x);
				}
				
				
				
				catch(NumberFormatException exception)
			
				{
					if(c == '+')
					{
						int a = stack.pop();
						int b = stack.pop();
						stack.push( (a+b));
					
					}
					
					if(c == '*')
					{
						int a = stack.pop();
						int b = stack.pop();
						stack.push( (a*b));
					
					}
					
					if(c == '/')
					{
						int a = stack.pop();
						int b = stack.pop();
						stack.push( (a/b));
					
					}
					
					if(c == '-')
					{
						int a = stack.pop();
						int b = stack.pop();
						stack.push( Math.abs(a-b));
					
					}
					
				}
				
				
				for (int j =0; j<stack.size(); j++)
				{
					System.out.println("Stack<"+j+">= " + stack.get(j));
				}
				
				
				
				System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~");
			
			}
			
			in.close();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
