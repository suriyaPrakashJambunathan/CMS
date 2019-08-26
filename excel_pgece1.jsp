
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%response.setHeader("Content-Disposition","attachment;filename=ME_ECE_COMMUNICATION_database.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>
<table border="1" align="center">  
<tr><th>REGISTER NO</th><th>Name</th><th>Date of Birth</th><th>SSLC%</th>  
    <th>HSC%</th><th>SEM1%</th><th>SEM2%</th><th>SEM3%</th>  
    <th>SEM4%</th><th>SEM5%</th><th>SEM6%</th><th>SEM7</th>  
   <th>SEM8%</th><th>OVERALL_AGGR%</th><th>NO OF ARREARS</th><th>HISTORY OF ARREARS</th>
<th>CONTACT NUMBER</th><th>EMAIL ID</th>
</tr>  
<%try{  
  
Connection conn = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
        
      Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
             stmt=conn.createStatement();  

rs=stmt.executeQuery("select * from REGISTERDATA  where dept='ME ECE COMMUNICATION' order by regester_no");  
while(rs.next()){  
%>  
<tr><td><%= rs.getString(1) %></td>
    <td><%= rs.getString(19) %></td>
<td><%= rs.getString(20) %></td>  
<td><%= rs.getString(21) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>  
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td> 
<td><%= rs.getString(22) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>  
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>  
<td><%= rs.getString(11) %></td>
<td><%= rs.getString(12) %></td>  
<td><%= rs.getString(13) %></td>
<td><%= rs.getString(14) %></td>
<td><%= rs.getString(15) %></td>  
<td><%= rs.getString(16) %></td>
<td><%= rs.getString(17) %></td>  
<td><%= rs.getString(18) %></td>
  
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
