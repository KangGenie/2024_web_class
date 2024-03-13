package day7;

import java.util.ArrayList;

public class Acornservice {
	
	AcornDAO dao = new AcornDAO();
	
	public ArrayList<Acorn> getMemberListReal(){
		ArrayList<Acorn> list =dao.selectAll();
		return list;
	}
	
	
	public static void main(String[] args) {
		AcornService service = new AcornService();
		ArrayList<Acorn> list = service.getMemberListReal();
		
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
			
		}
	}

}
