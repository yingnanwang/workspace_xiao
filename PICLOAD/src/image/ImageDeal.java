package image;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class ImageDeal {
	private static String filehead = "file/";
	public static void init(String id){
		File fileimage = new File(filehead + id + "/image");
		File fileimageinfo = new File(filehead + id + "/image.txt");
		if(fileimageinfo.exists()){
			ImageWords.readFromFile(fileimageinfo);
		}
		else{
			fileimage.mkdirs();
			try {
				PrintWriter pw = new PrintWriter(fileimageinfo);
				pw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	public static void saveAfterClose(String id){
		File fileimageinfo = new File(filehead + id + "/image.txt");
		if(fileimageinfo.exists()){
			ImageWords.writeToFile(fileimageinfo);
		}
	}
	
	public static boolean add(String id,String word,BufferedImage bim){
		if(ImageWords.addWord(word)){
			File fileimage = new File(filehead + id + "/image/" + word +"."+StreamOperation.ImageFormat);
			try {
				ImageIO.write(bim,StreamOperation.ImageFormat,fileimage);
				info("成功添加单词"+word,null);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return true;
		}
		else {
			info(word + "已在单词卡集中,请重命名该单词卡",null);
			return false;
		}
	}
	
	private static void info(String content,String title){
		JOptionPane.showMessageDialog(
				null, content, title, 
				JOptionPane.INFORMATION_MESSAGE
		);
	}
	
	public static BufferedImage createImage(JPanel panel) {
	    int w = panel.getWidth();
	    int h = panel.getHeight();
	    //System.out.println("w is:" + w + "h is: " + h);
	    BufferedImage bi = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
	    Graphics2D g = bi.createGraphics();
	    panel.paint(g);
	    System.out.println("in createImage: "+bi);
	    return bi;
	}
	
	public static BufferedImage readOne(String id,String word){
		File file = new File(filehead + id +"/image/" + word + "."+StreamOperation.ImageFormat);
		BufferedImage bim = null;
		if(file.exists()){
			System.out.println("in ImageDeal readOne: image file exist");
			try {
				bim = ImageIO.read(file);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return bim;
	}
}

