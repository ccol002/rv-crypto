package stringMatching;

public class stringSlider {

	private String shorter;
	private String longer;
	
	
	
	public stringSlider(String s1, String s2)
	{
		if (s1.length() < s2.length())
		{
			this.shorter = s1.toUpperCase();
			this.longer = s2.toUpperCase();
		}
		else 
		{
			this.shorter = s2.toUpperCase();
			this.longer = s1.toUpperCase();
		}
	}
	
	public int[] runThrough()
	{

		int windowLength = shorter.length();
		int comparisons = longer.length()-shorter.length()+1;

		
		//distance at position zero
		String substring = longer.substring(0, windowLength);
		MultiSet msShorter = new MultiSet(shorter);
		MultiSet msLonger = new MultiSet(substring);
		
		int distance = msShorter.getDistance(msLonger);
		
		int[] windowDifferences = new int[comparisons];
		windowDifferences[0] = distance;
		
		for (int i=1; i<comparisons; i++)//step 0 already done
		{
//			if (i==comparisons-1)
//			{
//				System.out.println("Entering last comparison");
//			}
			
			char toDrop = longer.charAt(i-1);
			char toAdd = longer.charAt(i+windowLength-1);
			
			//remove parts which will change with window movement
			distance -= Math.abs(msShorter.getPosition(toDrop) - msLonger.getPosition(toDrop));
			distance -= Math.abs(msShorter.getPosition(toAdd) - msLonger.getPosition(toAdd));
			
			msLonger.add(toAdd);
			msLonger.remove(toDrop);
			
			//add parts which will change with window movement
			distance += Math.abs(msShorter.getPosition(toDrop) - msLonger.getPosition(toDrop));
			distance += Math.abs(msShorter.getPosition(toAdd) - msLonger.getPosition(toAdd));
			
			//sanity check
//			if (distance != msShorter.getDistance(msLonger))
//				System.out.println("Implementation of adding/dropping is buggy!");
			
			windowDifferences[i] = distance;
		}
		
		return windowDifferences;
	}
	
}
