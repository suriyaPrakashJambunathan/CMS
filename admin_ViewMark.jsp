<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
 <%=username%>


<%String dept11=request.getParameter("dept");%>
<%=dept11%>

<center>


<%String a="null",b="null",c="null",d="null",e="null",f="null",g="null",a1="null",b1="null",c1="null",d1="null",e1="null",f1="null",g1="null",a2="null",b2="null",c2="null",d2="null",e2="null",f2="null",g2="null",a3="null",b3="null",c3="null",d3="null",e3="null",f3="null",g3="null",a4="null",b4="null",c4="null",d4="null",e4="null",f4="null",g4="null",a5="null",b5="null",c5="null",d5="null",e5="null",f5="null",g5="null",a6="null",b6="null",c6="null",d6="null",e6="null",f6="null",g6="null";
String s1="null",s2="null",s3="null",s4="null",s5="null",s6="null",s7="null",s8="null",s9="null",s10="null",s11="null";

//Connection con = null;  
Statement stmt1 = null;
Statement stmt2 = null;  
ResultSet rs2 = null;  
ResultSet rs22 = null; ResultSet rs23 = null;ResultSet rs24 = null;ResultSet rs25 = null;ResultSet rs26 = null; 
ResultSet rs27 = null;ResultSet rs28 = null;ResultSet rs29 = null; 
Class.forName("com.mysql.jdbc.Driver");
             Connection con1;
             con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt1=con1.createStatement();


rs2=stmt1.executeQuery("select * from view_mark_admin where dept='"+dept11+"'"); 


while(rs2.next())

{ 
s1=rs2.getString(1);
s2=rs2.getString(2);
s3=rs2.getString(3);
s4=rs2.getString(4);
s5=rs2.getString(5);
s6=rs2.getString(6);
s7=rs2.getString(7);
s8=rs2.getString(8);
s9=rs2.getString(9);
s10=rs2.getString(10);
s11=rs2.getString(11);
} %>
<table  class="myTable"> <center><tr><th>Dept,Year & Sec</th><th>Batch</th><th>Semester</th><th>Exam</th></tr>
<tr><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td></tr></center></table> 
</br></br></br></br></br>
<%

if(s5!="null"){
stmt1.executeUpdate("create OR REPLACE view v1 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s5+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}
if(s6!="null"){
stmt1.executeUpdate("create OR REPLACE view v2 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s6+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}
if(s7!="null"){
stmt1.executeUpdate("create OR REPLACE view v3 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s7+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}
if(s8!="null"){
stmt1.executeUpdate("create OR REPLACE view v4 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s8+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}
if(s9!="null"){
stmt1.executeUpdate("create OR REPLACE view v5 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s9+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}
if(s10!="null"){
stmt1.executeUpdate("create OR REPLACE view v6 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s10+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}

if(s11!="null"){
stmt1.executeUpdate("create OR REPLACE view v7 as select a.regno,b.subcode,b.subname,b.test,b.mark,eid from TEST_STUD a,Student_Mark_entry_1 b where b.subcode='"+s11+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno");
}

session.setAttribute("dept4",s1);
session.setAttribute("batch4",s2);
session.setAttribute("sem4",s3);
session.setAttribute("exam4",s4);



session.setAttribute("username1",username);

rs2.close();

%></table> <table>
</td><td><a href='excel_mark_consolidated.jsp'>Generate Excel</a></td>
</table> 
</center>
</form>