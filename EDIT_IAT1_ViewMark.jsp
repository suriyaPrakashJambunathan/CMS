<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<form>
<table width='100%'><tr><td align='left'><a href='IAT1_view_mark_staff.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
.bigtext{
    font-size: 14pt;
}
</style>
<%String str45[]=new String[8000];%>
<%String subcode11=request.getParameter("subcode");%>
<%
String username=(String) session.getAttribute("username1");
if(username==null) username="";
%> 
<%
String subcode2=(String) session.getAttribute("subcode1");
if(subcode2==null) subcode2="";
%> 
<%
String sem2=(String) session.getAttribute("sem1");
if(sem2==null) sem2="";
%> 
<%
String exam11=(String) session.getAttribute("exam1");
if(exam11==null) exam11="";
%>
<%
String batch2=(String) session.getAttribute("batch1");
if(batch2==null) batch2="";
%>
<%String subcode1=request.getParameter("subcode");%>
<%String dept11=request.getParameter("dept");%>
<%String sn=request.getParameter("subname1");%>
<center>
<table  class="myTable"> 
<%
  String m="-1";String m1="50";String s="null";String s1="null";String s12="null";String s123="null";String D1="null";String D2="null";String D3="null";String D4="null";String D5="null";String D6="null";String D7="null";String ssss="null";
//Connection con = null;  
Statement stmt1 = null;
 
ResultSet rs1 = null;  
 ResultSet rs2 = null; 
 ResultSet rs21 = null;
 ResultSet rs22 = null; ResultSet rs23 = null;
Class.forName("com.mysql.jdbc.Driver");
             Connection con1;
             con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt1=con1.createStatement();

rs2=stmt1.executeQuery("select COUNT(b.regno) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno");

while(rs2.next()){



s=rs2.getString(1);

break;
 }

rs21=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.mark>='"+m1+"'");

while(rs21.next()){


s1=rs21.getString(1);

break;
 }

rs22=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.mark<'"+m1+"'");

while(rs22.next()){


s12=rs22.getString(1);

break;
 }

rs23=stmt1.executeQuery("select COUNT(b.mark) from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno and b.mark='"+m+"'");

while(rs23.next()){


s123=rs23.getString(1);

break;
 }
int TOTPresent = Integer.parseInt(s);

int Passed = Integer.parseInt(s1);

int Failed = Integer.parseInt(s12);

int Absent = Integer.parseInt(s123);

int Present=(TOTPresent-Absent);

float P=((float)Passed/(float)Present)*100;
float F=((float)Failed/(float)Present)*100;
 D1=Integer.toString(TOTPresent);
 D2=Integer.toString(Passed);
 D3=Integer.toString(Failed);
 D4=Integer.toString(Absent);
 D5=Integer.toString(Present);
 D6=Float.toString(P);
 D7=Float.toString(F);

rs1=stmt1.executeQuery("select a.dept,a.sem,a.batch,b.subname,b.test from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno"); 
while(rs1.next()){
%>
 <tr><th>SUBJECT CODE</th><td><input type="text" class="bigtext" name="subcode" value="<%=subcode11%>"></td>
<th>SUBJECT NAME</th><td><input type="text" class="bigtext" name="subname" value="<%=rs1.getString(4)%>"></td><tr>
<tr><th>SEM</th><td><input type="text" class="bigtext" name="sem" value="<%=rs1.getString(2)%>"></td>
<th>BATCH</th><td><input type="text" class="bigtext" name="batch" value="<%=rs1.getString(3)%>"></td><tr>
<tr><th>DEPT</th><td><input type="text" class="bigtext" name="dept" value="<%=rs1.getString(1)%>"></td>
<th>EXAM</th><td><input type="text" class="bigtext" name="exam" value="<%=rs1.getString(5)%>"></td></tr>
<tr><th>TOTAL NO OF STUDENTS</th><td><input type="text" class="bigtext" name="tos" value="<%=s%>"></td>
<th>NO OF STUDENTS ABSENT</th><td><input type="text" class="bigtext" name="absent" value="<%=D4%>"></td></tr>
<tr><th>PASSED STUDENTS</th><td><input type="text" class="bigtext" name="passstud" value="<%=s1%>"></td>
<th>FAILED STUDENTS</th><td><input type="text" class="bigtext" name="failstud" value="<%=s12%>"></td></tr>
<tr><th>PASSED PERCENTAGE</th><td><input type="text" class="bigtext" name="passper" value="<%=P%>"></td><th>FAILED PERCENTAGE</th><td><input type="text" class="bigtext" name="failper" value="<%=F%>"></td></tr>
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
int j=0;
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select a.regno,a.name,b.mark from TEST_STUD a,Student_Mark_entry_IAT2 b where b.eid='"+username+"' AND b.subcode='"+subcode11+"' AND  b.test='"+exam11+"' AND a.regno=b.regno"); 
while(rs.next()){  
  ssss=rs.getString(3);       
%>  
<tr><td><%=i%></td>
<%str45[j]=rs.getString(1);%>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<%
if(ssss.equals("-1"))
{%><td><b><font color="red">ABSENT</font></b><%}
else{
%><td><input type="text" style="text-align:center" value="<%= rs.getString(3) %>" class="bigtext" name="mark11" /></td><%}%>
</tr>  
 
<% 
i++; j++;
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 

</table> 
<tr><td><a href='UPDATE_IAT1_ViewMark.jsp?subcode=<%=subcode11%>&amp;dept=<%=dept11%>'><h3>UPDATE</h3></a></td></tr> 

</center>
</form><%
session.setAttribute("regno23",str45);
session.setAttribute("present",D5);
session.setAttribute("username1",username);
session.setAttribute("batch1",batch2);
session.setAttribute("sem1",sem2);
session.setAttribute("exam1",exam11);
session.setAttribute("subname1",sn);%>