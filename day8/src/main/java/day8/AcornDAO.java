package day8;

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
	//에이콘학생목록 조회
	//ArrayList<Acorn> getMembers()
	
	public ArrayList<Acorn> selectAll(){
		
		Connection con = dbcon(); //데이터베이스 연결
		
		//
		String sql="select * from acorntbl"; //sql쿼리문
		ArrayList<Acorn> list = new ArrayList<>(); //Acorn 객체를 담을 ArrayList
		
		try {
			PreparedStatement  pst =con.prepareStatement(sql); //실질적으로 실행하는 기능을 보유, PreparedStatement 생성
			ResultSet rs =pst.executeQuery(); //쿼리 실행 후 결과를 ResultSet으로 반환 
			
			while(rs.next()) {//ResultSet에 결과가 있으면 반복
				
				String id = rs.getString(1); //첫 번째 열의 데이터를 가져옴
				String pw = rs.getString(2); //두 번째 열의 데이터를 가져옴
				String name = rs.getString(3);//세 번째 열의 데이터를 가져옴
				System.out.println(id);
				
				Acorn acorn = new Acorn (id, pw, name); //Acorn객체 생성
				list.add(acorn);						//ArrayList에 추가
			}
		} catch (SQLException e) { //sql 예외처리
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list; //학생목록을 담은 ArrayList반환
	}
	
	public static void main(String[] args) {
		AcornDAO dao = new AcornDAO(); //AcornDAO객체 생성
		dao.dbcon();				   //데이터베이스 연결 메서드 호출
		
		// dao.selectAll(); //배열 출력
		//System.out.println(dao.selectAll().size()); //들어간 값의 개수를 출력
		System.out.println(dao.selectAll().get(1).getName());  
		
		
	}

}
