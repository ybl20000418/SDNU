package Rebook;

public class rebook {
	private int stuid;
	private String isbn;
	private String bookname;
	private String retime;
	public int getstuid() {
		return stuid;
	}
	public void setstuid(int stuid) {
		this.stuid=stuid;
	}
	public String getisbn() {
		return isbn;
	}
	public void setisbn(String isbn) {
		this.isbn=isbn;
	}
	public String getbookname() {
		return bookname;
	}
	public void setbookname(String bookname) {
		this.bookname=bookname;
	}
	public String getretime() {
		return retime;
	}
	public void setretime(String retime) {
		this.retime=retime;
	}

}
