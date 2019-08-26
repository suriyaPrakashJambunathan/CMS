<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
String dept221=(String) session.getAttribute("dept22");
if(dept221==null) dept221="";
%>
<%=dept221%>
<%
String batch221=(String) session.getAttribute("batch21");
if(batch221==null) batch221="";
%>
 <%=batch221%>
<%
String sem221=(String) session.getAttribute("sem22");
if(sem221==null) sem221="";
%>
<%=sem221%>
<%
String exam221=(String) session.getAttribute("exam22");
if(exam221==null) exam221="";
%>
<%=exam221%>
<table width='100%'><tr><td align='left'><a href='index_admin_exammodel.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>


<table  class="myTable"> 





  

<% String s1="null",s2="null",s3="null",s4="null",s5="null",s6="null",s7="null",s8="null",s9="null",s10="null",s11="null",s12="null",s21="null",s31="null",s41="null",s51="null",s61="null";
    try{  
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  

Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
  

rs=stmt.executeQuery("select * from view_mark_admin  where dept='"+dept221+"' AND batch='"+batch221+"' AND  sem='"+sem221+"' AND exam='"+exam221+"'"); 


while(rs.next())

{ 
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);
s7=rs.getString(7);
s8=rs.getString(8);
s9=rs.getString(9);
s10=rs.getString(10);
s11=rs.getString(11);
}
%>
<tr><th>Register Number</th><th>Name</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th><th><%=s8%></th><th><%=s9%></th><th><%=s10%></th><th><%=s11%></th></tr> 
<%
rs=stmt.executeQuery("select regno,name,'"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"' from consolidated");  
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