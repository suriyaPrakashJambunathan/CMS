<%@page import="java.io.File"%>

<html>
    <head>
       <div class="logo1" align="left"  style=" font-size:20px; color:red; " >
<a href="index_ece.jsp">Go Back</a>
</div>
    <div class="logo1" align="right"  style=" font-size:20px; color:red;">
<a href="index_main.jsp">Logout</a>
</div> 
    </head>
<body>
     
    <style>
    </style>
 
    <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center>    
    <% String s=(String)request.getParameter("name"); %>
    <%  String path = getServletContext().getRealPath( "//images//announcement//");
File dir = new File( path );
File[] files = dir.listFiles();
for( int ii=0, end=files.length; ii < end; ii++ ) 
{
if( s.equalsIgnoreCase(files[ii].getName())){ %>
    
    <center><iframe src="images//announcement//<%=files[ii].getName()%>" height="1030" width="1040"></iframe></center> 
<%}}%>

      </body>
</html>