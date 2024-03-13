package day4;

public class MyMusic {
	private String title;
	private String singer;
	private String album;
	
	
	public MyMusic(String title, String singer, String album) {
		this.title = title;
		this.singer = singer;
		this.album = album;
	}


	public String getTitle() {
		return title;
	}

	public String getSinger() {
		return singer;
	}


	public String getAlbum() {
		return album;
	}


	@Override
	public String toString() {
		return "MyMusic [title=" + title + ", singer=" + singer + ", album=" + album + "]";
	}

	
}
