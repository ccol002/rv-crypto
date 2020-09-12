package byteMatching;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

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
	
	
	
	
	public static void main(String[] args) {

	
		// folder
		String folder = args[0];

		int fileCount = 0;
		
		try {
			while (true) {

				String fileName = String.format("%10s", ""+ (++fileCount)).replace(' ', '0');//pad with zeros
				String heapFileName = fileName + "_heap.bin";
				String bufferFileName = fileName + "_buffer.bin";

				File f = new File(folder + heapFileName);
				if (!f.exists()) //processed all available files
					//break
					;
				//else

				System.out.println("\r\n\r\n************* Processing file " + fileName);

				//sink file			
				byte[] sinkBytes= readBytesFromFile(folder + heapFileName);
				//source file
				byte[] bufferBytes= readBytesFromFile(folder + bufferFileName);


				ByteSlider ss = new ByteSlider(bufferBytes,sinkBytes);

				//string matching
				ss.runThrough();

			}


			}catch(Exception ex)
			{
				ex.printStackTrace();
			}


		}

	
}
