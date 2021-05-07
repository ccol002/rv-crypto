package byteMatching;

import java.util.ArrayList;
import java.util.List;

public class Dump {

	private List<Byte> dump = new ArrayList<Byte>();
	private String representation = "";

	//1dc58202a50  00 00 34 ad f8 7f 00 00 00 40 01 00 00 00 00 00  ..4......@......
	public void addToDump(String dumpLine)throws Exception
	{		
		int i = dumpLine.indexOf("  ")+2;
		int e = dumpLine.indexOf("  ",i+2);
		dumpLine = dumpLine.substring(i,e);//drop address
		dumpLine = dumpLine.replaceAll("\\s","");//removing spaces
		
		if (dumpLine.length()%2 !=0)
			throw new Exception("Even length expected but found " + dumpLine);
		
		//representation += dumpLine;
		byte[] bytes = ByteUtils.hexStringToByteArray(dumpLine);
		for (int j = 0; j< bytes.length; j+=1)//note +=2 to skip 1 got several matches
			if (ByteUtils.filterBytes(bytes[j]))//filter in place
				dump.add(bytes[j]);
		
	}

	public byte[] getByteArray()
	{
		
		return ByteUtils.toByteArray(dump);
	}
	
	public List<Byte> getByteList()
	{
		return dump;
	}
	
	//should not be called before "setLength()" is called
	public String toString()
	{
		return "DUMP:" + ByteUtils.hexToAscii(ByteUtils.bytesToHex(getByteArray()));//representation;
	}

	
}
