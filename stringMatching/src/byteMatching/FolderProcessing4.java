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

	
	private final static long SINK_LENGTH = 1000000;//~100Mb
	private static byte[] sinkBytes;
	private static BufferedReader br;
	private static long fileSize = 0;
	private static long previousFileSize = -1;
	private static Dump d = null;
		
	
	
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
	
	// reads a whole file of bytes such as 
	// 0000 b501 0500 0000 1989 6196 d07a be94
	// 032a 681f a504 0105 40b9 7022 b816 d4c5
	// a37f 77e9 8a22 4b25 a692 091b 8dc6 5a76
	// 3659 8d97 8118 dd03 e572 428d f148 d32e
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
						if (ByteUtils.filterBytes(bytes[i]))//filter in place
							list.add(bytes[i]);
					representation += ByteUtils.bytesToHex(ByteUtils.toByteArray(list));
					//System.out.println(fileSize);

				}
			} while (length >0);
			
	        System.out.println("Bufferfile: " + representation);
	        System.out.println(ByteUtils.hexToAscii(representation));
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
	
	
 	private static Dump getNextDump() throws Exception
	{
 		//reset dump
 		d = new Dump();
 		//if (previousFileSize == -1)
 			System.out.print(".");
 			System.out.flush();
 		//else
 		//	System.out.write(("\r" + fileSize*100/previousFileSize + "%").getBytes());
 		
 		int thisRun = 0;
 		while (thisRun < SINK_LENGTH && br.ready()) {
 			
		try {

			String st = br.readLine();
			int iSize = st.indexOf("nSize=");
			if (iSize != -1) {
				int eSize = st.indexOf(",",iSize);
				int size = Integer.parseInt(st.substring(iSize + 6, eSize));

				thisRun += size;

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
 		}
		
 		fileSize += thisRun;
		//System.out.println("Sink file: "+ d);
		return d;
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
			
			//test
//			String s = "123235adebd45d68034092";
//			System.out.println(s);
//			//get bytes
//			byte[] b = ByteUtils.hexStringToByteArray(s);
//			//get string
//			
//			System.out.println((ByteUtils.bytesToHex(b)));
			
			
			
			int fileCount = 0;//6780;

			pw = new PrintWriter(folderName + ".csv");

			System.out.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			System.out.println("Stopping on first fine-grained match below threshold");
			
			pw.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			pw.println("Stopping on first fine-grained match below threshold");
			pw.println("Buffers sized less than a certain minimum are discarded");
			pw.println("Filename, Coarse-grained Measure, Fine-grained Measure, offset, Fine-grained tries, Buffer size (bytes), Heap size (bytes), time taken (ms)");

			boolean found = false; //i.e. match not yet found
			
			//loop through buffer files in folder
			while (true) {

				String fileName = String.format("%10s", ""+ (++fileCount)).replace(' ', '0');//pad with zeros
				String bufferFileName = fileName + "_buffer.bin";
				
				int fineGrainedTries = 0;
				
				
				System.out.println("\r\n\r\n************* Processing file " + fileName);
				pw.flush();
				pw.print(fileCount);


				try {
				//source file
				byte[] bufferBytes= readAllBytesFromFile(folderName + "/buffers/" + bufferFileName);
				
				long lastTimeStamp = System.currentTimeMillis();

				
				if (bufferBytes.length < 20) 
				{			
					System.out.println("SKIPPED due to short length");
					//skip buffers which are very small
					pw.println(",buffer too small");
					continue;//skip this buffer file
				} else {
					
					loadBigFile(folderName + "/"+ "frida.out");//load the big file frida.out
					
					while (!found)
					{
						try {
							Dump d = getNextDump();
							sinkBytes = d.getByteArray();//get next bytes from large file

							if (sinkBytes.length == 0)
								break;
							//skip this sink if smaller than buffer we are looking for
							if (sinkBytes.length < bufferBytes.length)
								continue;
							
//							System.out.println("sinkBytes: ");
//							ByteSlider.displayArray(sinkBytes);
//							System.out.println("bufferBytes: ");
//							ByteSlider.displayArray(bufferBytes);
							
							//System.out.println("Sink file: "+ d);
							ByteSlider ss = new ByteSlider(bufferBytes,sinkBytes);
							//string matching
							found = 
									ss.runThrough(pw);
							
							fineGrainedTries += ss.getFineGrainedTries();
							
							
						}
						catch (Exception ex)
						{
							
							ex.printStackTrace();
							//reached end of file
							break;
							
						}
					}//end of big file loop
					previousFileSize = fileSize;
					fileSize = 0;
					closeBigFile();
				}//else of big enough buffer


				if (!found)
				{
					pw.print(",,,,");
				}

				
				System.out.println();
				pw.print(","+fineGrainedTries);
				
				System.out.println("Buffer size (bytes) " + bufferBytes.length);
				pw.print("," +bufferBytes.length);
				System.out.println("Heap size (bytes) " + previousFileSize);
				pw.print("," +previousFileSize);
				System.out.println("Time taken (ms) " + (System.currentTimeMillis()-lastTimeStamp));
				pw.print("," +(System.currentTimeMillis()-lastTimeStamp));
				
				//pw.print("," + ByteUtils.hexToAscii(ByteUtils.bytesToHex(bufferBytes)));
				pw.println();
				
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
