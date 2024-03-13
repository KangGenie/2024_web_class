
public class MyMusic {

int no;
String name;
String artist;
String album;

MyMusic(){
		
}

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getArtist() {
	return artist;
}

public void setArtist(String artist) {
	this.artist = artist;
}

public String getAlbum() {
	return album;
}

public void setAlbum(String album) {
	this.album = album;
}

@Override
public String toString() {
	return "MyMusic [no=" + no + ", name=" + name + ", artist=" + artist + ", album=" + album + "]";
}





}
