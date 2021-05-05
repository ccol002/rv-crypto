package byteMatching;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

///////////////////////////////////
//
//  assumes pairs of buffer-heap files
//
///////////////////////////////////

public class FolderProcessing {

	
 	private static byte[] readBytesFromFile(String fileName)
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
	            ex.printStackTrace();
	        } 
		
		return bytes;
	}
	
	
	public static void processFolder(String folderName)
	{
		try {
			
			PrintWriter pw = null;
			
			// folder
			System.out.println("Starting folder: " + folderName);

			int fileCount = 0;

			pw = new PrintWriter(folderName + ".csv");

			System.out.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			System.out.println("Stopping on first fine-grained match below threshold");
			
			pw.println("Starting Experiment with Threshold "+ ByteSlider.threshold);
			pw.println("Stopping on first fine-grained match below threshold");
			pw.println("Buffers sized less than 10 are discarded");
			pw.println("Filename, Fine-grained tries, Coarse-grained Measure, Fine-grained Measure, offset, Buffer size (bytes), Heap size (bytes), time taken (ms)");

			//loop through files in folder
			while (true) {

				String fileName = String.format("%10s", ""+ (++fileCount)).replace(' ', '0');//pad with zeros
				String heapFileName = fileName + "_heap.bin";
				String bufferFileName = fileName + "_buffer.bin";

				File f = new File(folderName + "/"+ heapFileName);
				if (!f.exists()) //processed all available files
					break;
				//else

				System.out.println("\r\n\r\n************* Processing file " + fileName);
				pw.print(fileName);
				pw.flush();

				//source file
				byte[] bufferBytes= readBytesFromFile(folderName + "/" + bufferFileName);
				
				//sink file			
				byte[] sinkBytes= readBytesFromFile(folderName + "/" + heapFileName);

				long lastTimeStamp = System.currentTimeMillis();

				
				if (bufferBytes.length < 10) 
				{					
					//skip buffers which are very small
					pw.print(",,,,");
				} else {
					
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
			}
			pw.close();


			}catch(Exception ex)
			{
				ex.printStackTrace();
			}


	}
 	
 	
	//pass root folder as parameter
	//this assumes a buffer file and a corresponding heap file
	public static void main(String[] args) {

		String[] folders = {"amazon", "facebook", "google", "live", "twitter", "wikipedia", "yahoo","youtube"};

		for (String f: folders)
			processFolder(args[0] + f);


	}

	
	
	
}
