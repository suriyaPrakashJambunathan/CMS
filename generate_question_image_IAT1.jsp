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
<tr align='center'><td><b>PEC proudly presents this Automatic Question paper by prathyushaexamcell.in</b></td></tr><br>
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
rs=stmt.executeQuery("select * from info_questionIAT1  where subcode='"+subcode1+"'");  
while(rs.next()){ %>

<tr><td align='left'>PROG & BRANCH :<%=rs.getString(3)%>/<%= rs.getString(4) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAX MARKS : 50</td></tr><tr><td align='left'>SEMESTER:<%=rs.getString(5)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  DATE :<%= rs.getString(6) %></td></tr>

<tr><td align='left'>SUB CODE:
<%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TIME : 100 Mins</td></tr></b>
<tr><td align='left'>SUB NAME :<%= rs.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Exam: IAT-I</td></tr> 
<tr><td></td></tr>
<tr><td align='middle'><img src="images//mark2.jpg" alt="PITAM" align="center"></td></tr>

<%
 
    ArrayList<Integer> numbers = new ArrayList<Integer>();
    while (numbers.size() < 5) {
        Random random = new Random();
        int random1 = random.nextInt((15 - 1) + 1) + 1;
        if (!numbers.contains(random1))
            numbers.add(random1);
    }
    ArrayList<Integer> list =numbers;

 
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
        int random44 = random4.nextInt((22 - 20) + 1) + 20;
        if (!numbers4.contains(random44))
            numbers4.add(random44);
    }
    ArrayList<Integer> list4 =numbers4;

ArrayList<Integer> numbers5 = new ArrayList<Integer>();
    while (numbers5.size() < 2) {
        Random random5 = new Random();
        int random55 = random5.nextInt((25 - 23) + 1) + 23;
        if (!numbers5.contains(random55))
            numbers5.add(random55);
    }
    ArrayList<Integer> list5 =numbers5;
%>

  <tr> <td align='left' valign='top'><img src="images//1.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list.get(0)%>" width="auto" height="auto" /></td></tr>
   <tr> <td align='left' valign='top'><img src="images//2.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//3.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list.get(2)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//4.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list.get(3)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//5.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list.get(4)%>" width="auto" height="auto" /></td>

</tr>

<tr><td align='middle'><img src="images//MARK.png" alt="PITAM" align="center"></td></tr>

  <tr> <td align='left' valign='top'><img src="images//6a.png" align="top"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list2.get(0)%>" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'> <img src="images//6b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_IAT1.jsp?id=<%=list3.get(0)%>" width="auto" height="auto" />  </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//7a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_IAT1.jsp?id=<%=list4.get(0)%>" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'> <img src="images//7b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_IAT1.jsp?id=<%=list4.get(1)%>" width="auto" height="auto" /> </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//8a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_IAT1.jsp?id=<%=list5.get(0)%>"width="auto" height="auto" />   </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//8b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_IAT1.jsp?id=<%=list5.get(1)%>" width="auto" height="auto"/>  </td></tr>
<tr></tr>
<tr></tr>

<tr><td align='left'>Staff Name:<%=rs.getString(7)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HOD Name: <%= rs.getString(8)%></td></tr>


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