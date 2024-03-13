package day6;

import java.util.ArrayList;

public class Prac12Service {
	
	public ArrayList<Book> getBookList(){
		
		//
		ArrayList<Book> list = new ArrayList<>();
		list.add(new Book("뇌1","베르나르",9000));
		list.add(new Book("별의 길","양세형",13000));
		list.add(new Book("자바의정석","남궁성",20000));
		return list;
		
	}

}
