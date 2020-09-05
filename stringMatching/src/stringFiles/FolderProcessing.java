package stringFiles;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

import stringMatching.stringSlider;

public class FolderProcessing {

	
	public static void main(String[] args) {

		try {


			// folder
			String folder = args[0];
			
			int fileCount = 0;
			
			String fileName = String.format("%10s", ""+fileCount).replace(' ', '0');//pad with zeros
			String heapFileName = fileName + "_heap.bin";
			String bufferFileName = fileName + "_buffer.bin";
			
	
			File f = new File(folder + heapFileName);
			if (!f.exists()) //processed all available files
				//break
				;
			else
				System.out.println("Processing " + fileName);
			
			
			
			BufferedReader br = new BufferedReader(new FileReader(args[1]));
			String sink = "";
			String line = br.readLine();
			
			while (line != null) {
				
				sink += line;
				line = br.readLine();
			}
			
			br.close();
			
			
			//source file
			br = new BufferedReader(new FileReader(args[0]));
			String source = "";
			line = br.readLine();

			int count = -1;
			while (line != null) {
				
				if (line.indexOf("00000000") != -1)
					count = 0;

				if (count >=0)
				{
					//so far counter is only used as boolean
					//to check if first line has been encountered
					count ++;
					source += line.substring(59).trim();
				}
				
				line = br.readLine();

			}
			br.close();
			
			System.out.println(source);
			
			

			stringSlider ss = new stringSlider(source,sink);


			//coarse-grained string matching
			ss.runThrough();


			
			

			}catch(Exception ex)
			{
				ex.printStackTrace();
			}


		}

	
}
