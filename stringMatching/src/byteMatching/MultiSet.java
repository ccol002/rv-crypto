package byteMatching;

import java.util.Arrays;

public class MultiSet {


	private final int ALPHABET_SIZE = 256;
	
	private int[] chars = new int[ALPHABET_SIZE];
	
	public MultiSet (byte[] s)
	{
		//note switch to upper case
		for (byte b: s)
			chars[indx(b)] ++; //other characters are added in position 64
		
	}
	
	public int indx(byte b)
	{
		int i = b;
		
		if (i >=0 && i < ALPHABET_SIZE)
			return i;
		else
			return ALPHABET_SIZE-1;
	}
	
	public int getPosition(byte b)
	{
		return chars[indx(b)];
	}
	
	public int getPosition(int i)
	{
		return chars[i];
	}
	
	//returns the distance between this multiset and ms (passed as parameter)
	//this is done by considering the different counts of characters
	public int getDistance(MultiSet ms)
	{
		int total = 0;
		for (int i=0; i<ALPHABET_SIZE; i++)
			total += Math.abs(chars[i] - ms.getPosition(i));
		
		return total;
	}
	
	public int add(byte b)
	{
		return ++ chars[indx(b)]; 
	}
	
	public int remove(byte b)
	{
		return -- chars[indx(b)]; 
	}
	
	public String toString()
	{
		return Arrays.toString(chars);
	}
}
