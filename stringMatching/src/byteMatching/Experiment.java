package byteMatching;

import java.util.Arrays;

public class Experiment {
	
	
	public static int experiment(long tests, int length, int alphabet, double threshold)
	{
		int matches = 0;
		
		for (int i=0; i < tests; i++)
		{
			byte[] s = ByteUtils.randomByteArray(length, alphabet);
			//System.out.println(Arrays.toString(s));
			byte[] t = ByteUtils.randomByteArray(length, alphabet);
			//System.out.println( Arrays.toString(t));
			
			double distance = ByteUtils.taintDistance(s, t);
			
			if (distance <= threshold)
			{
//				System.out.println(distance);
//				System.out.println(Arrays.toString(s));
//				System.out.println(Arrays.toString(t));
//				System.out.println();
				matches ++;
			}
		}
		return matches;
	}
	
	public static void displayExperiment(int length, int alphabet, double threshold, int matches, long tests)
	{
//		System.out.print("\r\nLen: " + length);
//		System.out.print(" Alpha: " + alphabet);
//		System.out.println(" Thresh: " + threshold);
//		System.out.println(matches/(double)tests);
		System.out.println(length + "," + alphabet + "," + threshold + "," + matches/(double)tests);
	}
	
	public static void displayResult(int length, int alphabet, double threshold, int matches, long tests)
	{
		
		System.out.println(matches/(double)tests);
	}

	public static void main(String[] args)
	{
		long timeStarted = System.currentTimeMillis();
		long tests = 100*1000*1000l;
		//int length = 0;
		int alphabet = 40;
		
		double threshold = 0.33;
		
//		for (int i=2; i<=10; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//	
//		threshold = 0.7;
//		
//		for (int i=2; i<=40; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//		
//		alphabet = 70;
//		
//		threshold = 0.33;
//		
//		for (int i=2; i<=10; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//	
//		threshold = 0.7;
//		
//		for (int i=2; i<=35; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//		
		alphabet = 256;
		
//		threshold = 0.33;
//		
//		for (int i=2; i<=10; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//	
//		threshold = 0.7;
//		
//		for (int i=2; i<=20; i+=1)
//			displayExperiment(i, alphabet, threshold
//					,experiment(tests, i, alphabet, threshold), tests);
//		
		threshold = 0.85;
		
		for (int i=2; i<=80; i+=1)
			displayExperiment(i, alphabet, threshold
					,experiment(tests, i, alphabet, threshold), tests);

		System.out.println("Time taken: (ms) " + (System.currentTimeMillis() - timeStarted));
		
	}
	
	
	
	
}
