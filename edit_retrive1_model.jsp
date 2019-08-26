 <?xml version="1.0" encoding="UTF-8" ?>
   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"   %>
   <%@ page language="java" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %> 
     <%@ page import="java.util.*"%>



<%
String subcode1=(String) session.getAttribute("subcode");
if(subcode1==null) subcode1="";
%>
<%=subcode1%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
      "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
       <html xmlns="http://www.w3.org/1999/xhtml">
       <head>
    <title>MindDotEditor posted Data</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="noindex, nofollow" />
    <link href="../sample.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../fckeditor.gif" type="image/x-icon" />
     </head>
     <body>
<table border=12>


  <%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%
response.setContentType("image/gif");
OutputStream o = response.getOutputStream();

Blob image = null;
//long   imgLen;
Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;

ResultSet rs = null;
Statement stmt1 = null;

ResultSet rs1 = null;
try 
{

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1");

stmt = con.createStatement();
String imgid=request.getParameter("id");
rs = stmt.executeQuery("select (bImage) from model_QUESTIONS where (qno = '"+imgid+"' and subcode = '"+subcode1+"')");
%>

  <tr>
    <td>img</td> 
<%
    while(rs.next()){
  

        image = rs.getBlob(1);
        imgData = image.getBytes(1,(int)image.length());
        o.write(imgData); o.flush(); o.close();

    %>     
  
   
 <%
     }    
   %>
 </tr>

    <%


o.close();

} catch (Exception e)
{

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());



}


%>
<%session.setAttribute("subcode",subcode1);%> 
</table>




