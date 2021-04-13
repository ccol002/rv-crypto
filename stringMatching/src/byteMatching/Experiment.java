package byteMatching;

import java.util.Arrays;

public class Experiment {
	
	
	public static void experiment(long tests, int length, double threshold)
	{
		int matches = 0;
		
		for (int i=0; i < tests; i++)
		{
			byte[] s = ByteUtils.randomByteArray(length);
			//System.out.println(Arrays.toString(s));
			byte[] t = ByteUtils.randomByteArray(length);
			//System.out.println( Arrays.toString(t));
			
			double distance = ByteUtils.editDistance(s, t);
			
			if (distance <= threshold)
			{
//				System.out.println(distance);
//				System.out.println(Arrays.toString(s));
//				System.out.println(Arrays.toString(t));
//				System.out.println();
				matches ++;
			}
		}
		System.out.println("\r\nString length: " + length);
		System.out.println("Threshold: " + threshold);
		System.out.println("Random match probability: " + matches/(double)tests);
	}

	public static void main(String[] args)
	{
		long tests = 10*1000000l;
		//int length = 0;
		
		double threshold = 0.9;
		
		for (int i=2; i<=10; i+=1)
			experiment(tests, i, threshold);
		

	}
	
	
	
	
}
