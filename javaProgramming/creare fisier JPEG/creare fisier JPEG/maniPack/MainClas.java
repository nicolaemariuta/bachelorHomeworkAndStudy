package maniPack;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;

import com.sun.image.codec.jpeg.*;
import com.sun.media.sound.Toolkit;

public class MainClas

{
	public static void main(String[] args)
	{
		float  quality = 0.9f; // variaza intre 0 si 1
		
		try
		{
			Image img = java.awt.Toolkit.getDefaultToolkit().getImage("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry.gif");
			BufferedImage buffimg= 	new BufferedImage (img.getWidth(null), img.getHeight(null),BufferedImage.TYPE_INT_ARGB);
			FileOutputStream out= new FileOutputStream("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry3.JPEG");
			JPEGImageEncoder encode = JPEGCodec.createJPEGEncoder(out);
			JPEGEncodeParam jep = encode.getDefaultJPEGEncodeParam(buffimg);
			jep.setQuality(quality, false);
			
			// folosim setarile de codare java implicite
			encode.setJPEGEncodeParam(jep);
			encode.encode(buffimg);
			
			out.close();
			
			
		}
		
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
