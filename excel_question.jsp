<%@page import="java.io.*"%>
<%@page import="java.awt.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%
try {
Document document=new Document();
PdfWriter.getInstance(document,new FileOutputStream("Z:/hello.pdf"));
document.open(); 
document.add(new Paragraph("hello"));
document.close(); 
}
catch (Exception e2) {
System.out.println(e2.getMessage());
}
%>