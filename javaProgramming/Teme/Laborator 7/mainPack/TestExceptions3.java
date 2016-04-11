
package mainPack;


public class TestExceptions3
{
	
	public static void main(String[] args)
	{
		try
		{
			System.out.println("Number format exception: ");
			String str1 = "123r";
			Integer n = Integer.parseInt(str1);
			
			System.out.println("ArrayIndexOutOfBoundsException: ");
			int[] sir = {1,2,3,4};
			sir[6] = 3;
			
			System.out.println("StringIndexOutOfBoundsException: ");
			String str2 = "abcde";
			char c1 = str2.charAt(-1);
			
			System.out.println("NullPointerException:");
			String str3 = null;
			System.out.println(str3.length());
			
			System.out.println("ArithmeticException:");
			int n2 = 12/0;
			
		}
		
		catch(NumberFormatException nfex)
		{
			System.out.println("Tratare exceptie NumberFormatException...");
			callException(nfex);
			
		}
		
		catch ( ArrayIndexOutOfBoundsException arrayEx)
		{
			System.out.println("Tratare exceptie ArrayIndexOutOfBoundsException... ");
			callException(arrayEx);
			
			
		}
		catch (StringIndexOutOfBoundsException stringEx)
		{
			System.out.println("Tratare exceptie StringIndexOutOfBoundsException...");
			callException(stringEx);
		}
		catch ( NullPointerException nullEx)
		{
			System.out.println("Tratare exceptie NullPointerException...");
			callException(nullEx);
		}
		catch (ArithmeticException aEx)
		{
			System.out.println("Tratare exceptie ArithmeticException...");
			callException(aEx);
		}
	}
	
	private static void callException (RuntimeException rtex)
	{
		System.out.println("Mesajul standard al exceptiei: ");
		System.out.println(rtex);
		System.out.println("Mesajul exceptiei:");
		System.out.println(rtex.getMessage());
		System.out.println("Mesajul local: ");
		System.out.println(rtex.getLocalizedMessage());
		System.out.println("Stack trace: ");
		rtex.printStackTrace(System.out);
	}

}
