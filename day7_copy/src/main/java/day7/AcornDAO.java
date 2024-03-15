package day7;

import java.sql.Connection;
import java.sql.DriverManager;

public class AcornDAO {
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin@localhost:1521:testdb";
	String user ="scott";
	String password ="tiger";
	
	public Connection dbcon() {
		
		Connection con =null;
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,passwerd)
		}
		
		return con;
	}

}
