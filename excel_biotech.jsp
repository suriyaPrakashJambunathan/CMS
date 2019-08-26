<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%response.setHeader("Content-Disposition","attachment;filename=overall_database.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>
<table border="1" align="center">  
<tr><th>Register Number</th><th>Dept,Year & Sec</th><th>Semester</th><th>Batch</th><th>Name</th><th>Name</th><th>Name</th><th>Name</th><th>Name</th><th>Name</th><th>Name</th><th>Name</th></tr>  
<%try{  
  
Connection conn = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
        
      Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
             stmt=conn.createStatement();  

rs=stmt.executeQuery("select * from v8");  
while(rs.next()){  
%>  
<tr><td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>  
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>  
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td> 
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>
<td><%= rs.getString(11) %></td>
<td><%= rs.getString(12) %></td>  


  
</tr>  
  
<%  
}  
  
rs.close();  
stmt.close();  
conn.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 

</table> 
