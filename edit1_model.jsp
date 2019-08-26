<%@page import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<html><body>
        <table width='100%'><tr><td align='left'><a href='edit_staff_test_model.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
      
       <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center>   
<center>
    <form action="edit_exam_staff_IAT1.jsp" method="post">
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
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();

             
ResultSet rs = null;
Statement st=null;
st=con.createStatement();

  String RN1=request.getParameter("id");%>

<%rs = st.executeQuery("select * from TABLEMASTER_EXAM where EID ='"+RN1+"'");
while(rs.next()){ %>
<tr>
    <th>EID</th><td><input type="text" name="eid" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
    <th>NAME</th><td><input type="text" name="name" value="<%=rs.getString(5)%>"></td>
</tr>
<tr>
    <th>DESIGNATION</th><td><input type="text" name="desg" value="<%=rs.getString(6)%>"></td>
</tr>
<tr>
    <th>DEPARTMENT</th><td><input type="text" name="dept" value="<%=rs.getString(7)%>"></td>
</tr>
<tr>
    <th>DATE OF BIRTH</th><td><input type="text" name="dob" value="<%=rs.getString(8)%>"></td>
</tr>
<tr>
    <th>CONTACT NO</th><td><input type="text" name="cn" value="<%=rs.getString(9)%>"></td>
</tr>
 <tr>
<th>EMAIL ID</th><td><input type="text" name="emailid" value="<%=rs.getString(10)%>"></td> 
</tr> 

         
<%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table><br><br>

<input type="submit" value="UPDATE" style="width:80px;height:30px;">
    </form>



  </center>
</body>
</html>
