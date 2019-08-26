<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
 <left> <a href='index1234.jsp'>GoBack</a></left>
<%    String query = null;String query1 = null;

String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
;  
 if(conpass.equals(Newpass))
{   
try{
    //String connectionURL = "jdbc:oracle:oci8:@localhost:1521:XE";
    ResultSet rs = null; 
   // ResultSet rs1 = null; 
     Class.forName("com.mysql.jdbc.Driver");
             
           Connection   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
           Statement  stmt=conn.createStatement(); 
 
    
   
 
      
  rs=stmt.executeQuery("select username FROM tablemasterstaff WHERE username='principal'");
  
    while(rs.next())
       {
            String uname=rs.getString(1);
            //String Ans=rs.getString(2);
       
           //out.println(Que+"     "+Ans);
                       if(uname.equalsIgnoreCase("principal"))
          {
              
             //rs=stmt.executeQuery("update TABLEMASTER set PASSWORD='"+conpass+"' WHERE REGISTERNO='"+RN1+"'");
             //out.println(RN1);
              String update="update tablemasterstaff set PASSWORD=? WHERE username='principal'";
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


