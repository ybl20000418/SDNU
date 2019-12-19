package Book;

public class book1 {
	private char classnum;
	private String bookname;
	private String bookauthor;
	private String pubhouse;
	private float pubdate;
	private String isbn;
	private int count;
	public char getclassnum() {
		return classnum;
	}
	public void setclassnum(char classnum) {
		this.classnum=classnum;
	}
	public String getbookname() {
		return bookname;
	}
	public void setbookname(String bookname) {
		this.bookname=bookname;
	}
	public String getbookauthor() {
		return bookauthor;
	}
	public void setbookauthor(String bookauthor) {
		this.bookauthor=bookauthor;
	}
    public String getpubhouse() {
    	return pubhouse;
    }
    public void setpubhouse(String pubhouse) {
         this.pubhouse=pubhouse;	
    }
	public float getpubdate() {
		return pubdate;
	}
	public void setpubdate(float pubdate) {
		this.pubdate=pubdate;
	}
	public String getisbn() {
		return isbn;
	}
	public void setisbn(String isbn) {
		this.isbn=isbn;
	}
	public int getcount() {
		return count;
	}
	public void setcount(int count) {
		this.count=count;
	}

}
