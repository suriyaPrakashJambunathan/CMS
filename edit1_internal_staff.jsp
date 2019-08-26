<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<html>
    <body >
        
        <table width='100%'><tr><td align='left'><a href='index123.html'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
      
       <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center>   
<center>
    <form action="show4" method="post">
        <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:10px;border:3px solid #BDB76B; }
</style>
        <table border="1" class="myTable" >




<%
     
try
{
  long j;  
  Statement stmt = null;
  Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1"); 
             stmt=con.createStatement();

             
ResultSet rs = null;
Statement st=null;
st=con.createStatement();

  String RN1 = request.getParameter("id");
// out.println("Servlet communicated message to JSP: "+ RN1);

 // Vector vecObj = (Vector) request.getAttribute("vecBean");
//  out.println("Servlet to JSP communication of an object: "+vecObj.get(0));

//for(int a=0;a<10;a++){
rs = st.executeQuery("select * from TABLEMASTER_EXAM where EID ='"+RN1+"'");
while(rs.next()){ %>
<tr>
    <th>EID</th><td><input type="text" name="EID" value="<%= rs.getString(1) %>"></td>
</tr>
<tr>
    <th>NAME</th><td><input type="text" name="NAME" value="<%= rs.getString(5) %>"></td>
</tr>
<tr>
    <th>DESIGNATION</th><td><input type="text" name="DESG" value="<%= rs.getString(6) %>"></td>
</tr>
<tr>
    <th>DEPARTMENT</th><td><input type="text" name="DEPT" value="<%= rs.getString(7) %>"></td>
</tr>
<tr>
    <th>DATE OF BIRTH</th><td><input type="text" name="DOB" value="<%= rs.getString(8) %>"></td>
</tr>
<tr>
    <th>CONTACT NO</th>
<td><input type="text" name="CN" value="<%= rs.getString(9) %>"></td></tr>
 <tr>
    <th>EMAIL ID</th>
<td><input type="text" name="EMAILID" value="<%= rs.getString(10) %>"></td></tr> 

         
<%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table><br><br>

<input type="submit" value="Update" style="width:180px;height:50px;">
    </form>



  </center>
</body>
</html>

