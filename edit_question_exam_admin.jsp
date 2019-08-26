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


  String subcode=request.getParameter("subcode");
  String subname=request.getParameter("subname");     
        String programme=request.getParameter("programme");
        String dept=request.getParameter("dept");
        String exam=request.getParameter("exam");
     String sem=request.getParameter("sem");
         String doe=request.getParameter("doe");     
        String sname1=request.getParameter("sname1");
        String sname2=request.getParameter("sname2");
        String hod=request.getParameter("hod");

 String qu1_1=request.getParameter("qu1_1");
  String qu1_2=request.getParameter("qu1_2");     
        String qu1_3=request.getParameter("qu1_3");
        String qu1_4=request.getParameter("qu1_4");
        String qu1_5=request.getParameter("qu1_5");



  String qu1_6=request.getParameter("qu1_6");
  String qu1_7=request.getParameter("qu1_7");     
        String qu1_8=request.getParameter("qu1_8");
        String qu1_9=request.getParameter("qu1_9");
        String qu1_10=request.getParameter("qu1_10");
          
  String qu2_11=request.getParameter("qu2_11");
  String qu2_12=request.getParameter("qu2_12");     
        String qu2_13=request.getParameter("qu2_13");
        String qu2_14=request.getParameter("qu2_14");
        String qu2_15=request.getParameter("qu2_15");
     String qu1_8_16=request.getParameter("qu1_8_16");
         String qu1_8_17=request.getParameter("qu1_8_17");     
        String qu1_8_18=request.getParameter("qu1_8_18");
        String qu2_8_19=request.getParameter("qu2_8_19");
        String qu2_8_20=request.getParameter("qu2_8_20");
  String qu1_16_21=request.getParameter("qu1_16_21");
  String qu1_16_22=request.getParameter("qu1_16_22");     
        String qu1_16_23=request.getParameter("qu1_16_23");
        String qu2_16_24=request.getParameter("qu1_16_24");
        String qu2_16_25=request.getParameter("qu1_16_25");
    
st = conn.prepareStatement("update internal_assessment set    subname='"+subname+"',programme='"+programme+"',department='"+dept+"',exam='"+exam+"',sem='"+sem+"',doe='"+doe+"',staffname1='"+sname1+"',staffname2='"+sname2+"',hodname='"+hod+"',parta_u1_1='"+qu1_1+"',parta_u1_2='"+qu1_2+"',parta_u1_3='"+qu1_3+"',parta_u1_4='"+qu1_4+"',parta_u1_5='"+qu1_5+"', parta_u1_6='"+qu1_6+"',parta_u1_7='"+qu1_7+"',parta_u1_8='"+qu1_8+"',parta_u1_9='"+qu1_9+"',parta_u1_10='"+qu1_10+"',parta_u2_11='"+qu2_11+"', parta_u2_12='"+qu2_12+"',parta_u2_13='"+qu2_13+"', parta_u2_14='"+qu2_14+"', parta_u2_15='"+qu2_15+"', partb_u1_8_16='"+qu1_8_16+"',partb_u1_8_17='"+qu1_8_17+"',partb_u1_8_18='"+qu1_8_18+"',partb_u2_8_19='"+qu2_8_19+"',partb_u2_8_20='"+qu2_8_20+"',partb_u1_16_21='"+qu1_16_21+"',partb_u1_16_22='"+qu1_16_22+"',partb_u1_16_23='"+qu1_16_23+"',partb_u2_16_24='"+qu2_16_24+"',partb_u2_16_25='"+qu2_16_25+"' where subcode='"+subcode+"';");
pw.print("connection establised successfully");

st.executeUpdate();
                 st.clearParameters(); 


       
     response.sendRedirect("index_admin_exam.jsp");
          
   }
        
       catch (Exception e1)
       {
            e1.printStackTrace();
       
    
    }

  


%> 
 

        </table> 

</form>