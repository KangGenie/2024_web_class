package Acorn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AcornDAO {
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:testdb";
	String user="scott";
	String password="tiger";
	
	public Connection dbcon() { //db에 연결하는 매서드
		
		Connection con = null;
			
		try {
			Class.forName(driver); //jdbc에 접속하는 것
			DriverManager.getConnection(url, user, password);
			
			if(con !=null) System.out.println("db ok");
			} catch (SQLException e) { //sql 예외
				// TODO Auto-generated catch block
				e.printStackTrace();
			 //db에 접속
			} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}
		 return con;
		
	}
	
	//db에 연결 완료, 이제 조회
	//selectAll 전체선택 조회
	 public ArrayList<Acorn> selectAll() {
		 
		 Connection con = dbcon(); // db 연결\
		 
		 String sql = "select * from acorntbl"; // select 전체 조회
		 ArrayList<Acorn> list = new ArrayList<>(); // Acorn을 담을 배열
		 
		 try {
		PreparedStatement  pst =con.prepareStatement(sql);	
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			
			Acorn acorn = new Acorn(id,pw,name);
			list.add(acorn);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return list;
	 }
	 public static void main(String[] args) {
		AcornDAO dao = new AcornDAO();
		dao.dbcon();
		dao.selectAll();
		
		 
	}

}
