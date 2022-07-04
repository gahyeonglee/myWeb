package tommy.web.bbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VisitList extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      
      try {
         out.print("<html>");
         out.print("<head><title>방명록 리스트</title></head>");
         out.print("<body>");
         
         StringBuffer sql = new StringBuffer();
         sql.append("select no, writer, memo, regdate ");
         sql.append("from visit ");
         sql.append("order by no desc");
         
         Connection con = null;
         PreparedStatement pstmt = null;
         ResultSet rs = null;
         
         try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mytest", "mytest");
            pstmt = con.prepareStatement(sql.toString());
            rs = pstmt.executeQuery();
            
            while(rs.next()) {
               int no = rs.getInt("no");
               String writer = rs.getString("writer");
               String memo = rs.getString("memo");
               java.sql.Date regdate = rs.getDate("regdate");
               
               out.print("<table align=center width=500 border=1>");
               out.print("<tr>");
               out.print("<th width=50>번호</th>");
               out.print("<td width=50 align=center>" + no + "</td>");
               out.print("<th width=70>작성자</th>");
               out.print("<td width=180 align=center>" + writer + "</td>");
               out.print("<th width=50>날짜</th>");
               out.print("<td width=100 align=center>" + regdate + "</td>");
               out.print("</tr>");
               out.print("<tr>");
               out.print("<th width=50>내용</th>");
               out.print("<td colspan=5>&nbsp;<textarea rows=3 cols=50>" + memo + "</textarea></td>");
               out.print("</tr>");
               out.print("</table>");
               out.print("<p>");
            }
         }catch(SQLException e) {
            e.printStackTrace();
         }catch(ClassNotFoundException e) {
            e.printStackTrace();
         }finally {
            try { if(rs != null) rs.close();}catch(SQLException e) {}
            try { if(con != null) con.close();}catch(SQLException e) {}
            try { if(pstmt != null) pstmt.close();}catch(SQLException e) {}
         }
         out.print("<p align=center><a href=/MyWeb/bbs/write.html>글쓰기</a></p>");
         out.print("</body>");
         out.print("</html>");
      }finally {
         out.close();
      }
   }
   
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      processRequest(request, response);
   }
   
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      processRequest(request, response);
   }
}