<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
 <left> <a href='index_staff_test_login_model_main.jsp'>GoBack</a></left>
<%    String query = null;String query1 = null;

String Newpass=(String)request.getParameter("new");
String conpass=(String)request.getParameter("confirm");
 
 if(conpass.equals(Newpass))
{   
try{
   
     Class.forName("com.mysql.jdbc.Driver");
             
           Connection   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1");
           Statement  stmt=conn.createStatement(); 
 
    ResultSet rs = null;
   
 
      
  rs=stmt.executeQuery("select username FROM tablemasterstaff_test WHERE username='examcell'");
  
    while(rs.next())
       {
            String uname=rs.getString(1);
            
                       if(uname.equalsIgnoreCase("examcell"))
          {
              
            
              String update="update tablemasterstaff_test set password=? WHERE username='examcell'";
              PreparedStatement ps=conn.prepareStatement(update);
              ps.setString(1, conpass);
              ps.executeUpdate();
%> 
 
 <center> <h1>PassWord Changed Successfully</h1></center> 
<%
             break;
        }
else
{
     out.println("Enter the Secret Question and Answer Correctly");
}    
       }             
}
catch(Exception e){
out.println(e);
}
}
else
{
    out.println("The Password and Retyped Password are Incorrect");
}
%>


