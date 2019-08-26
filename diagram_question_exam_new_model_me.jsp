<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>

<form>
 
    <table width='100%'>
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
<%
String subcode1=(String) session.getAttribute("subcode");
if(subcode1==null) subcode1="";
%> 
   <table class="myTable" >  
 
<%int u;
long RN1;
String NAME,DOB,SSLC,DATE1,HSC,DIP1,SEM1,SEM2,SEM3,SEM4,SEM5,SEM6,SEM7,SEM8,HISTORY_OF_ARREARS,OVERALL_AGG,NO_OF_ARREARS,CONTACT_NO,EMAIL_ID,RN11,BATCH12,DEPT12,SEM1234; %>    
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


String subname=request.getParameter("subname");
  
  String programme=request.getParameter("prog");     
       
        String dept=request.getParameter("branch"); 
        String sem=request.getParameter("sem");
              String doe=request.getParameter("doe");     
        String subcord=request.getParameter("sname1");
     
        String hod=request.getParameter("hod");

st = conn.prepareStatement("update info_questionMODEL_me set    subname='"+subname+"',programe='"+programme+"',dept='"+dept+"',sem='"+sem+"',doe='"+doe+"',subcoordi='"+subcord+"',hod='"+hod+"' where subcode='"+subcode1+"';");
pw.print("connection establised successfully"+"  "+subname);

st.executeUpdate();
                 st.clearParameters(); 


       
     response.sendRedirect("index_staff_test_loginIAT2.jsp");
          
   }
        
       catch (Exception e1)
       {
            e1.printStackTrace();
       
    
    }

  


%> 
 <%session.setAttribute("id",subcode1);%> 

        </table> 

</form>