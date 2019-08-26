<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%><%@page import="javax.servlet.http.HttpSession"%>
    <%
String subcode5=(String) session.getAttribute("subcode");
if(subcode5==null) subcode5="";
%>  
<%=subcode5%>
<%
   Connection conn=null;
   Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1");

   PreparedStatement psImageInsertDatabase=null;
String id="1";
   byte[] b=null;
   try{
      String sqlImageInsertDatabase="update model_QUESTIONS set qno='20',bImage=? where sno=20 and subcode=?";
      psImageInsertDatabase=conn.prepareStatement(sqlImageInsertDatabase);

      DiskFileItemFactory factory = new DiskFileItemFactory();

      ServletFileUpload sfu = new ServletFileUpload(factory);
      List items = sfu.parseRequest(request);

      Iterator iter = items.iterator();

      while (iter.hasNext()) {
         FileItem item = (FileItem) iter.next();
         if (!item.isFormField()) {
              b = item.get();
          }
      }

      psImageInsertDatabase.setBytes(1,b);
psImageInsertDatabase.setString(2,subcode5);
      psImageInsertDatabase.executeUpdate();
session.setAttribute("subcode",subcode5);
     response.sendRedirect("upload_partb_u2_16_21_model.jsp"); 
   }
   catch(Exception e)
   {
     e.printStackTrace();}

%>








