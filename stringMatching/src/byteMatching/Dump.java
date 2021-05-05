package byteMatching;

import java.util.ArrayList;
import java.util.List;

public class Dump {

	private List<Byte> dump = new ArrayList<Byte>();
	private String representation = "";

	public void addToDump(String dumpLine)throws Exception
	{		
		dumpLine = dumpLine.substring(dumpLine.indexOf("  ")+2);//drop address
		for (int i = 0; i < 48; i +=3) {
			if (dumpLine.charAt(i)==' ') break;
			else 
			{
				dump.add( (byte) ((Character.digit(dumpLine.charAt(i), 16) << 4)
	                             + Character.digit(dumpLine.charAt(i+1), 16))
	        		);
				representation += dumpLine.substring(i,i+2) + " ";
			}
	    }
		//representation += dumpLine.substring(48);
	}

	public byte[] getByteArray()
	{
		byte[] bytes = new byte[dump.size()];
		int i=0;
		for(Byte b: dump)
		    bytes[i++] = b.byteValue();
		
		return bytes;
	}
	
	//should not be called before "setLength()" is called
	public String toString()
	{
		return "DUMP:" + representation;
	}

	
}
