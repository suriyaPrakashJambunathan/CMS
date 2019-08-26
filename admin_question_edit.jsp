<%@ page language="java" %>
<%
String username1=(String) session.getAttribute("subcode2");
if(username1==null) username1="";
%>
<%@page import="java.sql.*"%>


<html>

<header>
 <table width='100%'><tr><td align='left'><a href='index_admin_exam.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 
      
    
    
  
    <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center><br><br>



    
<center>
    
        <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white;align:left; }
.myTable td, .myTable th { padding:10px;border:3px solid #BDB76B;align:left; }
</style>
        <table border="1" class="myTable" >



<%
     
try
{
  long j;  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             
ResultSet rs = null;
Statement st=null;
st=con.createStatement();

 String RN1 = username1;

String RN2 = request.getParameter("id");
  
     session.setAttribute("username2",username1);                      

rs = st.executeQuery("select * from IAT2_QUESTIONS where subcode ='"+RN2+"'");
while(rs.next()){ %>



<br>

<form name="main1"  method="post" action="admin_question_exam_new.jsp">
<tr>
    <th>EDIT SUBJECT CODE</th><td><input type="text" name="subcode" size="100" style="border:none;font-size:13pt;" value="<%= rs.getString(1) %>"></td>
</tr>
<tr>
    <th>EDIT SUBJECT NAME</th><td><input type="text" name="subname" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(2) %>"></td>
</tr>
<tr>
    <th>EDIT PROGRAMME</th><td><input type="text" name="programme" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(3) %>"></td>
</tr>
<tr>
    <th>EDIT DEPARTMENT</th><td><input type="text" name="dept" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(4) %>"></td>
</tr>

<tr>
    <th>EDIT EXAM</th><td><input type="text" name="exam" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(5) %>"></td>
</tr>
<tr>
    <th>EDIT SEMESTER</th>
<td><input type="text" name="sem" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(6) %>"></td></tr>

  <tr>
    <th>EDIT DATE OF EXAM</th><td><input type="text" name="doe" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(7) %>"></td>
</tr>
<tr>
    <th>EDIT SUBJECT HANDLING STAFF NAME 1</th><td><input type="text" name="sname1" size="100" style="border:none;font-size:13pt"  value="<%= rs.getString(8) %>"></td>
</tr>
<tr>
    <th>EDIT SUBJECT HANDLING STAFF NAME 2</th><td><input type="text" name="sname2" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(9) %>"></td>
</tr>
<tr>
    <th>EDIT HOD NAME</th><td><input type="text" name="hod" size="100" style="border:none;font-size:13pt"  value="<%= rs.getString(10) %>"></td>
</tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_1" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(11) %>"></td>
</tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_2" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(12) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_3" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(13) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_4" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(14) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_5" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(15) %>"></td></tr> 
 <tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_6" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(16) %>"></td>
</tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_7" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(17) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_8" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(18) %>"></td></tr> 
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_9" size="100" style="border:none;font-size:13pt" style="border:none;font-size:13pt" value="<%= rs.getString(19) %>"></td>
</tr>
<tr>
    <th>EDIT UNIT 1 PART A QUESTION</th>
<td><input type="text" name="qu1_10" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(20) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART A QUESTION</th>
<td><input type="text" name="qu2_11" size="100" style="border:none;font-size:13pt"  value="<%= rs.getString(21) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART A QUESTION</th>
<td><input type="text" name="qu2_12" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(22) %>"></td></td></tr> 
<tr>
    <th>EDIT UNIT 2 PART A QUESTION</th>
<td><input type="text" name="qu2_13" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(23) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART A QUESTION</th>
<td><input type="text" name="qu2_14" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(24) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART A QUESTION</th>
<td><input type="text" name="qu2_15" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(25) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 8 MARK QUESTION</th>
<td><input type="text" name="qu1_8_16" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(26) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 8 MARK QUESTION</th>
<td><input type="text" name="qu1_8_17" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(27) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 8 MARK QUESTION</th>
<td><input type="text" name="qu1_8_18" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(28) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART-B 8 MARK QUESTION</th>
<td><input type="text" name="qu2_8_19" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(29) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART-B 8 MARK QUESTION</th>
<td><input type="text" name="qu2_8_20" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(30) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 16 MARK QUESTION</th>
<td><input type="text" name="qu1_16_21" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(31) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 16 MARK QUESTION</th>
<td><input type="text" name="qu1_16_22" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(32) %>"></td></tr>
<tr>
    <th>EDIT UNIT 1 PART-B 16 MARK QUESTION</th>
<td><input type="text" name="qu1_16_23" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(33) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART-B 16 MARK QUESTION</th>
<td><input type="text" name="qu2_16_24" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(34) %>"></td></tr>
<tr>
    <th>EDIT UNIT 2 PART-B 16 MARK QUESTION</th>
<td><input type="text" name="qu2_16_25" size="100" style="border:none;font-size:13pt" value="<%= rs.getString(35) %>"></td></tr>
     <%
}
}
    catch(SQLException e){ System.out.println(e.getMessage()); } %>
  </table><br><br>

<input type="submit" style="font-size:13pt" value="UPDATE" style="width:180px;height:50px;">
    </form>



  </center> 
</body>
</html>