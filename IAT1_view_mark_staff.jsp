<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%!String subcodee,subnamee,depte,yeare,batche,seme,exame,eide;%>
<table width='100%'><tr><td align='left'><a href='INDEX_MARK_VIEW_Staff.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>

<center>
<table  class="myTable">  
<tr><th>SUBJECT CODE</th><th>SUBJECT NAME</th><th>DEPARTMENT</th><th>BATCH</th><th>SEMESTER</th> 
 <th>NAME OF THE EXAM</th>  <th>EMP ID</th> 
</tr>  
   <%

String id1=(String) session.getAttribute("id");
if(id1==null) id1="";
%>  
<%
String username=(String) session.getAttribute("eid");
if(username==null) username="";
%> 

<%
    try{ 
  String sc="null"; String sn="null";String de="null";String se="null";String ba="null"; String ex="null";
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from view_mark_staff_IAT2 where EID='"+username+"'");  
while(rs.next()){

    
%>  
<tr>

<td><%= rs.getString(2) %></td>
<%
sc=rs.getString(2);
%>
<td><%= rs.getString(3) %></td>
<%
sn=rs.getString(3);
%>  
<td><%= rs.getString(4) %></td>
<%
de=rs.getString(4);
%> 
<td><%= rs.getString(5) %></td>
<%
ba=rs.getString(5);
%>
<td><%= rs.getString(6) %></td>
<%
se=rs.getString(6);
%> 
 <td><%= rs.getString(7) %></td>
<%
ex=rs.getString(7);
%>
<td><%= rs.getString(8) %></td>

<td><a href='IAT1_ViewMark.jsp?subcode=<%=rs.getString(2)%>&amp;dept=<%=rs.getString(4)%>'>View Mark</a></td>

</tr>  
 
<%  
} %>

  
  <%
rs.close();  
stmt.close();  
con.close(); 
session.setAttribute("username1",username);
session.setAttribute("batch1",ba);
session.setAttribute("sem1",se);
session.setAttribute("exam1",ex);
session.setAttribute("subname1",sn);
}  
catch(Exception e){e.printStackTrace();}  
%> 

</table> 
</center>
</form>