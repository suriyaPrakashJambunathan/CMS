<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<table width='100%'><tr><td align='left'><a href='index_admin_exammodel.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>


<table  class="myTable">  
<tr><th>SUBJECT CODE</th><th>SUBJECT NAME</th><th>PROGRAMME</th><th>DEPARTMENT</th><th>SEMESTER</th><th>DATE OF EXAM</th><th>SUBJECT COORDINATOR</th>  
    <th>HOD NAME</th> <th>EMP ID</th>
</tr>  
    <%
String id1=(String) session.getAttribute("id");
if(id1==null) id1="";
%> 
<%
String username=(String) session.getAttribute("username4");
if(username==null) username="";
%> 

<%
    try{  
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from info_questionMODEL_me");  
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

</td><td><a href='edit_question_image_model1_me.jsp?id=<%=rs.getString(1)%>'>Edit Question</a></td>
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