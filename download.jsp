
 <%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.ServletOutputStream"%>
<%@page import="javax.servlet.HttpMethodConstraintElement"%>
<%@page import="javax.servlet.HttpConstraintElement"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
 <%@page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   
    String filename="2nd review.docx";
String filepath="c:\\test_papers\\";
response.setContentType("APPLICATION/OCTET-STREAM");
response.setHeader("Content-Disposition","attachment; filename="+filename+"\"");
java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath+filename);
int i;
while((i=fileInputStream.read())!=-1)
{
out.write(i);
}
fileInputStream.close();
%>
</body>
</html>