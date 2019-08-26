<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>


 <table width='100%'><tr><td align='left'><a href='index_civil.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <center><a href="" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center> <br><br>
     <center><a href="" id="logo"><img src="images/MECIVILPGDATABASE.gif" alt="LOGO" /></a></center>    <br><br>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>
<table  class="myTable">  
<tr><th>REGISTER NO</th><th>BATCH</th><th>DEPARTMENT</th><th>SEMESTER</th><th>Name</th><th>Date of Birth</th><th>SSLC%</th>  
    <th>HSC%</th><th>DIPLAMO</th><th>SEM1%</th><th>SEM2%</th><th>SEM3%</th>  
    <th>SEM4%</th><th>SEM5%</th><th>SEM6%</th><th>SEM7</th>  
   <th>SEM8%</th><th>OVERALL_AGGR%</th><th>NO OF ARREARS</th><th>HISTORY OF ARREARS</th>
<th>CONTACT NUMBER</th><th>EMAIL ID</th>
</tr>  

<%
    try{  
  
Connection conn = null;  
Statement stmt = null;  
ResultSet rs = null;  
  
        
       Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
             stmt=conn.createStatement();
rs=stmt.executeQuery("select * from REGISTERDATA where dept='ME CIVIL STRUCTURAL ENGINEERING'");  
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
<br><br>

 <table width='70%'><tr><td align='center'><a href='excel_pgcivil.jsp'><h3>Generate Excel</h3></a></tr></table>

</form>