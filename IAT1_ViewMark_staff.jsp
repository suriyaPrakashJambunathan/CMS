<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<table width='100%'><tr><td align='left'><a href='index_staff_test_login.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>

<%
String username=(String) session.getAttribute("username1");
if(username==null) username="";
%> 

<%
String dept=(String) session.getAttribute("dept1");
if(dept==null) dept="";
%> 

<%
String subcode=(String) session.getAttribute("subcode1");
if(subcode==null) subcode="";
%>




<center>
<table  class="myTable"> 


<%

  String m="-1";String m1="50";String s="null";String s1="null";String s12="null";String s123="null";String D1="null";String D2="null";String D3="null";String D4="null";String D5="null";String D6="null";String D7="null";
 String exam11="null"; String dept11="null";String sn="null";String batch2="null";String sem="null";String subcode11="null";String ssss="null";
Statement stmt1 = null;
 
ResultSet rs1 = null;  
 ResultSet rs2 = null; 
 ResultSet rs21 = null;
 ResultSet rs22 = null; ResultSet rs23 = null;
Class.forName("com.mysql.jdbc.Driver");
             Connection con1;
             con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt1=con1.createStatement();


rs2=stmt1.executeQuery("select * from view_mark_staff_IAT2 where EID='"+username+"' AND dept='"+dept+"' AND subcode='"+subcode+"'");  
while(rs2.next()){

subcode11=rs2.getString(2);
sn=rs2.getString(3);

dept11=rs2.getString(4);

batch2=rs2.getString(5);

sem=rs2.getString(6);

exam11=rs2.getString(7);
  
}
rs2=stmt1.executeQuery("select COUNT(b.regno) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno AND b.dept='"+dept11+"'");

while(rs2.next()){



s=rs2.getString(1);

break;
 }

rs21=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.dept='"+dept11+"' and b.mark<= 100 AND b.mark>=50");

while(rs21.next()){


s1=rs21.getString(1);

break;
 }

rs22=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.dept='"+dept11+"' and b.mark<50 and b.mark>=0");

while(rs22.next()){


s12=rs22.getString(1);

break;
 }

rs23=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.dept='"+dept11+"' and b.mark=-1");

while(rs23.next()){


s123=rs23.getString(1);

break;
 }
int TOTPresent = Integer.parseInt(s);

int Passed = Integer.parseInt(s1);

int Failed = Integer.parseInt(s12);

int Absent = Integer.parseInt(s123);

int Present=(TOTPresent-Absent);

float P=((float)Passed/(float)TOTPresent)*100;
float F=(((float)Failed+(float)Absent)/(float)TOTPresent)*100;
 D1=Integer.toString(TOTPresent);
 D2=Integer.toString(Passed);
 D3=Integer.toString(Failed);
 D4=Integer.toString(Absent);
 D5=Integer.toString(Present);
 D6=Float.toString(P);
 D7=Float.toString(F);
String query;
    query = "INSERT INTO calculation_marks_IAT2 (dept,subcode,Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc) VALUES (?,?,?,?,?,?,?,?,?)";
PreparedStatement stmt21= con1.prepareStatement(query);

stmt21.setString(1,dept);
stmt21.setString(2,subcode11);
stmt21.setString(3,D1);
stmt21.setString(4,D4);
stmt21.setString(5,D5);
stmt21.setString(6,D2);
stmt21.setString(7,D3);
stmt21.setString(8,D6);
stmt21.setString(9,D7);
stmt21.executeUpdate();
  stmt21.clearParameters(); 




rs1=stmt1.executeQuery("select a.dept,a.sem,a.batch,b.subname,b.test from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno"); 
while(rs1.next()){

%>
 <tr><th>SUBJECT CODE</th><td><%=subcode%></td><th>SUBJECT NAME</th><td><%=rs1.getString(4)%></td><tr>
<tr><th>SEM</th><td><%=rs1.getString(2)%></td><th>BATCH</th><td><%=rs1.getString(3)%></td><tr>
<tr><th>DEPT</th><td><%=rs1.getString(1)%></td><th>EXAM</th><td><%=rs1.getString(5)%></td></tr>
<tr><th>TOTAL NO OF STUDENTS</th><td><%=s%></td><th>NO OF STUDENTS ABSENT</th><td><%=s123%></td></tr>
<tr><th>PASSED STUDENTS</th><td><%=s1%></td><th>FAILED STUDENTS</th><td><%=s12%></td></tr>
<tr><th>PASSED PERCENTAGE</th><td><%=P%></td><th>FAILED PERCENTAGE</th><td><%=F%></td></tr>
<%

break;
 }
  
rs1.close();  
stmt1.close();  
con1.close();  





%>
</table>
</br></br>
<table class="myTable">

<tr><th>SI.NO</th><th>REGISTER NUMBER</th><th>NAME</th><th>MARK</th>


<%
    try{  
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  int i=1;
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select a.regno,a.name,b.mark from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode+"' AND  b.test='"+exam11+"' AND a.regno=b.regno AND a.dept='"+dept+"'"); 
while(rs.next()){  
   ssss=rs.getString(3);      
%>  
<tr><td><%=i%></td>
<td><%= rs.getString(1) %></td>
   <td><%= rs.getString(2) %></td>
<%
if(ssss.equals("-1"))
{%><td><b><font color="red">ABSENT</font></b><%}
else{
%>
<td><%= rs.getString(3)  %></td><%}%>
</tr>  
 
<% 
i++; 
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 

</table> 
</center>
</form>