package day8;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AcornDAO {
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:testdb";
	String user="scott";
	String password="tiger";
	
	//매서드(db연결 매서드)
	public Connection dbcon() {
		
		Connection con = null;
		
		try {
			Class.forName(driver); //클래스를 찾아서 찾은 클래스를 객체로 만들어준다.
			con = DriverManager.getConnection(url, user, password);
			
			if(con !=null) System.out.println("db ok");
			} catch (ClassNotFoundException e) { //JDBC 드라이버 클래스를 찾을 수 없는 경우 발생하는 예외 처리
			// TODO Auto-generated catch block
			e.printStackTrace();
			} catch (SQLException e) { // SQL 예외 처리
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		return con; //연결된 Connection 객체 반환
		
	}
	
	
	//매서드(에이콘학생목록 조회)
	
	public static void main(String[] args) {
		AcornDAO dao = new AcornDAO(); //AcornDAO객체 생성
		dao.dbcon();				   //데이터베이스 연결 메서드 호출
	}

}
