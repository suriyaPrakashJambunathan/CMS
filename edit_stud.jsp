<%@ page language="java" %>

<%@page import="java.sql.*"%>
<style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:10px;padding-right:35px; border:1px solid #BDB76B; }
.myTable1 td{ padding:10;padding-left:10px;padding-right:350px;}
</style> 

<html>

<header>
 <table width='100%'><tr><td align='left'><a href='index_stud_main.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 
 
    
    
  
    <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center><br><br>

 <center><a href="index123.html" id="logo"><img src="images/STUDENT DATABASE.gif" alt="LOGO" /></a></center>

                         <center><marquee>STUDENTS UPDATE YOUR RESULTS THE LINK IS GIVEN AT THE BOTTOM OF THIS PAGE .THIS LINK WILL BE ENABLE UNTIL 10/7/2015</marquee></center>
    
</nav>
</div>
<%
String username1=(String) session.getAttribute("username2");
if(username1==null) username1="";
%> 


</header>    <body >
        
<center>
   <br><br><br> 
    <table border="1" class="myTable">    

<%
     
try
{
  long j;  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1"); 
             
ResultSet rs = null;
Statement st=null;
st=con.createStatement();

                          

rs = st.executeQuery("select * from REGISTERDATA where REGESTER_NO ='"+username1+"'");
while(rs.next()){ %>

 <tr>
    <th>REGISTER NUMBER</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="regno" disabled value="<%= rs.getString(1) %> "></td>
</tr>
<tr>
    <th>BATCH</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="BATCH" disabled value="<%= rs.getString(19) %> "></td>
</tr>
<tr>
    <th>DEPARTMENT</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="DEPT" disabled value="<%= rs.getString(20) %>"></td>
</tr>
<tr>
    <th>SEMESTER</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="SEM" disabled value="<%= rs.getString(21) %>"></td>
</tr>
<tr>
    <th>NAME</th><td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="name" disabled value="<%= rs.getString(2) %>"></td>
</tr>
<tr>
    <th>DATE OF BIRTH</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="dob" disabled value="<%= rs.getString(3) %>"></td></tr>
<tr>
    <th>SSLC PERCENTAGE</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sslc" disabled value="<%= rs.getString(4) %>"></td></tr>
<tr>
     <th>HSC PERCENTAGE</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="hsc" disabled value="<%= rs.getString(5) %>"></td></tr>
<tr>
    <th>DIPLAMO PERCENTAGE</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="DIP" disabled value="<%= rs.getString(22) %>"></td></tr>
<tr>
     <th>SEM1 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30"  name="sem1" disabled value="<%= rs.getString(6) %>"></td></tr>
<tr></tr>
<tr>
    <th>SEM2 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem2" disabled value="<%= rs.getString(7) %>"></td></tr>
<tr>
    <th>SEM3 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem3" disabled value="<%= rs.getString(8) %>"></td></tr>
<tr>
    <th>SEM4 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem4" disabled value="<%= rs.getString(9) %>"></td></tr>
<tr>
    <th>SEM5 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem5" disabled value="<%= rs.getString(10) %>"></td></tr>
<tr>
    <th>SEM6 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem6" disabled value="<%= rs.getString(11) %>"></td></tr>
<tr>
    <th>SEM7 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem7" disabled value="<%= rs.getString(12) %>"></td></tr>
<tr>
    <th>SEM8 GPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="sem8" disabled value="<%= rs.getString(13) %>"></td></tr>
<tr>
    <th>CGPA</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="OA" disabled value="<%= rs.getString(14) %>"></td></tr>
<tr>
    <th>NO OF ARREARS</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="NA" disabled  value="<%= rs.getString(15) %>"></td></tr>
<tr>
    <th>HISTORY OF ARREARS</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="HA" disabled value="<%= rs.getString(16) %>"></td></tr>
<tr>
    <th>CONTACT NUMBER</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 20px;" size="22" maxlength="30" name="CN" disabled value="<%= rs.getString(17) %>"></td></tr>
<tr>
    <th>EMAIL ID</th>
<td><input type="text" STYLE="background-color:#FFFFE0;border:10px solid #FFFFE0;color: #BDB76B; font-family: Verdana; font-weight: bold; font-size: 18px;" size="22" maxlength="30" name="EID" disabled  value="<%= rs.getString(18) %>"></td>

</tr>
<tr>
<th>UPDATE RESULT 2015</th>
<td><a href='editresult2015.jsp?id=<%=rs.getString(1)%>'>UPDATE RESULT 2015 JULY</a></td>
</tr>
     
<%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table>
</center>
<br>
<table class="mytable1">
    <tr>
        <td>
          <form name="main1"  method="get" action="query1.jsp" align="left">
        <input type="submit" style="width:100px;height:40px" name="ter" value="EDIT" >
    </form>
          


  </td>
     
<td>
<center>  <button type="button" style="width:100px;height:40px"  onclick="window.print();return false">PRINT</button>  </center> 
        
</td> </tr>

          
  </table><a href='edit1.jsp?id=<%=rs.getString(1)%>'>UPDATE RESULT 2016 MARCH</a>
  <%session.setAttribute("username2",username1);%>
</body>
</html>