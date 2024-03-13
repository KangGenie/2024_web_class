package day3;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBTEST2 {

	public static void main(String[] args) {
		
		//DB연결정보
		//driver
		//url
		//사용자 , 비밀번호
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:testdb";
		String user = "scott";
		String password = "tiger";
		
		//1.드라이버 로드(객체 생성)
		try {
			Class.forName(driver);
			
		//2. 데이터베이스 연결
			Connection con =DriverManager.getConnection(url,user,password);
		//3. 문장 얻어오기
			Statement st =con.createStatement();
		//4. 쿼리 작성(developer에서)
		//select * from acorntbl where name = '강지훈';	
			String searchName ="유원준";
			String sql = "select * from acorntbl where name = '"+searchName+"'";
		//5. 실행(executeQuery()-조회, executeUpdate()-나머지 등록, 변경, 삭제)	
			ResultSet rs =st.executeQuery(sql);
			
			//
			while(rs.next()) {
				System.out.print(rs.getString(1));
				System.out.print(rs.getString(2));
				System.out.println(rs.getString(3));
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
