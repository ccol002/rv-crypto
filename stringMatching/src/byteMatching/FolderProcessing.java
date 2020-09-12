package byteMatching;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class FolderProcessing {

	
	private static byte[] stringToByteArray(String bin)
	{
		int len = bin.length();
	    byte[] data = new byte[len / 2];
	    for (int i = 0; i < len; i += 2) {
	        data[i / 2] = (byte) ((Character.digit(bin.charAt(i), 16) << 4)
	                             + Character.digit(bin.charAt(i+1), 16));
	    }
	    return data;
	}
	
	
	
	public static void main(String[] args) {

		try {


			// folder
			String folder = args[0];
			
			int fileCount = 0;
			
			String fileName = String.format("%10s", ""+ (++fileCount)).replace(' ', '0');//pad with zeros
			String heapFileName = fileName + "_heap.bin";
			String bufferFileName = fileName + "_buffer.bin";
			
	
			File f = new File(folder + heapFileName);
			if (!f.exists()) //processed all available files
				//break
				;
			//else
			
			System.out.println("Processing " + fileName);
			
			
			//sink file
			BufferedReader br = new BufferedReader(new FileReader(folder + heapFileName));
			String sink = "";
			String line = br.readLine();
			
			while (line != null) {
				
				sink += line.replace(" ","");
				line = br.readLine();
			}
			
			br.close();
			
			
			
			//source file
			br = new BufferedReader(new FileReader(folder + bufferFileName));
			String source = "";
			line = br.readLine();

			while (line != null) {
				
				source += line.replace(" ","");
				line = br.readLine();
			}
			
			br.close();
			
			
			
			//change to byte stream
			
			ByteSlider ss = new ByteSlider(stringToByteArray(source),stringToByteArray(sink));


			//coarse-grained string matching
			ss.runThrough();


			
			

			}catch(Exception ex)
			{
				ex.printStackTrace();
			}


		}

	
}
