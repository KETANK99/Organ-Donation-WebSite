package organDonor;

import java.io.File;
import java.util.Random;

import com.oreilly.servlet.MultipartRequest;

public class customeMethods {

	public static String getRandomString()
	{
		 int leftLimit = 97; // letter 'a'
		    int rightLimit = 122; // letter 'z'
		    int targetStringLength = 10;
		    Random random = new Random();

		    String generatedString = random.ints(leftLimit, rightLimit + 1)
		      .limit(targetStringLength)
		      .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
		      .toString();
		return generatedString;
	}

	public static void createTempDirectory(String tempPathDirectory)
	{
		String tempDirectory=tempPathDirectory+getRandomString()+"//";
		if ((new File(tempDirectory).exists())) {
			new File(tempDirectory).delete();
		}else if(!(new File(tempDirectory).exists())){
			if((new File(tempDirectory).mkdirs())) {
				User.setTempProfilePic(tempDirectory);
				System.out.println("given Temp Directory is created :- "+tempDirectory);
			}else {
				System.out.println("given Temp Directory is not created :- "+tempDirectory);
			}
				
		}
		
	}
	
	public static boolean createProfileDirectory(String DirectoryPath,String fileName)
	{
		String tempProfilePicDirectory=User.getTempProfilePic();
		File tempProfile = new File(tempProfilePicDirectory+"/"+fileName);
		String newProfilePathDirectory=path.profilePath+getRandomString();
		
		if ((new File(newProfilePathDirectory+"//"+fileName)).exists()) {
			new File(newProfilePathDirectory+"//"+fileName).delete();
		}else if(!(new File(newProfilePathDirectory).exists())){
			if((new File(newProfilePathDirectory).mkdirs()))
				System.out.println("given Directory is created :- "+newProfilePathDirectory);
		}
		
		File Profile = new File(newProfilePathDirectory+"/"+fileName);
		if(tempProfile.renameTo(Profile))
		{
			String DbprofilePath=newProfilePathDirectory.split("webapp")[1]+"//"+fileName;
			User.setProfilePic(DbprofilePath);
			return true;
		}
		return false;
	}
}
