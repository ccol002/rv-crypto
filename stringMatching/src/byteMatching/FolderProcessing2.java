package byteMatching;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

///////////////////////////////////
//
//assumes a folder with buffer files and a single dump file
//
///////////////////////////////////

public class FolderProcessing2 {

	
	private static byte[] sinkBytes;
	
	
	
 	private static byte[] readBytesFromFile(String fileName) throws Exception
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
	
 	
 	public static void dumpFile(String folderName) throws Exception
 	{
 		String dumpFileName = "firefox.dmp";
		
 		File f = new File(folderName + "/"+ dumpFileName);
		if (!f.exists()) //processed all available files
			throw new Exception("Dump file not found!");

		//sink file			
		sinkBytes= readBytesFromFile(folderName + "/" + dumpFileName);


 		
 		
 	}
	
	public static void processFolder(String folderName)
	{
		try {
			
			PrintWriter pw = null;
			
			//process dump file
			dumpFile(folderName);
			
			folderName += "/buffers";
			
			// folder
			System.out.println("Starting folder: " + folderName);
			

			int fileCount = 9024;//6780;

			pw = new PrintWriter(folderName + ".csv");

			System.out.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			System.out.println("Stopping on first fine-grained match below threshold");
			
			pw.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			pw.println("Stopping on first fine-grained match below threshold");
			pw.println("Buffers sized less than 10 are discarded");
			pw.println("Filename, Fine-grained tries, Coarse-grained Measure, Fine-grained Measure, offset, Buffer size (bytes), Heap size (bytes), time taken (ms)");

			//loop through files in folder
			while (true) {

				String fileName = "000000"+ (--fileCount);//pad with zeros
				String bufferFileName = fileName + "_buffer.bin";
				
				System.out.println("\r\n\r\n************* Processing file " + fileName);
				pw.print(fileName);
				pw.flush();

				try {
				//source file
				byte[] bufferBytes= readBytesFromFile(folderName + "/" + bufferFileName);
				
				long lastTimeStamp = System.currentTimeMillis();

				
				if (bufferBytes.length < 20) 
				{			
					System.out.println("SKIPPED due to short length");
					//skip buffers which are very small
					pw.print(",,,,");
				} else {
					//what is the relationship between buffer? are they to be found ordered in the dump?
					//if so, when there is a match, I can progress the offset
					
					ByteSlider ss = new ByteSlider(bufferBytes,sinkBytes);

					//string matching
					ss.runThrough(pw);
				}

				System.out.println("Buffer size (bytes) " + bufferBytes.length);
				pw.print("," +bufferBytes.length);
				System.out.println("Heap size (bytes) " + sinkBytes.length);
				pw.print("," +sinkBytes.length);
				System.out.println("Time taken (ms) " + (System.currentTimeMillis()-lastTimeStamp));
				pw.println("," +(System.currentTimeMillis()-lastTimeStamp));
				
				}catch(Exception ex)
				{
					ex.printStackTrace();
					break;
				}
			}
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
