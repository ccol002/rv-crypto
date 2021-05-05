package byteMatching;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

///////////////////////////////////
//
//assumes a folder with buffer files and a single large frida file
//
///////////////////////////////////

public class FolderProcessing4 {

	
	private static byte[] sinkBytes;
	private static BufferedReader br;
	private static long fileSize;
	
	private static void loadBigFile(String fileName)
	{
		try {
			File file  = new File(fileName);
			br = new BufferedReader(new FileReader(file)); 
			fileSize = 0;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	private static void closeBigFile()
	{
		try {
			br.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
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
	
	private static byte[] readAllBytesFromFile(String fileName) throws Exception
	{

		List<Byte> list = new ArrayList<Byte>();
		
		try  {
			InputStream inputStream = new FileInputStream(fileName);
			long fileSize = 0;
			
			byte[] bytes = new byte[1000];
			String representation = "";

			int length = -1;
			do {
				length = inputStream.read(bytes);
				if (length > 0) {//returns -1 at end of file
					fileSize += bytes.length;
					for (int i=0; i<length; i++)
						list.add(bytes[i]);
					representation += bytesToHex(bytes) + " ";

				}
			} while (length >0);
	        System.out.println("Bufferfile: " + representation);
	        inputStream.close();
	       	 
	        } catch (IOException ex) {
	            throw ex;
	        } 
		
		byte[] bytes = new byte[list.size()];
		int i=0;
		for(Byte b: list)
		    bytes[i++] = b.byteValue();
		
		return bytes;
	}
	
	
 	private static byte[] getNextDump() throws Exception
	{
 		Dump d = null;
 		
		try {

			String st = br.readLine();
			int iSize = st.indexOf("nSize=");
			if (iSize != -1) {
				int eSize = st.indexOf(",",iSize);
				int size = Integer.parseInt(st.substring(iSize + 6, eSize));

				fileSize += size;

				d = new Dump();
				for (int i = 0; i< size; i+=16)
				{
					st = br.readLine();
					d.addToDump(st);
				}
			}
			else
				throw new Exception("nSize expected but not found: " + st);


		} catch (IOException ex) {
			throw ex;
		} 
		
		System.out.println("Sink file: "+ d);
		return d.getByteArray();
	}
	
 	
// 	public static void fridaFile(String folderName) throws Exception
// 	{
// 		String fridaFileName = folderName + "/"+ "frida.out";
//		
// 		File f = new File(fridaFileName);
//		if (!f.exists()) //processed all available files
//			throw new Exception("Frida file not found! " + fridaFileName);
//
//		//sink file			
//		loadBigFile(fridaFileName);
//		sinkBytes= readBytesFromFile();
// 		
// 	}
	
	public static void processFolder(String folderName)
	{
		try {
			
			PrintWriter pw = null;
			
			// folder
			System.out.println("Starting folder: " + folderName);
			

			int fileCount = 0;//6780;

			pw = new PrintWriter(folderName + ".csv");

			System.out.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			System.out.println("Stopping on first fine-grained match below threshold");
			
			pw.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			pw.println("Stopping on first fine-grained match below threshold");
			pw.println("Buffers sized less than a certain minimum are discarded");
			pw.println("Filename, Fine-grained tries, Coarse-grained Measure, Fine-grained Measure, offset, Buffer size (bytes), Heap size (bytes), time taken (ms)");

			boolean found = false; //i.e. match not yet found
			
			//loop through files in folder
			while (!found) {

				String fileName = String.format("%10s", ""+ (++fileCount)).replace(' ', '0');//pad with zeros
				String bufferFileName = fileName + "_buffer.bin";
				
				System.out.println("\r\n\r\n************* Processing file " + fileName);
				pw.print(fileName);
				pw.flush();

				try {
				//source file
				byte[] bufferBytes= readAllBytesFromFile(folderName + "/buffers/" + bufferFileName);
				
				long lastTimeStamp = System.currentTimeMillis();

				
				if (bufferBytes.length < 20) 
				{			
					System.out.println("SKIPPED due to short length");
					//skip buffers which are very small
					pw.print(",,,,");
				} else {
					
					loadBigFile(folderName + "/"+ "frida.out");//load the big file frida.out
					
					while (!found)
					{
						try {
							sinkBytes = getNextDump();//get next bytes from large file

							//skip this sink if smaller than buffer we are looking for
							if (sinkBytes.length != bufferBytes.length)
								continue;
							
//							System.out.println("sinkBytes: ");
//							ByteSlider.displayArray(sinkBytes);
//							System.out.println("bufferBytes: ");
//							ByteSlider.displayArray(bufferBytes);

							ByteSlider ss = new ByteSlider(bufferBytes,sinkBytes);
							//string matching
							ss.runThrough(pw);
						}
						catch (Exception ex)
						{
							//reached end of file
							break;
						}
					}
					
					closeBigFile();
				}//big file loop

				System.out.println("Buffer size (bytes) " + bufferBytes.length);
				pw.print("," +bufferBytes.length);
				System.out.println("Heap size (bytes) " + fileSize);
				pw.print("," +fileSize);
				System.out.println("Time taken (ms) " + (System.currentTimeMillis()-lastTimeStamp));
				pw.println("," +(System.currentTimeMillis()-lastTimeStamp));
				
				}catch(Exception ex)
				{
					ex.printStackTrace();
					break;
				}
			}// buffer files loop
			pw.close();


			}catch(Exception ex)
			{
				ex.printStackTrace();
			}


	}
 	
 	
	//pass root folder as parameter
	//this assumes a single dump file and a list of buffer files
	public static void main(String[] args) {

		processFolder(args[0]);


	}

	
	
	
}
