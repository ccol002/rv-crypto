package stringMatching;

public class StringUtils {

	
	private final static int INSERTION = 1;
	private final static int DELETION = 1;
	private final static int SUBSTITUTION = 2;
	
	
	public static int S(char a, char b)
	{
		if (a == b)
			return 0;
		else
			return SUBSTITUTION;
		
	}
	
	public static int I(char a)
	{
		return INSERTION;
		
	}
	
	public static int D(char a)
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
	public static double taintDistance(String s, String t)
	{
		//prepare m,n array
		int n = s.length();
		int m = t.length();
		int[][] M  = new int[n][m];
		
		double d=0;
		
		//initialisation
		// this follows directly from paper in paragraph just above definition of TD
		for (int i = 0; i < n; i++)
			M[i][0] = i;
		for (int j = 0; j < m; j++)
			M[0][j] = j;
		
		//dynamically calculate all distances
		for (int i = 1; i < n; i++)
			for (int j = 1; j < m; j++)
			{
				char Si = s.charAt(i);
				char Tj = t.charAt(j);
				
				M[i][j] = Math.min(M[i-1][j-1] + S(Si,Tj)
						, Math.min(M[i-1][j] + D(Si)
								 , M[i][j-1] + I(Tj)));
			}
		
		//find minimum
		d = M[n-1][0];
		for (int j = 1; j < m; j++)
			if (M[n-1][j] < d)
				d = M[n-1][j];
		
		//return normalised distance
		//divide by D(s) - the cost of deleting s
		return d/n;
		
		
	}
	
	
	
	
	
	
	
	
	
}
