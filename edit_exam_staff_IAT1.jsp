<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
 
<form>
 
    <table width='100%'><tr><td align='left'><a href='index_admin_exam.jsp'><h3>Goback</h3></a></td>
           <td align='right'><a href='index_main.jsp'><h3>Logout</h3></a></tr></table>
         
<style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>
    
<style type="text/css">
.myTable { background-color:#FFFFE0;border-collapse:collapse;align:center; }
.myTable th { background-color:#BDB76B;color:white; }
.myTable td, .myTable th { padding:5px;border:1px solid #BDB76B; }
</style>

   <table class="myTable" >  
 
<%int u;
long RN1;

   String a=(String) session.getAttribute("sc1");
   
    try{ 
      
          
  PrintWriter pw=response.getWriter();
Connection conn = null;  
Statement stmt = null;  
Statement stmt1 = null; 
 ResultSet rs1 = null; 
  PreparedStatement st;
     Class.forName("org.gjt.mm.mysql.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost/amps_website?user=root&password=");
             stmt=conn.createStatement();

  // String ATT1=request.getParameter("sc");
String str[]=request.getParameterValues("rrr");
String str123=Arrays.toString(str);
int foo = Integer.parseInt(a);%>
<%=foo%>
<%=str123%>
       <%
st = conn.prepareStatement("update tablemaster_gv set AT='"+str123+"' where gvno='"+foo+"'");
pw.print("connection establised successfully");

st.executeUpdate();
                 st.clearParameters(); 


       
   response.sendRedirect("index.jsp");
          
   }
        
       catch (Exception e1)
       {
            e1.printStackTrace();
       
    
    }

  


%> 
 

        </table> 

</form>