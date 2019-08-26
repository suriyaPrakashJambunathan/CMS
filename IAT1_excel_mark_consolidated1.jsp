<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%response.setHeader("Content-Disposition","attachment;filename=Student_Marks.xls"); %>
<%
 response.setContentType("application/vnd.ms-excel");
 %>



 <style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>


<%String dept11=request.getParameter("dept");%>


<center>


<%String a="null",b="null",c="null",d="null",e="null",f="null",g="null",a1="null",b1="null",c1="null",d1="null",e1="null",f1="null",g1="null",a2="null",b2="null",c2="null",d2="null",e2="null",f2="null",g2="null",a3="null",b3="null",c3="null",d3="null",e3="null",f3="null",g3="null",a4="null",b4="null",c4="null",d4="null",e4="null",f4="null",g4="null",a5="null",b5="null",c5="null",d5="null",e5="null",f5="null",g5="null",a6="null",b6="null",c6="null",d6="null",e6="null",f6="null",g6="null";
String s1="null",s2="null",s3="null",s4="null",s5="null",s6="null",s7="null",s8="null",s9="null",s10="null",s11="null";
String ss1="null",ss2="null",ss3="null",ss4="null",ss5="null",ss6="null",ss7="null",ss8="null",ss9="null",ss10="null",ss11="null",ss12="null",ss13="null",ss14="null",ss15="null",ss16="null",ss17="null",ss18="null",ss19="null",ss20="null",ss21="null",ss22="null",ss23="null",ss24="null",ss25="null",ss26="null",ss27="null",ss28="null",ss29="null",ss30="null",ss31="null",ss32="null",ss33="null",ss34="null",ss35="null",ss36="null",ss37="null",ss38="null",ss39="null",ss40="null",ss41="null",ss42="null",ss43="null",ss44="null",ss45="null",ss46="null",ss47="null",ss48="null",ss49="null",ss50="null",ss51="null",ss52="null",ss53="null",ss54="null",m1="-1",m2="60";
int flag=0;
PreparedStatement st;
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


rs2=stmt1.executeQuery("select * from view_mark_admin_re_IAT1 where dept='"+dept11+"'"); 


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
<tr><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td></tr>

</center></table> 
</br></br></br></br></br>

<%

if(!s5.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject11");
stmt1.executeUpdate("create table subject11 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(75),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s5+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject11 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}


if(!s6.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject22");
stmt1.executeUpdate("create table subject22 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(75),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s6+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject22 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}


if(!s7.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject33");
stmt1.executeUpdate("create table subject33 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s7+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject33 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}

if(!s8.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject44");
stmt1.executeUpdate("create table subject44 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s8+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject44 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}
if(!s9.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject55");
stmt1.executeUpdate("create table subject55 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(150),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s9+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject55 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}

if(!s10.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject66");

stmt1.executeUpdate("create table subject66 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s10+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject66 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 


}

if(!s11.equals("null")){
stmt1.executeUpdate("DROP TABLE IF EXISTS subject77");
stmt1.executeUpdate("create table subject77 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),dept varchar(100),subcode varchar(100),subname varchar(100),test varchar(100),mark5 varchar(25))");


rs2=stmt1.executeQuery("select a.regno,a.name,b.dept,b.subcode,b.subname,b.test,b.mark from TEST_STUD a,Student_Mark_entry_IAT1_re1 b where b.subcode='"+s11+"' and a.dept='"+s1+"' and a.batch='"+s2+"' and a.sem='"+s3+"' and b.test='"+s4+"' and a.regno=b.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO subject77 (regno,name,dept,subcode,subname,test,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.executeUpdate();
st.clearParameters();
} 
}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s5+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss1=rs2.getString(1);
ss2=rs2.getString(2);
ss3=rs2.getString(3);
ss4=rs2.getString(4);
ss5=rs2.getString(5);
ss6=rs2.getString(6);
ss7=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s6+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss8=rs2.getString(1);
ss9=rs2.getString(2);
ss10=rs2.getString(3);
ss11=rs2.getString(4);
ss12=rs2.getString(5);
ss13=rs2.getString(6);
ss14=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s7+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss15=rs2.getString(1);
ss16=rs2.getString(2);
ss17=rs2.getString(3);
ss18=rs2.getString(4);
ss19=rs2.getString(5);
ss20=rs2.getString(6);
ss21=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s8+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss22=rs2.getString(1);
ss23=rs2.getString(2);
ss24=rs2.getString(3);
ss25=rs2.getString(4);
ss26=rs2.getString(5);
ss27=rs2.getString(6);
ss28=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s9+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss29=rs2.getString(1);
ss30=rs2.getString(2);
ss31=rs2.getString(3);
ss32=rs2.getString(4);
ss33=rs2.getString(5);
ss34=rs2.getString(6);
ss35=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s10+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss36=rs2.getString(1);
ss37=rs2.getString(2);
ss38=rs2.getString(3);
ss39=rs2.getString(4);
ss40=rs2.getString(5);
ss41=rs2.getString(6);
ss42=rs2.getString(7);

}
rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s11+"' AND dept='"+s1+"'"); 
while(rs2.next())

{
ss43=rs2.getString(1);
ss44=rs2.getString(2);
ss45=rs2.getString(3);
ss46=rs2.getString(4);
ss47=rs2.getString(5);
ss48=rs2.getString(6);
ss49=rs2.getString(7);

}
if((!s5.equals("null"))&&(!s6.equals("null"))&&(!s7.equals("null"))&&(!s8.equals("null"))&&(!s9.equals("null"))&&(!s10.equals("null"))&&(!s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th><th><%=s8%></th><th><%=s9%></th><th><%=s10%></th><th><%=s11%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25),mark3 varchar(25),mark4 varchar(25),mark5 varchar(25),mark6 varchar(25),mark7 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5,subject33.mark5,subject44.mark5,subject55.mark5,subject66.mark5,subject77.mark5 from (select regno,name from subject11 UNION select regno,name from subject22 UNION select regno,name from subject33 UNION select regno,name from subject44 UNION select regno,name from subject55 UNION select regno,name from subject66 UNION select regno,name from subject77) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno LEFT JOIN subject33 on w.regno=subject33.regno LEFT JOIN subject44 on w.regno=subject44.regno LEFT JOIN subject55 on w.regno=subject55.regno LEFT JOIN subject66 on w.regno=subject66.regno LEFT JOIN subject77 on w.regno=subject77.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2,mark3,mark4,mark5,mark6,mark7) VALUES (?,?,?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.setString(8,rs2.getString(8));
st.setString(9,rs2.getString(9));
st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("SELECT * FROM consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{ 
%>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>
<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<td><%=rs2.getString(7)%></td>
<td><%=rs2.getString(8)%></td>
<td><%=rs2.getString(9)%></td>
<td><%=rs2.getString(10)%></td>
<%
}

%>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td><td><%=ss15%></td><td><%=ss22%></td><td><%=ss29%></td><td><%=ss36%></td><td><%=ss43%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td><td><%=ss16%></td><td><%=ss23%></td><td><%=ss30%></td><td><%=ss37%></td><td><%=ss44%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td><td><%=ss17%></td><td><%=ss24%></td><td><%=ss31%></td><td><%=ss38%></td><td><%=ss45%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td><td><%=ss18%></td><td><%=ss25%></td><td><%=ss32%></td><td><%=ss39%></td><td><%=ss46%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td><td><%=ss19%></td><td><%=ss26%></td><td><%=ss33%></td><td><%=ss40%></td><td><%=ss47%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td><td><%=ss20%></td><td><%=ss27%></td><td><%=ss34%></td><td><%=ss41%></td><td><%=ss48%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td><td><%=ss21%></td><td><%=ss28%></td><td><%=ss35%></td><td><%=ss42%></td><td><%=ss49%></td></tr>



<%
}


if((!s5.equals("null"))&&(!s6.equals("null"))&&(!s7.equals("null"))&&(!s8.equals("null"))&&(!s9.equals("null"))&&(!s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th><th><%=s8%></th><th><%=s9%></th><th><%=s10%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25),mark3 varchar(25),mark4 varchar(25),mark5 varchar(25),mark6 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5,subject33.mark5,subject44.mark5,subject55.mark5,subject66.mark5 from (select regno,name from subject11 UNION select regno,name from subject22 UNION select regno,name from subject33 UNION select regno,name from subject44 UNION select regno,name from subject55 UNION select regno,name from subject66) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno LEFT JOIN subject33 on w.regno=subject33.regno LEFT JOIN subject44 on w.regno=subject44.regno LEFT JOIN subject55 on w.regno=subject55.regno LEFT JOIN subject66 on w.regno=subject66.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2,mark3,mark4,mark5,mark6) VALUES (?,?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));
st.setString(8,rs2.getString(8));

st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{ %>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>

<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<td><%=rs2.getString(7)%></td>
<td><%=rs2.getString(8)%></td>
<td><%=rs2.getString(9)%></td>

<%
}
%>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td><td><%=ss15%></td><td><%=ss22%></td><td><%=ss29%></td><td><%=ss36%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td><td><%=ss16%></td><td><%=ss23%></td><td><%=ss30%></td><td><%=ss37%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td><td><%=ss17%></td><td><%=ss24%></td><td><%=ss31%></td><td><%=ss38%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td><td><%=ss18%></td><td><%=ss25%></td><td><%=ss32%></td><td><%=ss39%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td><td><%=ss19%></td><td><%=ss26%></td><td><%=ss33%></td><td><%=ss40%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td><td><%=ss20%></td><td><%=ss27%></td><td><%=ss34%></td><td><%=ss41%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td><td><%=ss21%></td><td><%=ss28%></td><td><%=ss35%></td><td><%=ss42%></td></tr>



<%

}

if((!s5.equals("null"))&&(!s6.equals("null"))&&(!s7.equals("null"))&&(!s8.equals("null"))&&(!s9.equals("null"))&&(s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th><th><%=s8%></th><th><%=s9%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25),mark3 varchar(25),mark4 varchar(25),mark5 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5,subject33.mark5,subject44.mark5,subject55.mark5 from (select regno,name from subject11 UNION select regno,name from subject22 UNION select regno,name from subject33 UNION select regno,name from subject44 UNION select regno,name from subject55) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno LEFT JOIN subject33 on w.regno=subject33.regno LEFT JOIN subject44 on w.regno=subject44.regno LEFT JOIN subject55 on w.regno=subject55.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2,mark3,mark4,mark5) VALUES (?,?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));
st.setString(7,rs2.getString(7));


st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{%>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>


<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<td><%=rs2.getString(7)%></td>
<td><%=rs2.getString(8)%></td>


<%
}
%>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td><td><%=ss15%></td><td><%=ss22%></td><td><%=ss29%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td><td><%=ss16%></td><td><%=ss23%></td><td><%=ss30%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td><td><%=ss17%></td><td><%=ss24%></td><td><%=ss31%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td><td><%=ss18%></td><td><%=ss25%></td><td><%=ss32%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td><td><%=ss19%></td><td><%=ss26%></td><td><%=ss33%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td><td><%=ss20%></td><td><%=ss27%></td><td><%=ss34%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td><td><%=ss21%></td><td><%=ss28%></td><td><%=ss35%></td></tr>



<%
}


if((!s5.equals("null"))&&(!s6.equals("null"))&&(!s7.equals("null"))&&(!s8.equals("null"))&&(s9.equals("null"))&&(s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th><th><%=s8%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25),mark3 varchar(25),mark4 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5,subject33.mark5,subject44.mark5 from (select regno,name from subject11 UNION select regno,name from subject22 UNION select regno,name from subject33 UNION select regno,name from subject44) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno LEFT JOIN subject33 on w.regno=subject33.regno LEFT JOIN subject44 on w.regno=subject44.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2,mark3,mark4) VALUES (?,?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));
st.setString(6,rs2.getString(6));



st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{ %>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>

<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<td><%=rs2.getString(7)%></td>



<%
}
%>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td><td><%=ss15%></td><td><%=ss22%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td><td><%=ss16%></td><td><%=ss23%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td><td><%=ss17%></td><td><%=ss24%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td><td><%=ss18%></td><td><%=ss25%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td><td><%=ss19%></td><td><%=ss26%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td><td><%=ss20%></td><td><%=ss27%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td><td><%=ss21%></td><td><%=ss28%></td></tr>



<%
}

if((!s5.equals("null"))&&(!s6.equals("null"))&&(!s7.equals("null"))&&(s8.equals("null"))&&(s9.equals("null"))&&(s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th><th><%=s7%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25),mark3 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5,subject33.mark5 from (select regno,name from subject11 UNION select regno,name from subject22 UNION select regno,name from subject33) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno LEFT JOIN subject33 on w.regno=subject33.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2,mark3) VALUES (?,?,?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.setString(5,rs2.getString(5));




st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{%>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>

<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<td><%=rs2.getString(6)%></td>
<%
}
%>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td><td><%=ss15%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td><td><%=ss16%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td><td><%=ss17%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td><td><%=ss18%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td><td><%=ss19%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td><td><%=ss20%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td><td><%=ss21%></td></tr>
<%
}

if((!s5.equals("null"))&&(!s6.equals("null"))&&(s7.equals("null"))&&(s8.equals("null"))&&(s9.equals("null"))&&(s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th><th><%=s6%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25),mark2 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5,subject22.mark5 from (select regno,name from subject11 UNION select regno,name from subject22) as w LEFT JOIN subject11 on w.regno=subject11.regno LEFT JOIN subject22 on w.regno=subject22.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1,mark2) VALUES (?,?,?,?)");
st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.setString(4,rs2.getString(4));
st.executeUpdate();
st.clearParameters();

} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{ 

 %>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>

<td><%=rs2.getString(4)%></td>
<td><%=rs2.getString(5)%></td>
<%
}
 %>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=ss1%></td><td><%=ss8%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=ss2%></td><td><%=ss9%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=ss3%></td><td><%=ss10%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=ss4%></td><td><%=ss11%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=ss5%></td><td><%=ss12%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=ss6%></td><td><%=ss13%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=ss7%></td><td><%=ss14%></td></tr>
<%
}

if((!s5.equals("null"))&&(s6.equals("null"))&&(s7.equals("null"))&&(s8.equals("null"))&&(s9.equals("null"))&&(s10.equals("null"))&&(s11.equals("null"))){%>
<table  class="myTable"> <center><tr><th>SI.NO</th><th>REGISTER NO</th><th>NAME</th><th><%=s5%></th></tr>
<%
stmt1.executeUpdate("DROP TABLE IF EXISTS consoldation_marks_re1");
stmt1.executeUpdate("create table consoldation_marks_re1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,regno varchar(25),name varchar(100),mark1 varchar(25))");


rs2=stmt1.executeQuery("select w.regno,w.name,subject11.mark5 from (select regno,name from subject11) as w LEFT JOIN subject11 on w.regno=subject11.regno"); 
while(rs2.next())
{
st = con1.prepareStatement("INSERT INTO consoldation_marks_re1 (regno,name,mark1) VALUES (?,?,?)");

st.setString(1,rs2.getString(1));
st.setString(2,rs2.getString(2));
st.setString(3,rs2.getString(3));
st.executeUpdate();
st.clearParameters();
} 
rs2=stmt1.executeQuery("select * from consoldation_marks_re1 ORDER BY regno"); 


while(rs2.next())

{  %>
<tr><td><%=rs2.getString(1)%></td>
<td><%=rs2.getString(2)%></td>
<td><%=rs2.getString(3)%></td>

<td><%=rs2.getString(4)%></td><%}


rs2=stmt1.executeQuery("select Tot_no_stud,Stud_Abse,Stud_Pres,Stud_pass,Stud_Fail,Pass_Perc,Fail_Perc from calculation_marks_IAT1_re1 where subcode='"+s5+"' AND dept='"+s1+"'"); 


while(rs2.next())

{ %>
<tr><th colspan="3">TOTAL NUMBER OF STUDENTS</th><td><%=rs2.getString(1)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF ABSENT</th><td><%=rs2.getString(2)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PRESENT</th><td><%=rs2.getString(3)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASSED</th><td><%=rs2.getString(4)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAILED</th><td><%=rs2.getString(5)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF PASS PERCENTAGE</th><td><%=rs2.getString(6)%></td></tr>
<tr><th colspan="3">TOTAL NUMBER OF FAIL PERCENTAGE</th><td><%=rs2.getString(7)%></td></tr>



<%
}





}






session.setAttribute("dept",s1);
session.setAttribute("batch4",s2);
session.setAttribute("sem4",s3);
session.setAttribute("exam4",s4);
rs2.close();

%></table> <table>

</table> 
</center>
</form>