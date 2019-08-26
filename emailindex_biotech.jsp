<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<table width='100%'><tr><td align='left'><a href='index_biotech.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
</head>
<body bgcolor="FFFFFF">
<center><a href="" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center><br><br>
     <center><a href="" id="logo"><img src="images/PLACEMENT MAIL.gif" alt="LOGO" /></a></center>    <br><br>
<form action="mailtest_yahoo.jsp" method="post">
   <center>
       <div>
   <p>
      <span><font face="verdana" size="3px">To Mail:</font>
      <input type="text" size="60px" name="Email"></span>
   </p>
   </div>
       <div>
   <p>
      <span><font face="verdana" size="3px">Subject:</font>
      <input type="text" size="60px" name="Subject"></span>
   </p>
   </div>
   <div>
 <p>
      <span><font face="verdana" size="3px">Message:</font>
     </p>
     <p>
      <textarea rows="30" cols="72" name="Message">

    </textarea></span>
   </p>
   </div>
   </center>
   
    <div align="center" ><input type="submit" value="Send Mail"> </div>
    
    
    
    
</form>





</body>
</html>