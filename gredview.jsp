
<%@page import="java.sql.*"%>
<%
String RN[] =request.getParameterValues("regno");
if(RN !=null) {
for(int i=0;i<RN.length;i++) {
out.println(RN[i]);
}
}
String name[] =request.getParameterValues("name");
if(name !=null) {
for(int i=0;i<name.length;i++) {
out.println(name[i]);
}
}
String DOB[] =request.getParameterValues("dob");
if(DOB !=null) {
for(int i=0;i<DOB.length;i++) {
out.println(DOB[i]);
}
}
%>
<%
try{
    
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql?zeroDateTimeBehavior=convertToNull","placemen_user1","user1");
           
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();
for(int a=0;a<10;a++){
String RN1=RN[a];
String name1=name[a];
String DOB1=DOB[a];
//rs= st.executeQuery("select * from REGISTERDATA where REGESTER_NO ='"+RN1+"'");
st.executeUpdate("update REGISTERDATA set REGESTER_NO='"+RN1+"',NAME='"+name1+"',DOB='"+DOB1+"' where REGESTER_NO='"+RN1+"'");
//DOB='"DOB1"',SSLC,HSC,SEM1,SEM1,SEM1,SEM1,SEM1,SEM1,SEM1,SEM1,OVERALL_AGG,NO_OF_ARREARS= where bookid='"+book_id+"'");

}
}
catch(Exception e){
e.printStackTrace();
}
%>
