
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%response.setHeader("Content-Disposition","attachment;filename=bioteh_placed_stud.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>
<table border="1" align="center">  
<tr><th>REGISTER NO</th><th>Name</th><th>Dept</th><th>PLACEMENT PROGRAM</th><th>CORPORATE NAME</th><th>DESIGNATION</th><th>SALARY in Lacs</th><th>CORPORATE TYPE</th><th>SELECTION STATUS</th></tr>  
 
<%try{  
  
Connection conn = null;  
Statement stmt = null;  
ResultSet rs1 = null;  
  
        
      Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
             stmt=conn.createStatement();  

rs1=stmt.executeQuery("select b.REGESTERNO,a.NAME,a.DEPT,b.PLACEMENT_PROGRAM,b.CORPORATE_NAME,b.STUDENT_DESG,b.SALARY_PACK,CORPORATE_TYPE,SELECTION_STATUS from PLACED_STUDENTS b,REGISTERDATA a where   b.REGESTERNO = a.REGESTER_NO and a.dept='biotech'");  
while(rs1.next()){  
%>  
<tr><td><%= rs1.getString(1) %></td>
     <td><%= rs1.getString(2) %></td>
      <td><%= rs1.getString(3) %></td>
   <td><%= rs1.getString(4) %></td>
<td><%= rs1.getString(5) %></td>  
<td><%= rs1.getString(6) %></td> 
<td><%= rs1.getString(7) %></td>
<td><%= rs1.getString(8) %></td>  
<td><%= rs1.getString(9) %></td>
</tr>  
  
<%  
}  
  
rs1.close();  
stmt.close();  
conn.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 

</table> 
