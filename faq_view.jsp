<%!static int c=0;%> 
<html>
    <head>
       <div class="logo1" align="left"  style=" font-size:20px; color:red; " >
<a href="studmain.jsp">Go Back</a>
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
    <%if(s.equalsIgnoreCase("count")){%>
    <%=++c%>
<center><iframe target="tcs1" src="images//faq_papers//faq-tcs-latest-2010-placement-paper.pdf" height="1030" width="1040" src="Faq_open.html"></iframe></center>
<%}%>
<% if(s.equalsIgnoreCase("INFOSYS")) {%>
<center><iframe name="WIBRO" src="images//faq_papers//vit_conf.pdf" height="1030" width="1040" src="Faq_open.html"></iframe></center> 
<%}%>
      </body>
</html>