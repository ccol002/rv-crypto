package byteMatching;

import java.util.Random;

public class ByteUtils {

	
	private final static int INSERTION = 1;
	private final static int DELETION = 1;
	private final static int SUBSTITUTION = 2;
	
	private static Random r = new Random();
	
	
	public static int S(byte a, byte b)
	{
		if (a == b)
			return 0;
		else
			return SUBSTITUTION;
		
	}
	
	public static int I(byte a)
	{
		return INSERTION;
		
	}
	
	public static int D(byte a)
	{
		return DELETION;
		
	}
	
	
	
	
	//dynamic programming string matching algorithm
	//based on edit distance
	// note this implements TD(s,t) = min (M) / D(s)
	// s is the short string
	// t is the long string
	//note that we take deletion and insertion to cost 1, substitution 2.
	// this function implements TD(s,t)
	public static double taintDistance(byte[] s, byte[] t)
	{
		//prepare m,n array
		int n = s.length;
		int m = t.length;
		int[][] M  = new int[n][m];
		
		double d=0;
		
		//initialisation
		// this follows directly from paper in paragraph just above definition of TD
		for (int i = 0; i < n; i++)
			M[i][0] = (i+1)*DELETION; //cost of deleting Si
		for (int j = 1; j < m; j++)
			M[0][j] = 0;//skipping j characters of T is ok
		
		//dynamically calculate all distances
		for (int i = 1; i < n; i++)
			for (int j = 1; j < m; j++)
			{
				byte Si = s[i];
				byte Tj = t[j];
				
				M[i][j] = Math.min(M[i-1][j-1] + S(Si,Tj)
								  , Math.min(M[i-1][j] + D(Si)
								  		   , M[i][j-1] + I(Tj)));
			}
		
		//find minimum 
		// this is to consider matching involving substrings of t
		d = M[n-1][0];
		for (int j = 1; j < m; j++)
			if (M[n-1][j] < d)
				d = M[n-1][j];
		
		//return normalised distance
		//divide by D(s) - the cost of deleting s
		return d/(n*DELETION);
	
	}
	
	public static double editDistance(byte[] s, byte[] t)
	{
		//prepare m,n array
		int n = s.length;
		int m = t.length;
		int[][] M  = new int[n][m];
		
		double d=0;
		
		byte Si = s[0];
		byte Tj = t[0];
		
		//initialisation
		//(the general case of the taint distance algo)
		M[0][0] = S(s[0],t[0]);
		
		for (int i = 1; i < n; i++)
			M[i][0] = M[i-1][0] + D(Si); 
		
		for (int j = 1; j < m; j++)
			M[0][j] = M[0][j-1] + I(Tj);
		
		
		//dynamically calculate all distances
		for (int i = 1; i < n; i++)
			for (int j = 1; j < m; j++)
			{
				Si = s[i];
				Tj = t[j];
				
				M[i][j] = Math.min(M[i-1][j-1] + S(Si,Tj)
								  , Math.min(M[i-1][j] + D(Si)
								  		   , M[i][j-1] + I(Tj)));
			}
		
		d = M[n-1][m-1];
		
		//return normalised distance
		//divide by D(s) - the cost of deleting s
		return d/(n*DELETION);
	
	}
	
	
	public static byte[] randomByteArray(int length, int alphabet)
	{
//	this has been replaced as it doesn't give a pseudorandom sequence when length is not exactly divisible by 4 
//	(random generate 4 random bytes at a time and discards the extras)
// https://stackoverflow.com/questions/51132512/random-nextbytesbyte-behavious-in-java
//
//		byte[] randomByteArray = new byte[length];
//		r.nextBytes(randomByteArray);
		
		byte[] rands = new byte[length];
		for (int i=0;i<length; i++)
			rands[i] = (byte)r.nextInt(alphabet);
		
		return rands;
	}
	
private static final char[] HEX_ARRAY = "0123456789abcdef".toCharArray();
	
	public static String bytesToHex(byte[] bytes) {
	    char[] hexChars = new char[bytes.length * 2];
	    for (int j = 0; j < bytes.length; j++) {
	        int v = bytes[j] & 0xFF;
	        hexChars[j * 2] = HEX_ARRAY[v >>> 4];
	        hexChars[j * 2 + 1] = HEX_ARRAY[v & 0x0F];
	    }
	    return new String(hexChars);
	}
	
	public static void displayArray(byte[] array)
	{
		for (byte b: array)
			System.out.print(String.format("%4s", b)+",");
		System.out.println();
	}
	
//	public static byte[] hexToBytes(String s)
//	{
//		dump.add( (byte) ((Character.digit(dumpLine.charAt(i), 16) << 4)
//                + Character.digit(dumpLine.charAt(i+1), 16))
//	);
//	}
	
	/* s must be an even-length string. */
	public static byte[] hexStringToByteArray(String s) {
	    int len = s.length();
	    byte[] data = new byte[len / 2];
	    for (int i = 0; i < len; i += 2) {
	        data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
	                             + Character.digit(s.charAt(i+1), 16));
	    }
	    return data;
	}
	
	/* s must be an even-length string. */
	public static String hexToAscii(String hexStr) {
	    StringBuilder output = new StringBuilder("");
	    
	    for (int i = 0; i < hexStr.length()-1; i += 2) {
	        String str = hexStr.substring(i, i + 2);
	        output.append((char) Integer.parseInt(str, 16));
	    }
	    
	    return output.toString();
	}
}
