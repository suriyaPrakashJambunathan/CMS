<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
 
 Connection conn=null;
   Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");

   PreparedStatement psImageInsertDatabase=null;
String subcode1=request.getParameter("subcode");
String qid1=request.getParameter("qno");
   byte[] b=null;
   try{


      String sqlImageInsertDatabase="insert into upload_image2 (subcode,qid) values(?,?)";
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
      psImageInsertDatabase.setString(1,subcode1);
psImageInsertDatabase.setString(2,qid1);
      psImageInsertDatabase.executeUpdate();

   }
   catch(Exception e)
   {
     e.printStackTrace();
}
%>





