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
 <tr align='center'><td><b>PEC proudly presents this Auto Generated Question paper by prathyushaexamcell.in</b></td></tr><br>
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
rs=stmt.executeQuery("select * from info_questionMODEL_me  where subcode='"+subcode1+"'");  
while(rs.next()){ %>

<b><tr><td align='left'>PROG & BRANCH :<%=rs.getString(3)%>/<%= rs.getString(4) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAX MARKS : 100</td></tr><tr><td align='left'>SEMESTER:<%=rs.getString(5)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE :<%= rs.getString(6) %></td></tr>

<tr><td align='left'>SUB CODE:
<%=rs.getString(1)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TIME : 3 Hrs</td></tr></b>
<tr><td align='left'>SUB NAME :<%= rs.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EXAM : MODEL </td></td></tr> 
<tr><td></td></tr>
<tr><td align='middle'><img src="images//2model.jpg" alt="PITAM" align="center"></td></tr>
<%
 
    ArrayList<Integer> numbers1 = new ArrayList<Integer>();
    while (numbers1.size() < 2) {
        Random random11 = new Random();
        int random1 = random11.nextInt((4 - 1) + 1) + 1;
        if (!numbers1.contains(random1))
            numbers1.add(random1);
    }
    ArrayList<Integer> list2_U1 =numbers1;

ArrayList<Integer> numbers2 = new ArrayList<Integer>();
    while (numbers2.size() < 2) {
        Random random22 = new Random();
        int random2 = random22.nextInt((8 - 5) + 1) + 5;
        if (!numbers2.contains(random2))
            numbers2.add(random2);
    }
    ArrayList<Integer> list2_U2 =numbers2;

ArrayList<Integer> numbers3 = new ArrayList<Integer>();
    while (numbers3.size() < 2) {
        Random random33 = new Random();
        int random3 = random33.nextInt((12 - 9) + 1) + 9;
        if (!numbers3.contains(random3))
            numbers3.add(random3);
    }
    ArrayList<Integer> list2_U3 =numbers3;

ArrayList<Integer> numbers4 = new ArrayList<Integer>();
    while (numbers4.size() < 2) {
        Random random44 = new Random();
        int random4 = random44.nextInt((16 - 13) + 1) + 13;
        if (!numbers4.contains(random4))
            numbers4.add(random4);
    }
    ArrayList<Integer> list2_U4 =numbers4;

ArrayList<Integer> numbers5 = new ArrayList<Integer>();
    while (numbers5.size() < 2) {
        Random random55 = new Random();
        int random5 = random55.nextInt((20 - 17) + 1) + 17;
        if (!numbers5.contains(random5))
            numbers5.add(random5);
    }
    ArrayList<Integer> list2_U5 =numbers5;




ArrayList<Integer> numbers6 = new ArrayList<Integer>();
    while (numbers6.size() < 2) {
        Random random66 = new Random();
        int random6 = random66.nextInt((24 - 21) + 1) + 21;
        if (!numbers6.contains(random6))
            numbers6.add(random6);
    }
    ArrayList<Integer> list16_U1 =numbers6;
 
ArrayList<Integer> numbers7 = new ArrayList<Integer>();
    while (numbers7.size() < 2) {
        Random random77 = new Random();
        int random7 = random77.nextInt((28 - 25) + 1) + 25;
        if (!numbers7.contains(random7))
            numbers7.add(random7);
    }
    ArrayList<Integer> list16_U2 =numbers7;
 
ArrayList<Integer> numbers8 = new ArrayList<Integer>();
    while (numbers8.size() < 2) {
        Random random88 = new Random();
        int random8 = random88.nextInt((32 - 29) + 1) + 29;
        if (!numbers8.contains(random8))
            numbers8.add(random8);
    }
    ArrayList<Integer> list16_U3 =numbers8;

ArrayList<Integer> numbers9 = new ArrayList<Integer>();
    while (numbers9.size() < 2) {
        Random random99 = new Random();
        int random9 = random99.nextInt((36 - 33) + 1) + 33;
        if (!numbers9.contains(random9))
            numbers9.add(random9);
    }
    ArrayList<Integer> list16_U4 =numbers9;

ArrayList<Integer> numbers10 = new ArrayList<Integer>();
    while (numbers10.size() < 2) {
        Random random1010 = new Random();
        int random10 = random1010.nextInt((40 - 37) + 1) + 37;
        if (!numbers10.contains(random10))
            numbers10.add(random10);
    }
    ArrayList<Integer> list16_U5 =numbers10;

ArrayList<Integer> numbers11 = new ArrayList<Integer>();
    while (numbers11.size() < 2) {
        Random random1011 = new Random();
        int random11 = random1011.nextInt((45 - 41) + 1) + 41;
        if (!numbers11.contains(random11))
            numbers11.add(random11);
    }
    ArrayList<Integer> list17_U6 =numbers11;
%>

  <tr> <td align='left' valign='top'><img src="images//1.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U1.get(0)%>" width="auto" height="auto" /></td></tr>
   <tr> <td align='left' valign='baseline'><img src="images//2.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U1.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//3.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U2.get(0)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//4.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U2.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//5.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U3.get(0)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//6.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U3.get(1)%>" width="auto" height="auto" /></td></tr>
   <tr> <td align='left' valign='top'><img src="images//7.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U4.get(0)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//8.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U4.get(1)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//9.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U5.get(0)%>" width="auto" height="auto" /></td></tr>
<tr> <td align='left' valign='top'><img src="images//10.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list2_U5.get(1)%>" width="auto" height="auto" /></td>

</tr>
<tr><td align='middle'><img src="images//2model_ME.jpg" alt="PITAM" align="center"></td></tr></br></br>

  <tr> <td align='left' valign='top'><img src="images//11a.png" align="top"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list16_U1.get(0)%>" width="auto" height="auto" /> </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//11b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U1.get(1)%>" width="auto" height="auto" /></td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//12a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list16_U2.get(0)%>" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//12b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U2.get(1)%>" width="auto" height="auto" /> </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//13a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list16_U3.get(0)%>"width="auto" height="auto" />   </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//13b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U3.get(1)%>" width="auto" height="auto"/>  </td></tr></br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//14a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U4.get(0)%>" width="auto" height="auto" />  </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//14b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U4.get(1)%>" width="auto" height="auto" /> </td></tr>
</br></br>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//15a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list16_U5.get(0)%>"width="auto" height="auto" />   </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//15b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list16_U5.get(1)%>" width="auto" height="auto"/>  </td></tr>
</br></br>
  <tr> <td align='left' valign='top'><img src="images//16a.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="retrive_MODEL.jsp?id=<%=list17_U6.get(0)%>"width="auto" height="auto" />   </td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left' valign='top'><img src="images//16b.png" align="top"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="retrive_MODEL.jsp?id=<%=list17_U6.get(1)%>" width="auto" height="auto"/>  </td></tr>

<tr><td align='left'>Subject Coordinator Name:<%=rs.getString(7)%></td></tr><tr><td align='left'>HOD Name: <%= rs.getString(8)%></td></tr>



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