package byteMatching;

import java.io.PrintWriter;
import java.util.Arrays;

public class ByteSlider {

	//set threshold for fine-grained string matching
	//set threshold to accept strings as matching (during fine-grained matching)
	//these are the same threshold due to the "conservative" way coarse-grained edit distance is calculated
	//ie if coarse-grained exceeds the threshold, fine-grained cannot be below it
	public final static double threshold = 0.1;
	//0.2 threshold worked fine for sample 0 (0.1 threshold also gave 1 match)
	
	
	
	private byte[] shorter;
	private byte[] longer;
	
	
	//ensures "shorter" points to the shorter string
	// note that the edit distance we have is not symmetric: 
	// prefixes and suffixes of the longer string do not carry a cost
	public ByteSlider(byte[] s1, byte[] s2)
	{
		if (s1.length < s2.length)
		{
			this.shorter = s1;
			this.longer = s2;
		}
		else 
		{
			this.shorter = s2;
			this.longer = s1;
		}
	}
	
	public static void displayArray(byte[] array)
	{
		for (byte b: array)
			System.out.print(String.format("%4s", b)+",");
		System.out.println();
	}
	
	
	//coarse-grained string matching
	//with fine grained matching if below threshold
	
	//returns true if a match is found
	public boolean runThrough(PrintWriter pw)
	{
		
		int windowLength = shorter.length;
		int comparisons = longer.length-shorter.length+1;

//		int optimised = 1;//windowLength/optimisation;
//		if (optimised < 1) optimised = 1;
//		if (optimised > 1) 
//			System.out.println("");
		
		//distance at position zero
		byte[] substring = Arrays.copyOfRange(longer, 0, windowLength);
		ByteMultiSet msShorter = new ByteMultiSet(shorter);
		ByteMultiSet msLonger = new ByteMultiSet(substring);
		
		//note that both strings are of same length since we are considering a substring of window size length
		int distance = msShorter.getDistance(msLonger);
		
//		int[] windowDifferences = new int[(comparisons/optimised)+1];
//		windowDifferences[0] = distance;
		
		double normalisedThreshold = threshold * windowLength;
		
		
		boolean found = false;
		int fineGrainedTries = 0;
		
		boolean matchInProgress = false;
		int matchProgress = 0;
		
		//loop through comparisons
		for (int i=1; i<comparisons; i++)//step 0 already done
		{
//			if (i==comparisons-1)
//			{
//				System.out.println("Entering last comparison");
//			}
			
			byte toDrop = longer[i-1];
			byte toAdd = longer[i+windowLength-1];
			
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
//			if (i/optimised > windowDifferences.length-1)
//				System.out.println("consider here");
			//windowDifferences[i/optimised] = distance;
			
			//switching to fine-grained matching
			if (distance <= normalisedThreshold) {

				if (matchInProgress) {
					matchProgress ++;
				}
				else {
					matchInProgress = true;
					matchProgress = 0;
				}
			} else if (matchInProgress)
			{
				matchInProgress = false;
				fineGrainedTries++;

				//			
				//calculate fine-grained distance
				//apply finegrained algorithm to i-matchProgress
				//perhaps consider multiple checking attempts for very long substrings?
				//NOTE: since we are using matchProgress/2, the fineGrainedDistance obtained doesn't correspond to the last coarseGrained obtained
				// this explains why sometimes the fineGrainedDistance will be smaller than the coarseGrained one
				int offset = i-(matchProgress); 
				byte[] window = Arrays.copyOfRange(longer, offset,offset+windowLength);
				double fineGrainedDistance = ByteUtils.taintDistance(shorter, window);

				//			if (fineGrainedDistance==0) 
				//			{
				//				System.out.println("!!!Exact MATCH FOUND!!!");
				//				break;
				//			}
				//			else 
				if (fineGrainedDistance <= threshold)
				{
					System.out.println("* MATCH after fine-grained tries: " + fineGrainedTries);
					System.out.println("* Coarse-grained distance: " + distance/(1.0*shorter.length));
					System.out.println("* Fine-grained distance: " + fineGrainedDistance);//note this is already normalised
					System.out.println("* Offset: " + offset);
					displayArray(shorter);
					//System.out.println(" FOUND TO MATCH ");
					displayArray(window);
					
					pw.print(","+fineGrainedTries);
					pw.print(","+distance/(1.0*shorter.length));
					
					pw.print(","+fineGrainedDistance);
					pw.print(","+offset);
					found = true;
					break;
					
				}
				else {
					System.out.println("* ATTEMPT: " + fineGrainedTries);
					System.out.println("* Coarse-grained distance: " + distance/(1.0*shorter.length));
					System.out.println("* Fine-grained distance: " + fineGrainedDistance);
					System.out.println("* Offset: " + offset);
					displayArray(shorter);
					//System.out.println("NOT FOUND TO MATCH ");
					displayArray(window);
				}
			}

		}//forloop

		if (!found)
		{
			pw.print(","+fineGrainedTries);
			pw.print(",,,");
		}

		return found;//windowDifferences;
	}

}






