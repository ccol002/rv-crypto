package stringMatching;

import java.util.Arrays;

public class MultiSet {

	private final int ASCII_START = 48;
	private final int ALPHABET_SIZE = 91-ASCII_START+1;
	
	private int[] chars = new int[ALPHABET_SIZE];
	
	public MultiSet (String s)
	{
		//note switch to upper case
		for (Character c: s.toUpperCase().toCharArray())
			chars[indx(c)] ++; //other characters are added in position 64
		
	}
	
	public int indx(char c)
	{
		int i = c-ASCII_START;
		
		if (i >=0 && i < ALPHABET_SIZE)
			return i;
		else
			return ALPHABET_SIZE-1;
	}
	
	public int getPosition(char c)
	{
		return chars[indx(c)];
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
	
	public int add(Character c)
	{
		return ++ chars[indx(c)]; 
	}
	
	public int remove(Character c)
	{
		return -- chars[indx(c)]; 
	}
	
	public String toString()
	{
		return Arrays.toString(chars);
	}
}
