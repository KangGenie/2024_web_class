<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<title>Insert title here</title>
    <style>
        body {

        }

        .search-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 10px;
        }

        .search-input,
        .search-button,
        #options,
        .table {
            height: 30px; /* ���̸� ���� */
            box-sizing: border-box;
        }

        .search-input,
        .search-button,
        #options {
            padding: 5px;
            margin-bottom: 10px;
        }

        .table {
            display: flex;
            width: 100%;
            border-collapse: collapse;
        }

       table{
            display: flex;
        }

        tr td{
            
            display:flex;
            padding: 10px;
            border: 1px solid black;
            text-align: center;
            width: 25%;
            border-collapese:collapse;
        
        }
    </style>
</head>
<body>

<div class="search-container">
    <div>
        <select id="options">
            <option value="selectable">������ �� �ֽ��ϴ�</option>
            <option value="song">��</option>
        </select>

        <input type="text" class="search-input" placeholder="�˻�� �Է��ϼ���">
        <button class="search-button"><i class="fas fa-search"></i></button>
    </div>
	
    <div class="table">
        <table>
        	<tr>
	            <td>No</td>
	            <td>���</td>
	            <td>��Ƽ��Ʈ</td>
	            <td>�ٹ�</td>
	            <td>����</td>
            </tr>
        </table>
    </div>
    <%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

try {
	//1.����̹� �ε�(��ü ����)
	Class.forName(driver);
	
	//2. �����ͺ��̽� ����
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. ���� ������
	String sql = "select so.title, si.singer, a.album from singer si";
	sql += " join song so";
	sql += " on si.singer_id = so.singer";
	sql += " join album a";
	sql += " on a.singer = si.singer_id";
	sql += " and a.album_id=so.album";
	
	PreparedStatement pst = con.prepareStatement(sql);
	
	//5. ����(executeQuery()-��ȸ, executeUpdate()-������ ���, ����, ����)
	ResultSet rs = pst.executeQuery();
	
	//
	int cnt=1;
	while(rs.next()) {
%>	
		<div class="table">
			<table>
				<tr>
				<td><%=cnt %></td>
				<td><%=rs.getString(1) %></td>
				<td> <%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><a href="deleteSong.jsp?title=<%=rs.getString(1)%>"><span class="ion--close"></span></a></td>
				</tr>
			</table>
		</div>
<%
	cnt++;
	}
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</div>

</body>
</html>