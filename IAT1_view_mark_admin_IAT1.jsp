<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%!String subcodee,subnamee,depte,yeare,batche,seme,exame,eide;%>
<table width='100%'><tr><td align='left'><a href='INDEX_MARK_VIEW_IAT1.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>

<center>
<table  class="myTable">  
<tr><th>DEPT,YEAR & SEC</th><th>BATCH</th><th>SEMESTER</th><th>EXAM</th> 

</tr>  
   <%

String id1=(String) session.getAttribute("id");
if(id1==null) id1="";
%>  
<%
String username=(String) session.getAttribute("eid");
if(username==null) username="";
%> 

<%String s111="null",s21="null",s31="null",s41="null";
    try{ 
  String dept1="null",batch1="null",sem1="null",exam1="null";
//Connection con = null;  
Statement stmt = null;
Statement stmt1 = null;  
ResultSet rs = null;  
 ResultSet rs2 = null;  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from view_mark_admin_IAT2");  
while(rs.next()){

    
%>  
<tr>

<td><%= rs.getString(1) %></td>

<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><a href='IAT1_Admin_VIEW_SUBJECTS.jsp?dept=<%=rs.getString(1)%>'>View Mark</a></td>
</tr>  
 
<%  
} 

rs.close();  
stmt.close();  
con.close(); 

}  
catch(Exception e){e.printStackTrace();}  
%> 
<%session.setAttribute("username1",username);%>
</table> 
</center>
</form>