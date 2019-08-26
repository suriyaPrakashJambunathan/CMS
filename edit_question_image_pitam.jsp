<?xml version="1.0" encoding="UTF-8" ?>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %>
   <%@ page language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html id="eee">
<head><meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/styleimage.css" />

<script>
    function printData()
{
if(document.all){
document.all.divButtons.style.visibility = 'hidden';
}else{
document.getElementById('divButtons').style.visibility = 'hidden';
}
   var divToPrint=document.getElementById("printTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.innerHTML);
   newWin.print();
   newWin.close();



}

$('button').on('click',function(){
printData();
})

    </script>
<center><a href="index123.html" id="logo"><img src="images/IEC_LOGO.JPG" alt="LOGO" /></a><br><br><br>
<style>
@media print {
    #one {
        display :  none;
    }
}
td#aleft {
text-align: center;
}

td#aright {
text-align: right;
}
#eee, #printTable{
    border: 0px;
    
    padding: 0px;
}

#printTable {
     position:absolute;
           top:0%;
           
margin: 0px auto;
}
</style>
</head> 
<body id="printTable">


<style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse;align:center; }
.myTable th { background-color:#BDB76B;color:white;align:center; }
.myTable td, .myTable th { padding:10px;border:3px solid #BDB76B;align:center; }
</style>
<%String id="0";%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
    try{  
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  String subcode1 = request.getParameter("id");
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from info_question where subcode='"+subcode1+"'");  
while(rs.next()){ %><form name="main1"  method="post" action="diagram_question_exam_model.jsp">
        <table border="1" class="myTable"> 
<tr><th  size="20">SUB CODE:</th><td><input type="text" name="subcode" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(1)%>" disabled></td></tr>
<tr><th  size="20">SUBJECT NAME:</th><td><input type="text" name="subname" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(2) %>"></td></tr>
<b><tr><th  size="20">PROGRAME:</th><td><input type="text" name="prog" size="20" style="border:none;font-size:13pt;" value="<%=rs.getString(3)%>"></td></h5></tr>
<tr><th  size="20">DEPT:</th><td><input type="text" name="branch" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(4) %>"></td></tr>
<tr><th  size="20">EXAM:</th><td><input type="text" name="exam" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(5) %>"></td></tr>

<tr><th  size="20">SEMESTER:</th><td><input type="text" name="sem" size="20" style="border:none;font-size:13pt;" value="<%=rs.getString(6)%>"></td></h5></tr>
<tr><th  size="20">DATE OF EXAM :</th><td><input type="text" name="doe" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(7) %>"></td></tr>



<tr><th  size="20">NAME OF THE SUB COORDINATOR:</th><td><input type="text" name="sname1" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(8) %>"></td></tr>

<tr><th  size="20">NAME OF THE HOD :</th><td><input type="text" name="hod" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(9) %>"></td></tr>

</table><br><br>
<input type="submit" style="font-size:13pt" value="UPDATE" style="width:180px;height:50px;">
    </form><br><br><br>
<table border="1"  class="myTable">

  <tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive1.jsp?id=1" width="auto" height="auto" /></td><td><a href="edit_qno1.jsp">EDIT</a></td></tr>
   <tr> <th  size="20">UNIT 2 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive2.jsp?id=2" width="auto" height="auto" /></td><td><a href="edit_qno2.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 2 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive3.jsp?id=3" width="auto" height="auto" /></td><td><a href="edit_qno3.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive4.jsp?id=4" width="auto" height="auto" /></td><td><a href="edit_qno4.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive5.jsp?id=5" width="auto" height="auto" /></td><td><a href="edit_qno5.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 3 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive6.jsp?id=6" width="auto" height="auto" /></td><td><a href="edit_qno6.jsp">EDIT</a></td></tr>
  <tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive7.jsp?id=7" width="auto" height="auto" /></td><td><a href="edit_qno7.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive8.jsp?id=8" width="auto" height="auto" /></td><td><a href="edit_qno8.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive9.jsp?id=9" width="auto" height="auto" /></td><td><a href="edit_qno9.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive10.jsp?id=10" width="auto" height="auto" /></td><td><a href="edit_qno10.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive11.jsp?id=11" width="auto" height="auto" /></td><td><a href="edit_qno11.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 3 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive12.jsp?id=12" width="auto" height="auto" /></td><td><a href="edit_qno12.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>13.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive13.jsp?id=13" width="auto" height="auto" /></td><td><a href="edit_qno13.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>14.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive14.jsp?id=14" width="auto" height="auto" /></td><td><a href="edit_qno14.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>15.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive15.jsp?id=15" width="auto" height="auto" /></td><td><a href="edit_qno15.jsp">EDIT</a></td></tr>

  <tr> <th  size="20">UNIT 2 PART B 8 MARK QUESTION</th> <td align='left' valign='top'>16.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive16.jsp?id=16" width="auto" height="auto" /></td> <td><a href="edit_qno16.jsp">EDIT</a> </td></tr>

   <tr><th  size="20">UNIT 2 PART B 8 MARK QUESTION</th>  <td align='left' valign='top'>17.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive17.jsp?id=17" width="auto" height="auto" /></td><td><a href="edit_qno17.jsp">EDIT</a>  </td></tr>

  <tr> <th  size="20">UNIT 3 PART B 8 MARK QUESTION</th> <td align='left' valign='top'>18.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive18.jsp?id=18" width="auto" height="auto" /></td>  <td><a href="edit_qno18.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 3 PART B 8 MARK QUESTION</th>  <td align='left' valign='top'>19.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive19.jsp?id=19" width="auto" height="auto" /></td><td><a href="edit_qno19.jsp">EDIT</a> </td></tr>

  <tr><th  size="20">UNIT 2 PART B 16 MARK QUESTION</th> <td align='left' valign='top'>20.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive20.jsp?id=20"width="auto" height="auto" /></td>  <td><a href="edit_qno20.jsp">EDIT</a>  </td></tr>
   <tr><th  size="20">UNIT 2 PART B 16 MARK QUESTION</th> <td align='left' valign='top'>21.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive21.jsp?id=21" width="auto" height="auto"/></td><td><a href="edit_qno21.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 3 PART B 16 MARK QUESTION</th> <td align='left' valign='top'>22.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive22.jsp?id=22" width="auto" height="auto"/></td><td><a href="edit_qno22.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 3 PART B 16 MARK QUESTION</th> <td align='left' valign='top'>23.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive23.jsp?id=23" width="auto" height="auto"/></td><td><a href="edit_qno23.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 3 PART B 16 MARK QUESTION</th> <td align='left' valign='top'>24.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive24.jsp?id=24" width="auto" height="auto"/></td><td><a href="edit_qno24.jsp">EDIT</a>  </td></tr>
<tr> <th  size="20">UNIT 3 PART B 16 MARK QUESTION</th><td align='left' valign='top'>25.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive25.jsp?id=25" width="auto" height="auto"/>  </td><td><a href="edit_qno25.jsp">EDIT</a></td></tr>
<tr></tr>
<tr></tr>

<%session.setAttribute("subcode",subcode1);%> 

<%  
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 

</table></form></center>
</body>
</html>