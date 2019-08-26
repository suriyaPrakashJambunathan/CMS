<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
 <left> <a href='index_exam.jsp'>GoBack</a></left>
<%    String query = null;String query1 = null;
String CurrRegno=request.getParameter("EID");
String Newpass=request.getParameter("new");
String conpass=request.getParameter("confirm");
String question=request.getParameter("question");
String answer=request.getParameter("answer"); 
    if(conpass.equals(Newpass))
{  
try
{
   
    ResultSet rs = null; 

     Class.forName("com.mysql.jdbc.Driver");
             
           Connection   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1");
           Statement  stmt=conn.createStatement(); 
 
    
   
 
      
  rs=stmt.executeQuery("select QUESTION,ANSWER FROM TABLEMASTER_EXAM WHERE EID='"+CurrRegno+"'");
  
    while(rs.next())
       {
            String Que=rs.getString(1);
            String Ans=rs.getString(2);
       
          
                       if(question.equalsIgnoreCase(Que) && answer.equalsIgnoreCase(Ans))
          {
              
            
              String update="update TABLEMASTER_EXAM set PW=? WHERE EID=?";
              PreparedStatement ps=conn.prepareStatement(update);
              ps.setString(1, conpass);
              ps.setString(2, CurrRegno);
              ps.executeUpdate();
%> 
 
 <center> <h1>PassWord Changed Successfully</h1></center> 
<%
             break;
        }
else
{
     out.println("Enter the Secret Question and Answer Correctly");
} }   
       }             

catch(Exception e){
out.println(e);
}}
else
{
     out.println("Enter the Password and Retype Password Correctly");
} 

%>


