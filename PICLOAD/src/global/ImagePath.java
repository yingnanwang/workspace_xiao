package global;

public class ImagePath {
	private String path1 = "images/img1.jpg";
	private String path2 = "images/img2.jpg";
	public void setPath1(String path1){
		this.path1 = path1;
	}
	public String getPath1(){
		return path1;
	}
	public String getPath2() {
		return path2;
	}
	public void setPath2(String path2) {
		this.path2 = path2;
	}
	public String change(){
		this.path1 = "images/img5.jpg";
		this.path2 = "";
		return null;
	}
}
