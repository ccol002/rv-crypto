package stringMatching;

public class stringSlider {

	//set threshold for fine-grained string matching
	//set threshold to accept strings as matching (during fine-grained matching)
	//these are the same threshold due to the "conservative" way coarse-grained edit distance is calculated
	//ie if coarse-grained exceeds the threshold, fine-grained cannot be below it
	private final double threshold = 0.7;
	//0.2 threshold worked fine for sample 0 (0.1 threshold also gave 1 match)
	
	private String shorter;
	private String longer;
	
	
	//ensures "shorter" points to the shorter string
	// note that the edit distance we have is not symmetric: 
	// prefixes and suffixes of the longer string do not carry a cost
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
	
	
	
	
	//coarse-grained string matching
	public int[] runThrough()
	{

		int windowLength = shorter.length();
		int comparisons = longer.length()-shorter.length()+1;

		
		//distance at position zero
		String substring = longer.substring(0, windowLength);
		MultiSet msShorter = new MultiSet(shorter);
		MultiSet msLonger = new MultiSet(substring);
		
		//note that both strings are of same length since we are considering a substring of window size length
		int distance = msShorter.getDistance(msLonger);
		
		int[] windowDifferences = new int[comparisons];
		windowDifferences[0] = distance;
		
		int nonNormalisedThreshold = (int)(threshold * windowLength);
		
		//loop through comparisons
		for (int i=1; i<comparisons; i++)//step 0 already done
		{
//			if (i==comparisons-1)
//			{
//				System.out.println("Entering last comparison");
//			}
			
			char toDrop = longer.charAt(i-1);
			char toAdd = longer.charAt(i+windowLength-1);
			
			//remove parts which will change with window movement
			//by getting the relative difference in both strings related to the particular characters
			// note that this implements ED# in the paper since D and I cost functions are both 1.
			// instead of calculating all differences each time, we just update those which will be modified
			// the logic continues after we add/drop the characters
			distance -= Math.abs(msShorter.getPosition(toDrop) - msLonger.getPosition(toDrop));
			distance -= Math.abs(msShorter.getPosition(toAdd) - msLonger.getPosition(toAdd));
			
			msLonger.add(toAdd);
			msLonger.remove(toDrop);
			
			//this doesn't work here because we don't know the characters we are replacing... 
			//remember that the strings are just multisets
			//distance += costFunction(??, ??);
			
			//add parts which changed with window movement
			//see note above 
			distance += Math.abs(msShorter.getPosition(toDrop)- msLonger.getPosition(toDrop));
			distance += Math.abs(msShorter.getPosition(toAdd)- msLonger.getPosition(toAdd));
			
			//sanity check
//			if (distance != msShorter.getDistance(msLonger))
//				System.out.println("Implementation of adding/dropping is buggy!");
			//TODO we don't need to store all coarse-grained matching distances
			windowDifferences[i] = distance;
			
			//switching to fine-grained matching
			if (distance < nonNormalisedThreshold) {
				
				String window = longer.substring(i,i+windowLength-1);
				double fineGrainedDistance = StringUtils.taintDistance(shorter, window);
				System.out.println(" Applied fine-grained matching and obtained distance: " + fineGrainedDistance);
			
				if (fineGrainedDistance < threshold)
				{
					System.out.println(shorter);
					System.out.println(" FOUND TO MATCH ");
					System.out.println(window);
			
				}
			}
			
		}
		
		return windowDifferences;
	}
	
}






