<%@page import="java.sql.*"%>

<html>
    <body >
        
         <table width='100%'><tr><td align='left'><a href='adminview_civil.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
          
       <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center> <br><br>  
        <center><a href="index123.html" id="logo"><img src="images/EDITDATABASE.gif" alt="LOGO" /></a></center> <br><br>    
<center>
    <form action="insert_placed_civil.jsp" method="post">
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
rs = st.executeQuery("select * from REGISTERDATA where REGESTER_NO ='"+RN1+"'");
while(rs.next()){ %>
 <tr>
    <th>REGISTER NUMBER</th><td><input type="text" name="regno"  value="<%= rs.getString(1) %>"></td>
</tr>
<tr>
    <th>BATCH</th><td><input type="text" name="BATCH" value="<%= rs.getString(19) %>"></td>
</tr>
<tr>
    <th>DEPARTMENT</th><td><input type="text" name="DEPT" value="<%= rs.getString(20) %>"></td>
</tr>
<tr>
    <th>SEMESTER</th><td><input type="text" name="SEM" value="<%= rs.getString(21) %>"></td>
</tr>
<tr>
    <th>NAME</th><td><input type="text" name="name" value="<%= rs.getString(2) %>"></td>
</tr>
<tr>
    <th>DATE OF BIRTH</th>
<td><input type="text" name="dob" value="<%= rs.getString(3) %>"></td></tr>
<tr>
    <th>SSLC PERCENTAGE</th>
<td><input type="text" name="sslc" value="<%= rs.getString(4) %>"></td></tr>
<tr>
     <th>HSC PERCENTAGE</th>
<td><input type="text" name="hsc" value="<%= rs.getString(5) %>"></td></tr>
<tr>
    <th>DIPLAMO PERCENTAGE</th>
<td><input type="text" name="DIP" value="<%= rs.getString(22) %>"></td></tr>
<tr>
     <th>SEM1 GPA</th>
<td><input type="text" name="sem1" value="<%= rs.getString(6) %>"></td></tr>
<tr></tr>
<tr>
    <th>SEM2 GPA</th>
<td><input type="text" name="sem2" value="<%= rs.getString(7) %>"></td></tr>
<tr>
    <th>SEM3 GPA</th>
<td><input type="text" name="sem3" value="<%= rs.getString(8) %>"></td></tr>
<tr>
    <th>SEM4 GPA</th>
<td><input type="text" name="sem4" value="<%= rs.getString(9) %>"></td></tr>
<tr>
    <th>SEM5 GPA</th>
<td><input type="text" name="sem5" value="<%= rs.getString(10) %>"></td></tr>
<tr>
    <th>SEM6 GPA</th>
<td><input type="text" name="sem6" value="<%= rs.getString(11) %>"></td></tr>
<tr>
    <th>SEM7 GPA</th>
<td><input type="text" name="sem7" value="<%= rs.getString(12) %>"></td></tr>
<tr>
    <th>SEM8 GPA</th>
<td><input type="text" name="sem8" value="<%= rs.getString(13) %>"></td></tr>
<tr>
    <th>CGPA</th>
<td><input type="text" name="OA" value="<%= rs.getString(14) %>"></td></tr>
<tr>
    <th>NO OF ARREARS</th>
<td><input type="text" name="NA" value="<%= rs.getString(15) %>"></td></tr>
<tr>
    <th>HISTORY OF ARREARS</th>
<td><input type="text" name="HA" value="<%= rs.getString(16) %>"></td></tr>
<tr>
    <th>CONTACT NUMBER</th>
<td><input type="text" name="CN" value="<%= rs.getString(17) %>"></td></tr>
<tr>
    <th>EMAIL ID</th>
</td><td><input type="text" name="EID" value="<%= rs.getString(18) %>"></td>

</tr>

         
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