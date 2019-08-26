<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%response.setHeader("Content-Disposition","attachment;filename=IAT_QUESTION.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>

 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
p.three {
    border-style: solid;
    border-width: 1px;
}
</style>


<table  class="myTable">  
<tr><th><img src="images//internal_examcell//logo.png" alt="PITAM" align="left"></th><th><img src="images//internal_examcell//pitam_title.png" alt="PITAM" align="middle"></th></tr>

<%
    try{  
  String RN1 = request.getParameter("id1");
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from internal_assessment where subcode ='"+RN1+"'");  
while(rs.next()){  
         
%>   
<p class="three"><tr><td><h4>PROG & BRANCH :<%= rs.getString(3) %> / <%= rs.getString(4) %></h4></td><td><h4>     <%= rs.getString(5) %> (SET A) </h4></td></tr>
<tr><td><h4>SEMESTER :<%= rs.getString(6) %> SEM</h4></td><td><h4> DATE : <%= rs.getString(7) %> </h4></td></tr>
<tr><td><h4>MAX MARKS : 50</h4></td><td><h4> TIME : 50 Mins </h4></td></tr>
<tr><td><h4>SUB CODE / NAME : <%= rs.getString(1) %> / <%= rs.getString(2) %> </h4></td></tr></p>
</br></br>
<tr><td align='right'><h4>PART A</h4></td></tr>
  <tr> <td></td><td align='right'><h4>5x 2 = 10 Marks</h4></td></tr>
</br></br>
  <tr> <td align='left'>1. <%= rs.getString(11) %></td></tr>
   <tr> <td align='left'>2. <%= rs.getString(14) %></td></tr>
<tr> <td align='left'>3. <%= rs.getString(17) %></td></tr>
<tr> <td align='left'>4. <%= rs.getString(20) %></td></tr>
<tr> <td align='left'>5. <%= rs.getString(23) %></td></tr>
</br></br>
<tr><td align='right'><h4>PART B</h4></td></tr>
  <tr> <td></td><td align='right'><h4>2 x 16 = 32, 1x 8 = 8 Marks</h4></td></tr>
</br></br>
  <tr> <td align='left'>6.(a) <%= rs.getString(31) %>   (16)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(34) %>  (16)</td></tr>
</br></br>
</br></br>
  <tr> <td align='left'>7.(a) <%= rs.getString(26) %>   (16)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(29) %>  (16)</td></tr>
</br></br>
</br></br>
  <tr> <td align='left'>8.(a) <%= rs.getString(16) %>   (8)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(19) %>  (8)</td></tr>
</br></br>
<tr> <td align='left'><h4>Name of the Staff</h4></td><td><%= rs.getString(8) %><br><%= rs.getString(9) %></td></tr>
<tr> <td align='left'><h4>Name of HOD</h4></td><td> <%= rs.getString(10) %></td></tr>
<%  
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 

</table> 