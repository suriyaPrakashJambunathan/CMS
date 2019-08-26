
<%@page import="java.sql.*"%>

<html>
    <body >
        
<center>
    <form action="show4" method="post">
        <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>
    <table border="1" class="myTable">
<tr><th>REGISTER NO</th><th>BATCH</th><th>DEPARTMENT</th><th>SEMESTER</th><th>Name</th><th>Date of Birth</th><th>SSLC%</th>  
    <th>HSC%</th><th>DIPLAMO</th><th>SEM1%</th><th>SEM2%</th><th>SEM3%</th>  
    <th>SEM4%</th><th>SEM5%</th><th>SEM6%</th><th>SEM7</th>  
   <th>SEM8%</th><th>OVERALL_AGGR%</th><th>NO OF ARREARS</th><th>HISTORY OF ARREARS</th>
<th>CONTACT NUMBER</th><th>EMAIL ID</th>
</tr> 



<%
     
try
{
  long j;  
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
           
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();

  //String RN1 = request.getParameter("id");
 //out.println("Servlet communicated message to JSP: "+ RN1);

 // Vector vecObj = (Vector) request.getAttribute("vecBean");
//  out.println("Servlet to JSP communication of an object: "+vecObj.get(0));

//for(int a=0;a<10;a++){
rs = st.executeQuery("select * from REGISTERDATA");
while(rs.next()){ %>
 <tr>
    <td><input type="text" name="RN1" value="<%= rs.getString(1) %>"></td>
        <td><input type="text" name="BATCH" value="<%= rs.getString(19) %>"></td>

<td><input type="text" name="DEPT" value="<%= rs.getString(20) %>"></td>

<td><input type="text" name="SEM" value="<%= rs.getString(21) %>"></td>

    <td><input type="text" name="name" value="<%= rs.getString(2) %>"></td>

<td><input type="text" name="dob" value="<%= rs.getString(3) %>"></td>

<td><input type="text" name="sslc" value="<%= rs.getString(4) %>"></td>

<td><input type="text" name="hsc" value="<%= rs.getString(5) %>"></td>
<td><input type="text" name="dip" value="<%= rs.getString(22) %>"></td>
<td><input type="text" name="sem1" value="<%= rs.getString(6) %>"></td>

<td><input type="text" name="sem2" value="<%= rs.getString(7) %>"></td>

<td><input type="text" name="sem3" value="<%= rs.getString(8) %>"></td>

<td><input type="text" name="sem4" value="<%= rs.getString(9) %>"></td>

<td><input type="text" name="sem5" value="<%= rs.getString(10) %>"></td>

<td><input type="text" name="sem6" value="<%= rs.getString(11) %>"></td>

<td><input type="text" name="sem7" value="<%= rs.getString(12) %>"></td>

<td><input type="text" name="sem8" value="<%= rs.getString(13) %>"></td>

<td><input type="text" name="OA" value="<%= rs.getString(14) %>"></td>

<td><input type="text" name="NA" value="<%= rs.getString(15) %>"></td>

<td><input type="text" name="HA" value="<%= rs.getString(16) %>"></td>

<td><input type="text" name="CN" value="<%= rs.getString(17) %>"></td>
</td><td><input type="text" name="EID" value="<%= rs.getString(18) %>"></td>
    </td><td><a href='edit.jsp?id=<%=rs.getString(1)%>'>Edit</a></td>
</tr>

         
<%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table>

    </form>



  </center>
</body>
</html>