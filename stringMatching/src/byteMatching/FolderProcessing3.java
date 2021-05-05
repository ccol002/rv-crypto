package byteMatching;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

///////////////////////////////////
//
//assumes a folder with buffer files and a single large dump file
//
///////////////////////////////////

public class FolderProcessing3 {

	
	private static byte[] sinkBytes;
	private static final long MAX_LENGTH = 1000000;//~1Mb at a time (biggest buffer is 16k)
	private static InputStream inputStream;
	private static long remaining;
	private static long fileSize;
	
	private static void loadBigFile(String fileName)
	{
		try {
			inputStream = new FileInputStream(fileName);
			fileSize = new File(fileName).length();
			remaining = fileSize;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	private static void closeBigFile()
	{
		try {
			inputStream.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	private static byte[] readAllBytesFromFile(String fileName) throws Exception
	{
		byte[] bytes= null;
		
		try (
	            InputStream inputStream = new FileInputStream(fileName);
	        ) {
	 
	            long fileSize = new File(fileName).length();
	            bytes = new byte[(int) fileSize];
	            inputStream.read(bytes);
	            inputStream.close();
	       	 
	        } catch (IOException ex) {
	            throw ex;
	        } 
		
		return bytes;
	}
	
	
 	private static byte[] readBytesFromFile() throws Exception
	{
		byte[] bytes= null;
		
		try {
				int readLength = (int)Math.min(remaining, MAX_LENGTH);//read maximum of 20000 bytes
	            remaining -= MAX_LENGTH;
	            
				bytes = new byte[readLength];
	            inputStream.read(bytes);
	       	 
	        } catch (IOException ex) {
	            throw ex;
	        } 
		
		return bytes;
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
					
					loadBigFile(folderName + "/"+ "dump.dmp");//load the big file frida.out
					
					while (!found && remaining >0)
					{
						sinkBytes = readBytesFromFile();//get next bytes from large file
						
						//ByteSlider.displayArray(sinkBytes);
						
						ByteSlider ss = new ByteSlider(bufferBytes,sinkBytes);
						//string matching
						ss.runThrough(pw);

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
