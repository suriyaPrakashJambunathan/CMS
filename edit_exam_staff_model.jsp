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
          <center><a href="" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center> <br><br>
     <center><a href="" id="logo"><img src="images/PLACED STUDENTS.gif" alt="LOGO" /></a></center>    <br><br>
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
String eid,name,desg,dept,dob,cn,emailid;%>    
<%
    try{ 
      
          
  PrintWriter pw=response.getWriter();
Connection conn = null;  
Statement stmt = null;  
Statement stmt1 = null; 
 ResultSet rs1 = null; 
  PreparedStatement st;
     Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1");
             stmt=conn.createStatement();


  String eid1=request.getParameter("eid");
  String name1=request.getParameter("name");     
        String desg1=request.getParameter("desg");
        String dept1=request.getParameter("dept");
        String dob1=request.getParameter("dob");
     String cn1=request.getParameter("cn");
         String emailid1=request.getParameter("emailid");     
        
st = conn.prepareStatement("update TABLEMASTER_EXAM set   NAME='"+name1+"',DESG='"+desg1+"',DEPT='"+dept1+"',DOB='"+dob1+"',CN='"+cn1+"',EMAILID='"+emailid1+"' where EID='"+eid1+"';");
pw.print("connection establised successfully");

st.executeUpdate();
                 st.clearParameters(); 


       
     response.sendRedirect("edit_staff_test_model.jsp");
          
   }
        
       catch (Exception e1)
       {
            e1.printStackTrace();
       
    
    }

  


%> 
 

        </table> 

</form>