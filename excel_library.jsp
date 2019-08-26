<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%response.setHeader("Content-Disposition","attachment;filename=Library_database.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>
<table border="1" align="center">  
<tr><th>REGNO/EMPID</th><th>DEPT NAME</th><th>NAME</th><th>IN TIME</th><th>OUT TIME</th><th>TIME SPENT IN LIBRARY</th></tr>  
<%try{  
  
Connection conn = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
        
      Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost/amps_website?user=root&password=");
             stmt=conn.createStatement();  

rs=stmt.executeQuery("select * from library");  
while(rs.next()){  
%>  
<tr><td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>  
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(7) %></td>


  
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
