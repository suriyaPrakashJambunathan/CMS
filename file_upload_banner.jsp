<%@page import="java.util.List"%>
<html>
    <head>
        <table width='100%'><tr><td align='left'><a href='index_staff.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
        <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center> 
        <style>#one {
    width: 15em;  height: 2em;
}</style>
        <%@ page import="java.util.ArrayList" %>
          <style>#fileid {
    width: 25em;  height: 2em;
}</style>
            
        </head>
<body>
    <%!String loc;%>
    <br><br> 
      <center> <label for="fileName"><img src="images/BANNER.gif" alt=""> </label></center><br><br>
  <center><br><br>  
      
     <center><h3 style="color:darkred">Upload banner photos in size of width="940" height="250" and give the file name as name of the picture</h3></center> 
 
        <form action="fileupload_banner.jsp" method="POST" enctype="multipart/form-data">      
          
            <input id="fileid" type="file" name="fileName" /><br><br><br><br>             
          <input id="one" type="submit" value="UPLOAD" /><br><br><br><br><br><br><br><br>     
          <a href="index_banner.jsp"><h1>DELETE LINK<h1></a>
        
             </form>  </center>
   
  
    
</body>
</html>