package tommy.web.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;



public class tempMemberDAO {
//   private final String JDBC_DRIVER ="oracle.jdbc.driver.OracleDriver";
//   private final String JDBC_URL="jdbc:oracle:thin:@localhost:1521:xe";
//   private final String USER ="mytest";
//   private final String PASS ="mytest";
	
//	private ConnectionPool pool = null;
   public tempMemberDAO() {
//      try {
//         Class.forName(JDBC_DRIVER);
//      }catch(ClassNotFoundException e) {
//         System.out.println("Error : JDBC 드라이버 로딩 실패");
//      }
	   
//	   	try {
//	   		pool = ConnectionPool.getInstance();
//	   	}catch(Exception e) {
//	   		System.out.println("Error : fail to getting connection ... ");
//	   	}
   }
   
   private Connection getConnection() {
	   Connection conn = null;
	   try {
		   Context init = new InitialContext();
		   DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/myOracle");
		   conn = ds.getConnection();
	   }catch(NamingException ne) {
		   ne.printStackTrace();
	   }catch(SQLException sqle) {
		   sqle.printStackTrace();
	   }
	   return conn;
   }
   public Vector<tempMemberVO> getMemberList(){
      Connection conn = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      Vector<tempMemberVO> vecList = new Vector<tempMemberVO>();
      
      try {
         conn=getConnection();
         String strQuery = "select * from tempmember";
         stmt = conn.createStatement();
         rs = stmt.executeQuery(strQuery);
         
         while(rs.next()) {
            tempMemberVO vo = new tempMemberVO();
            vo.setID(rs.getString("ID"));
            vo.setPasswd(rs.getString("passwd"));
            vo.setName(rs.getString("name"));
            vo.setMem_num1(rs.getString("mem_num1"));
            vo.setMem_num2(rs.getString("mem_num2"));
            vo.setEmail(rs.getString("email"));
            vo.setPhone(rs.getString("phone"));
            vo.setZipcode(rs.getString("zipcode"));
            vo.setAddress(rs.getString("address"));
            vo.setJob(rs.getString("job"));
            vecList.add(vo);
         }
      }catch(Exception ex) {
         System.out.println("Exception"+ ex);
      }finally {
         try{ if(rs != null)rs.close();}catch(Exception e) {}
          try { if(stmt != null)stmt.close();}catch(Exception e) {}
          try { if(conn != null)conn.close();}catch(Exception e) {}
      }
      return vecList;
   }
}