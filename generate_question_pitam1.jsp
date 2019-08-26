<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<table width='100%'><tr><td align='left'><a href='index_admin_exam.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>


<table  class="myTable">  
<tr><th>SUBJECT CODE</th><th>SUBJECT NAME</th><th>PROGRAMME</th><th>DEPARTMENT</th><th>EXAM</th><th>SEMESTER</th><th>DATE OF EXAM</th><th>STAFF COORDINATOR</th>  
    <th>HOD NAME</th><th>EMP ID</th>
</tr>  

<%
    try{  
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from info_question");  
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
</td><td><a href='generate_question_image1.jsp?id=<%=rs.getString(1)%>'>Generate Question Paper</a></td>
</tr>  
  
<%  
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 
</table> 

</form>