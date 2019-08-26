<?xml version="1.0" encoding="UTF-8" ?>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %>
   <%@ page language="java" %>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Collections"%>
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
<body id="printTable"><center>
<table class="ex" id="printTable" border="0px" margin-top="0px" align="center">
 <tr align='center'><td><b>PITAM proudly presents this Auto Generated Question paper powered by prathyushaexamcell.in</b></td></tr><br>
<%String id="0";%>
<tr align='center'><td><img src="images//question_title.jpg" alt="PITAM" align="center"></td></tr><br>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.Random"%>

<%
    try
    {
       
  
//Connection con = null;  
Statement stmt = null;  
ResultSet rs = null;  
  String subcode1 = request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from info_question  where subcode='"+subcode1+"'");  
while(rs.next()){ %>

<b><tr><td align='left'>PROG & BRANCH :<%=rs.getString(3)%>/<%= rs.getString(4) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MAX MARKS : 50</td></tr><tr><td align='left'>SEMESTER:<%=rs.getString(6)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE :<%= rs.getString(7) %></td></tr>

<tr><td align='left'>SUB CODE:
<%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TIME : 100 Mins</td></tr></b>
<tr><td align='left'>SUB NAME :<%= rs.getString(2)%></td></tr> 
<tr><td></td></tr>
<tr><td align="middle"><h4>PART A</h4></td></tr>
<tr><td align="right"><h4 letter-spacing='-1px'>5x 2 = 10 Marks</p></td></tr>

<%
 
    ArrayList<Integer> numbers = new ArrayList<Integer>();
    while (numbers.size() < 2) {
        Random random = new Random();
        int random1 = random.nextInt((5 - 1) + 1) + 1;
        if (!numbers.contains(random1))
            numbers.add(random1);
    }
    ArrayList<Integer> list =numbers;

ArrayList<Integer> numbers1 = new ArrayList<Integer>();
    while (numbers1.size() < 3) {
        Random random1 = new Random();
        int random11 = random1.nextInt((15 - 6) + 1) + 6;
        if (!numbers1.contains(random11))
            numbers1.add(random11);
    }
    ArrayList<Integer> list1 =numbers1;
 
ArrayList<Integer> numbers2 = new ArrayList<Integer>();
    while (numbers2.size() < 1) {
        Random random2 = new Random();
        int random22 = random2.nextInt((17 - 16) + 1) + 16;
        if (!numbers2.contains(random22))
            numbers2.add(random22);
    }
    ArrayList<Integer> list2 =numbers2;
 
ArrayList<Integer> numbers3 = new ArrayList<Integer>();
    while (numbers3.size() < 1) {
        Random random3 = new Random();
        int random33 = random3.nextInt((19 - 18) + 1) + 18;
        if (!numbers3.contains(random33))
            numbers3.add(random33);
    }
    ArrayList<Integer> list3 =numbers3;

ArrayList<Integer> numbers4 = new ArrayList<Integer>();
    while (numbers4.size() < 2) {
        Random random4 = new Random();
        int random44 = random4.nextInt((25 - 22) + 1) + 22;
        if (!numbers4.contains(random44))
            numbers4.add(random44);
    }
    ArrayList<Integer> list4 =numbers4;
%>

  <tr> <td align='left' valign='top'>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list.get(0)%>" width="auto" height="auto" /></td></tr>
   <tr> <td align='left' valign='top'>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list1.get(0)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list1.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list1.get(2)%>" width="auto" height="auto" /></td>

</tr>

<tr><td align='middle'><h4>PART B</h4></td></tr>
  <tr> <td align='right'><h4>1x 8 = 8,2 x 16 = 32 Marks</h4></td></tr>

  <tr> <td align='left' valign='top'>6.(a) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list2.get(0)%>" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'> &nbsp;&nbsp;&nbsp;&nbsp; (b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive.jsp?id=<%=list3.get(0)%>" width="auto" height="auto" />  </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'>7.(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive.jsp?id=20" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'> &nbsp;&nbsp;&nbsp;&nbsp; (b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive.jsp?id=21" width="auto" height="auto" /> </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'>8.(a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive.jsp?id=<%=list4.get(0)%>"width="auto" height="auto" />   </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'>&nbsp;&nbsp;&nbsp;&nbsp;(b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive.jsp?id=<%=list4.get(1)%>" width="auto" height="auto"/>  </td></tr>
<tr></tr>
<tr></tr>

<tr><td align='left'>Subject Coordinator Name:<%=rs.getString(8)%></td></tr>
<tr><td align='left'>HOD Name: <%= rs.getString(9)%></td></tr>


<%session.setAttribute("subcode",subcode1);%> 

<%
  }%>
  <%
rs.close();  
stmt.close();  
con.close(); 


}  
catch(Exception e){e.printStackTrace();} 
%> 

</table></center>
</form>
</body>
</html>