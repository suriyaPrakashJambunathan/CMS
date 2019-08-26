<%@ page language="java" %>
<%
String username1=(String) session.getAttribute("eid");
if(username1==null) username1="";
%>
<%@page import="java.sql.*"%>
<style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:10px;padding-right:35px; border:1px solid #BDB76B; }
.myTable1 td{ padding:10;padding-left:10px;padding-right:350px;}
</style> 

<html>

<header>
 <table width='100%'><tr><td align='left'><a href='index_staff_test_loginIAT1.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 
      
    
    
  
    <center><a href="index123.html" id="logo"><img src="images/IEC_LOGO.JPG" alt="LOGO" /></a></center><br><br>




    
</nav>
</div></header>    <body >
        
<center>
   <br><br><br> 
    <table border="1" class="myTable">




<%
     
try
{
  long j;  
Class.forName("org.gjt.mm.mysql.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost/amps_website?user=root&password="); 
             
ResultSet rs = null;
Statement st=null;
st=con.createStatement();

 //String RN1 = username1;
  //long RN11 = Long.parseLong(RN1);
//out.println("Servlet communicated message to JSP: "+ RN1);

 // Vector vecObj = (Vector) request.getAttribute("vecBean");
//  out.println("Servlet to JSP communication of an object: "+vecObj.get(0));

//for(int a=0;a<10;a++){
  
     session.setAttribute("username2",username1);                      

rs = st.executeQuery("select * from tablemaster_staff where EID='"+username1+"'");
while(rs.next()){ %>
 <tr>
    <th>EMPLOYEE ID</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="regno" disabled value="<%= rs.getString(1) %> "></td>
</tr>

<tr>
    <th>NAME</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="SEM" disabled value="<%= rs.getString(5) %>"></td>
</tr>
<tr>
    <th>DESIGNATION</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="name" disabled value="<%= rs.getString(6) %>"></td>
</tr>
<tr>
    <th>DEPARTMENT</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="dob" disabled value="<%= rs.getString(7) %>"></td></tr>
<tr>
    <th>DATE OF BIRTH</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sslc" disabled value="<%= rs.getString(8) %>"></td></tr>
<tr>
     <th>CONTACT NO</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="hsc" disabled value="<%= rs.getString(9) %>"></td></tr>
<tr>
    <th>EMAIL ID</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="DIP" disabled value="<%= rs.getString(10) %>"></td></tr>
</table>
  </td><td><a href='edit1_IAT1.jsp?id=<%=rs.getString(1)%>'><h3>EDIT</h3></a></td>

<%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>

</center>
<br>

  
</body>
</html>