<%-- 
    Document   : fileupload
    Created on : 24 Mar, 2015, 9:30:07 AM
    Author     : suriya
--%>

<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
                    PrintWriter pw=response.getWriter();
     if(ServletFileUpload.isMultipartContent(request)){

            try {
               
           
                List<FileItem> multiparts;
                multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
String path =getServletContext().getRealPath("//images//announcement//");
              
                for(FileItem item : multiparts){

                    if(!item.isFormField()){

                        String name = new File(item.getName()).getName();
                        item.write( new File(path + File.separator + name));

                       // item.write( new File("C:\\Users\\suriya\\Documents\\NetBeansProjects\\mailwork\\web\\images\\announcement" + File.separator + name));

                    }

                }
 //request.setAttribute("msg","File Uploaded Successfully");   
          // pw.write("alert(\"'+msg+ '\")");  
            
             
          //  dispatcher.forward( request, response ); 
            

               //File uploaded successfully
//pw.write("<html><body><script>alert('File Uploaded Successfully');</script></body></html>");
              // request.setAttribute("message", "File Uploaded Successfully");
response.sendRedirect("file_upload_1.jsp");
            } catch (Exception ex) {

               request.setAttribute("message", "File Upload Failed due to " + ex);

            }         

          

        }else{

            request.setAttribute("message","Sorry this Servlet only handles file upload request");

        }
        
        
        
        %>
    </body>
</html>
