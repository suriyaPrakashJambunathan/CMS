<%-- 
    Document   : ExamServer
    Created on : 6 Mar, 2015, 7:04:57 PM
    Author     : suriya
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@page contentType="text/html" language="java" import="java.sql.*"%>
<html>
<head>
<title>Online Exam Server</title>
<style type="text/css">
   body{background-color:black;font-family:courier;color:blue}
</style>
</head>
<body>
<h2 style="text-align:center">ONLINE EXAMINATION</h2>
<p>
<a href="ExamClient.html">Back To Main Page</a>
</p>
<hr/>
<%
     try{  
  PrintWriter pw=response.getWriter();
Connection conn = null;  
Statement stmt = null;  
Statement stmt1 = null; 
 ResultSet rs1 = null; 
  PreparedStatement st;
     Class.forName("com.mysql.jdbc.Driver");
             
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placemen_mysql","placemen_user1","user1");
             stmt=conn.createStatement();
  String regno=request.getParameter("regno");
String name=request.getParameter("name");
String dept=request.getParameter("dept");  
String str1=request.getParameter("ans1");
String str2=request.getParameter("ans2");
String str3=request.getParameter("ans3");
String str4=request.getParameter("ans4");
String str5=request.getParameter("ans5");
String str6=request.getParameter("ans6");
String str7=request.getParameter("ans7");
String str8=request.getParameter("ans8");
String str9=request.getParameter("ans9");
String str10=request.getParameter("ans10");
String str11=request.getParameter("ans11");
String str12=request.getParameter("ans12");
String str13=request.getParameter("ans13");
String str14=request.getParameter("ans14");
String str15=request.getParameter("ans15");
String str16=request.getParameter("ans16");
String str17=request.getParameter("ans17");
String str18=request.getParameter("ans18");
String str19=request.getParameter("ans19");
String str20=request.getParameter("ans20");
String str21=request.getParameter("ans21");
String str22=request.getParameter("ans22");
String str23=request.getParameter("ans23");
String str24=request.getParameter("ans24");
String str25=request.getParameter("ans25");
String str26=request.getParameter("ans26");
String str27=request.getParameter("ans27");
String str28=request.getParameter("ans28");
String str29=request.getParameter("ans29");
String str30=request.getParameter("ans30");
String str31=request.getParameter("ans31");
String str32=request.getParameter("ans32");
String str33=request.getParameter("ans33");
String str34=request.getParameter("ans34");
String str35=request.getParameter("ans35");
String str36=request.getParameter("ans36");
String str37=request.getParameter("ans37");
String str38=request.getParameter("ans38");
String str39=request.getParameter("ans39");
String str40=request.getParameter("ans40");
String str41=request.getParameter("ans41");
String str42=request.getParameter("ans42");
String str43=request.getParameter("ans43");
String str44=request.getParameter("ans44");
String str45=request.getParameter("ans45");
String str46=request.getParameter("ans46");
String str47=request.getParameter("ans47");
String str48=request.getParameter("ans48");
String str49=request.getParameter("ans49");
String str50=request.getParameter("ans50");
String str51=request.getParameter("ans51");
String str52=request.getParameter("ans52");
String str53=request.getParameter("ans53");
String str54=request.getParameter("ans54");
String str55=request.getParameter("ans55");
String str56=request.getParameter("ans56");
String str57=request.getParameter("ans57");
String str58=request.getParameter("ans58");
String str59=request.getParameter("ans59");
String str60=request.getParameter("ans60");
String result="null";
st = conn.prepareStatement("INSERT INTO sysbizexam(regno,name,dept,ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15,ans16,ans17,ans18,ans19,ans20,ans21,ans22,ans23,ans24,ans25,ans26,ans27,ans28,ans29,ans30,ans31,ans32,ans33,ans34,ans35,ans36,ans37,ans38,ans39,ans40,ans41,ans42,ans43,ans44,ans45,ans46,ans47,ans48,ans49,ans50,ans51,ans52,ans53,ans54,ans55,ans56,ans57,ans58,ans59,ans60,result) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
st.setString(1,regno);
st.setString(2,name);
st.setString(3,dept);
st.setString(4,str1);
st.setString(5,str2);
st.setString(6,str3);
st.setString(7,str4);
st.setString(8,str5);
st.setString(9,str6);
st.setString(10,str7);
st.setString(11,str8);
st.setString(12,str9);
st.setString(13,str10);
st.setString(14,str11);
st.setString(15,str12);
st.setString(16,str13);
st.setString(17,str14);
st.setString(18,str15);
st.setString(19,str16);
st.setString(20,str17);
st.setString(21,str18);
st.setString(22,str19);
st.setString(23,str20);
st.setString(24,str21);
st.setString(25,str22);
st.setString(26,str23);
st.setString(27,str24);
st.setString(28,str25);
st.setString(29,str26);
st.setString(30,str27);
st.setString(31,str28);
st.setString(32,str29);
st.setString(33,str30);
st.setString(34,str31);
st.setString(35,str32);
st.setString(36,str33);
st.setString(37,str34);
st.setString(38,str35);
st.setString(39,str36);
st.setString(40,str37);
st.setString(41,str38);
st.setString(42,str39);
st.setString(43,str40);
st.setString(44,str41);
st.setString(45,str42);
st.setString(46,str43);
st.setString(47,str44);
st.setString(48,str45);
st.setString(49,str46);
st.setString(50,str47);
st.setString(51,str48);
st.setString(52,str49);
st.setString(53,str50);
st.setString(54,str51);
st.setString(55,str52);
st.setString(56,str53);
st.setString(57,str54);
st.setString(58,str55);
st.setString(59,str56);
st.setString(60,str57);
st.setString(61,str58);
st.setString(62,str59);
st.setString(63,str60);
st.setString(64,result);
st.executeUpdate();
                 


response.sendRedirect("tvsharita.jsp");

  

}  
catch(Exception e){e.printStackTrace();}  
%> 
</form>
</body>
</html>