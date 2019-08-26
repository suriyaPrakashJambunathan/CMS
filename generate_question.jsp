<html>
<head>
<script>
    function printData()
{
if(document.all){
document.all.divButtons.style.visibility = 'hidden';
}else{
document.getElementById('divButtons').style.visibility = 'hidden';
}
   var divToPrint=document.getElementById("printTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();



}

$('button').on('click',function(){
printData();
})

    </script>

<style>
@media print {
    #one {
        display :  none;
    }
}
td#aleft {
text-align: left;
}

td#aright {
text-align: right;
}
html, body {
    border: 0px;
    margin: 0px auto;
    padding: 0px;
}

table {
    margin: 0px auto;
}
</style></head>
<body>
<table id="printTable" border="0"> 
<tr><th><img src="images//internal_examcell//logo.png" alt="PITAM" align="left"><b>PRATHYUSHA</b><br>INSTITUTE OF TECHNOLOGY AND MANAGEMENT</th></tr>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
    try{  
  String RN1 = request.getParameter("id");
Statement stmt = null;  
ResultSet rs = null;  
  
Class.forName("com.mysql.jdbc.Driver");
             Connection con;
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prathyus_mysql","prathyus_user1","user1"); 
             stmt=con.createStatement();
rs=stmt.executeQuery("select * from internal_assessment where subcode ='"+RN1+"'");  
while(rs.next()){  
         
%> 
<tr><td><h4>PROG & BRANCH :<%= rs.getString(3) %> / <%= rs.getString(4)%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs.getString(5) %></h4></td></tr>
<tr><td><h4>SEMESTER :<%= rs.getString(6) %> SEM &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DATE : <%= rs.getString(7) %> </h4></td></tr>
<tr><td><h4>MAX MARKS : 50  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TIME : 50 Mins</h4></td></tr>
<tr><td><h4>SUB CODE / NAME : <%= rs.getString(1) %> / <%= rs.getString(2) %> </h4></td></tr>
<tr><td align="middle"><h4>PART A</h4></td></tr>
<tr><td align="right"><h4>5x 2 = 10 Marks</h4></p></td></tr>
  <tr> <td align='left'>1. <%= rs.getString(12) %></td></tr>
   <tr> <td align='left'>2. <%= rs.getString(13) %></td></tr>
<tr> <td align='left'>3. <%= rs.getString(18) %></td></tr>
<tr> <td align='left'>4. <%= rs.getString(21) %></td></tr>
<tr> <td align='left'>5. <%= rs.getString(24) %></td></tr>
</br></br>
<tr><td align='middle'><h4>PART B</h4></td></tr>
  <tr> <td align='right'><h4>2 x 16 = 32, 1x 8 = 8 Marks</h4></td></tr>
</br></br>
  <tr> <td align='left'>6.(a) <%= rs.getString(31) %>   (16)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(33) %>  (16)</td></tr>
</br></br>
</br></br>
  <tr> <td align='left'>7.(a) <%= rs.getString(34) %>   (16)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(35) %>  (16)</td></tr>
</br></br>
</br></br>
  <tr> <td align='left'>8.(a) <%= rs.getString(17) %>   (8)</td></tr>
<tr><td align='middle'>[or]</td></tr>
   <tr> <td align='left'>  (b) <%= rs.getString(20) %>  (8)</td></tr>
</br></br>
<tr> <td align='left'><h4>Name of the Staff &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs.getString(8) %><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs.getString(9) %></h4></td></tr>
<tr> <td align='left'><h4>Name of HOD &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%= rs.getString(10) %></h4></td></tr>
 <tr><td align='middle'><div id="divButtons" name="divButtons">
<button type="button" style="width:100px;height:40px"  onclick="printData();return false";>PRINT</button></td></tr></div>
<%  
}  
  
rs.close();  
stmt.close();  
con.close();  
}  
catch(Exception e){e.printStackTrace();}  
%> 
 

</table>
</form>
</body>
</html>