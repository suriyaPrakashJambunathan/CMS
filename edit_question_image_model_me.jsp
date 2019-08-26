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
rs=stmt.executeQuery("select * from info_questionMODEL_me where subcode='"+subcode1+"'");  
while(rs.next()){ %><form name="main1"  method="post" action="diagram_question_exam_new_model_me.jsp">
        <table border="1" class="myTable"> 
<tr><th  size="20">SUB CODE:</th><td><input type="text" name="subcode" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(1)%>" disabled></td></tr>
<tr><th  size="20">SUBJECT NAME:</th><td><input type="text" name="subname" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(2) %>"></td></tr>
<b><tr><th  size="20">PROGRAME:</th><td><input type="text" name="prog" size="20" style="border:none;font-size:13pt;" value="<%=rs.getString(3)%>"></td></h5></tr>
<tr><th  size="20">DEPT:</th><td><input type="text" name="branch" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(4) %>"></td></tr>

<tr><th  size="20">SEMESTER:</th><td><input type="text" name="sem" size="20" style="border:none;font-size:13pt;" value="<%=rs.getString(5)%>"></td></h5></tr>
<tr><th  size="20">DATE OF EXAM :</th><td><input type="text" name="doe" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(6) %>"></td></tr>



<tr><th  size="20">NAME OF THE SUB COORDINATOR:</th><td><input type="text" name="sname1" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(7) %>"></td></tr>

<tr><th  size="20">NAME OF THE HOD :</th><td><input type="text" name="hod" size="20" style="border:none;font-size:13pt;" value="<%= rs.getString(8) %>"></td></tr>

</table><br><br>
<input type="submit" style="font-size:13pt" value="UPDATE" style="width:180px;height:50px;">
    </form><br><br><br>
<table border="1"  class="myTable">

  <tr><th  size="20">UNIT 1 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive1_model.jsp?id=1" width="auto" height="auto" /></td><td><a href="edit_qno1_model.jsp">EDIT</a></td></tr>
   <tr> <th  size="20">UNIT 1 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive2_model.jsp?id=2" width="auto" height="auto" /></td><td><a href="edit_qno2_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 1 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive3_model.jsp?id=3" width="auto" height="auto" /></td><td><a href="edit_qno3_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 1 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive4_model.jsp?id=4" width="auto" height="auto" /></td><td><a href="edit_qno4_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive5_model.jsp?id=5" width="auto" height="auto" /></td><td><a href="edit_qno5_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 2 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive6_model.jsp?id=6" width="auto" height="auto" /></td><td><a href="edit_qno6_model.jsp">EDIT</a></td></tr>
  <tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive7_model.jsp?id=7" width="auto" height="auto" /></td><td><a href="edit_qno7_model.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 2 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive8_model.jsp?id=8" width="auto" height="auto" /></td><td><a href="edit_qno8_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive9_model.jsp?id=9" width="auto" height="auto" /></td><td><a href="edit_qno9_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive10_model.jsp?id=10" width="auto" height="auto" /></td><td><a href="edit_qno10_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 3 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive11_model.jsp?id=11" width="auto" height="auto" /></td><td><a href="edit_qno11_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 3 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive12_model.jsp?id=12" width="auto" height="auto" /></td><td><a href="edit_qno12_model.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 4 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>13.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive13_model.jsp?id=13" width="auto" height="auto" /></td><td><a href="edit_qno13_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 4 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>14.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive14_model.jsp?id=14" width="auto" height="auto" /></td><td><a href="edit_qno14_model.jsp">EDIT</a></td></tr>
<tr><th  size="20">UNIT 4 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>15.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive15_model.jsp?id=15" width="auto" height="auto" /></td><td><a href="edit_qno15_model.jsp">EDIT</a></td></tr>

  <tr> <th  size="20">UNIT 4 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>16.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive16_model.jsp?id=16" width="auto" height="auto" /></td> <td><a href="edit_qno16_model.jsp">EDIT</a> </td></tr>

   <tr><th  size="20">UNIT 5 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>17.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive17_model.jsp?id=17" width="auto" height="auto" /></td><td><a href="edit_qno17_model.jsp">EDIT</a>  </td></tr>

  <tr> <th  size="20">UNIT 5 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>18.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive18_model.jsp?id=18" width="auto" height="auto" /></td>  <td><a href="edit_qno18_model.jsp">EDIT</a></td></tr>
   <tr><th  size="20">UNIT 5 PART A 2 MARK QUESTION</th>  <td align='left' valign='top'>19.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive19_model.jsp?id=19" width="auto" height="auto" /></td><td><a href="edit_qno19_model.jsp">EDIT</a> </td></tr>

  <tr><th  size="20">UNIT 5 PART A 2 MARK QUESTION</th> <td align='left' valign='top'>20.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive20_model.jsp?id=20"width="auto" height="auto" /></td>  <td><a href="edit_qno20_model.jsp">EDIT</a>  </td></tr>
   <tr><th  size="20">UNIT 1 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>21.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive21_model.jsp?id=21" width="auto" height="auto"/></td><td><a href="edit_qno21_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 1 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>22.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive22_model.jsp?id=22" width="auto" height="auto"/></td><td><a href="edit_qno22_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 1 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>23.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive23_model.jsp?id=23" width="auto" height="auto"/></td><td><a href="edit_qno23_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 1 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>24.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive24_model.jsp?id=24" width="auto" height="auto"/></td><td><a href="edit_qno24_model.jsp">EDIT</a>  </td></tr>
<tr> <th  size="20">UNIT 2 PART B 13 MARK QUESTION</th><td align='left' valign='top'>25.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive25_model.jsp?id=25" width="auto" height="auto"/>  </td><td><a href="edit_qno25_model.jsp">EDIT</a></td></tr>

 <tr><th  size="20">UNIT 2 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>26.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive26_model.jsp?id=26"width="auto" height="auto" /></td>  <td><a href="edit_qno26_model.jsp">EDIT</a>  </td></tr>
   <tr><th  size="20">UNIT 2 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>27.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive27_model.jsp?id=27" width="auto" height="auto"/></td><td><a href="edit_qno27_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 2 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>28.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive28_model.jsp?id=28" width="auto" height="auto"/></td><td><a href="edit_qno28_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 3 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>29.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive29_model.jsp?id=29" width="auto" height="auto"/></td><td><a href="edit_qno29_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 3 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>30.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive30_model.jsp?id=30" width="auto" height="auto"/></td><td><a href="edit_qno30_model.jsp">EDIT</a>  </td></tr>
<tr> <th  size="20">UNIT 3 PART B 13 MARK QUESTION</th><td align='left' valign='top'>31.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive31_model.jsp?id=31" width="auto" height="auto"/>  </td><td><a href="edit_qno31_model.jsp">EDIT</a></td></tr>

 <tr><th  size="20">UNIT 3 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>32.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="edit_retrive32_model.jsp?id=32"width="auto" height="auto" /></td>  <td><a href="edit_qno32_model.jsp">EDIT</a>  </td></tr>
   <tr><th  size="20">UNIT 4 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>33.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive33_model.jsp?id=33" width="auto" height="auto"/></td><td><a href="edit_qno33_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 4 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>34.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive34_model.jsp?id=34" width="auto" height="auto"/></td><td><a href="edit_qno34_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 4 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>35.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive35_model.jsp?id=35" width="auto" height="auto"/></td><td><a href="edit_qno35_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 4 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>36.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive36_model.jsp?id=36" width="auto" height="auto"/></td><td><a href="edit_qno36_model.jsp">EDIT</a>  </td></tr>
<tr> <th  size="20">UNIT 5 PART B 13 MARK QUESTION</th><td align='left' valign='top'>37.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive37_model.jsp?id=37" width="auto" height="auto"/>  </td><td><a href="edit_qno37_model.jsp">EDIT</a></td></tr>

<tr><th  size="20">UNIT 5 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>38.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive38_model.jsp?id=38" width="auto" height="auto"/></td><td><a href="edit_qno38_model.jsp">EDIT</a>  </td></tr>
<tr><th  size="20">UNIT 5 PART B 13 MARK QUESTION</th> <td align='left' valign='top'>39.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive39_model.jsp?id=39" width="auto" height="auto"/></td><td><a href="edit_qno39_model.jsp">EDIT</a>  </td></tr>
<tr> <th  size="20">UNIT 5 PART B 13 MARK QUESTION</th><td align='left' valign='top'>40.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive40_model.jsp?id=40" width="auto" height="auto"/>  </td><td><a href="edit_qno40_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 5 PART B 15 MARK QUESTION</th><td align='left' valign='top'>41.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive41_model.jsp?id=41" width="auto" height="auto"/>  </td><td><a href="edit_qno41_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 2 PART B 15 MARK QUESTION</th><td align='left' valign='top'>42.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive42_model.jsp?id=42" width="auto" height="auto"/>  </td><td><a href="edit_qno42_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 3 PART B 15 MARK QUESTION</th><td align='left' valign='top'>43.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive43_model.jsp?id=43" width="auto" height="auto"/>  </td><td><a href="edit_qno43_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 4 PART B 15 MARK QUESTION</th><td align='left' valign='top'>44.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive44_model.jsp?id=44" width="auto" height="auto"/>  </td><td><a href="edit_qno44_model.jsp">EDIT</a></td></tr>
<tr> <th  size="20">UNIT 5 PART B 15 MARK QUESTION</th><td align='left' valign='top'>45.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="edit_retrive45_model.jsp?id=45" width="auto" height="auto"/>  </td><td><a href="edit_qno45_model.jsp">EDIT</a></td></tr>
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