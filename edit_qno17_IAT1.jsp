<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<html>

<head>
  <%
String subcode=(String) session.getAttribute("subcode");
if(subcode==null) subcode="";
%>

  <meta charset="UTF-8">

  <title>DEPARTMENT OF PLACEMENT AND EXTERNAL AFFAIRS</title>
<script>
function validateForm() {
    var x = document.forms["pitam"]["qu2_11"].value;
    var y = document.forms["pitam"]["qu2_12"].value;
var z = document.forms["pitam"]["qu2_13"].value;
var a = document.forms["pitam"]["qu2_14"].value;
var b = document.forms["pitam"]["qu2_15"].value;
var c = document.forms["pitam"]["qu1_8_16"].value;
var d = document.forms["pitam"]["qu1_8_17"].value;
var e = document.forms["pitam"]["qu1_8_18"].value;
var f = document.forms["pitam"]["qu2_8_19"].value;
var g = document.forms["pitam"]["qu2_8_20"].value;
var h = document.forms["pitam"]["qu1_16_21"].value;
var i = document.forms["pitam"]["qu1_16_22"].value;
var j = document.forms["pitam"]["qu1_16_23"].value;
var k = document.forms["pitam"]["qu1_16_24"].value;
var l = document.forms["pitam"]["qu1_16_25"].value;
var m = document.forms["pitam"]["qu1_16_26"].value;
var n = document.forms["pitam"]["qu2_16_27"].value;
var o = document.forms["pitam"]["qu2_16_28"].value;
var p = document.forms["pitam"]["qu2_16_29"].value;
var q = document.forms["pitam"]["qu2_16_30"].value;

    if (x == null || x == "") {
        alert("Part A Question must be filled out");
        return false;
    }
  
    else if (y == null || y == "") {
        alert("Part A Question must be filled out");
        return false;
    }
    else if (z == null || z == "") {
        alert("Part A Question must be filled out");
        return false;
    }
else if (a == null || a == "") {
        alert("Part A Question must be filled out");
        return false;
    }
else if (b == null || b == "") {
        alert("Part A Question must be filled out");
        return false;
    }
else if (c == null || c == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (d == null || d == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (e == null || e == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (f == null || f == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (g == null || g == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (h == null || h == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (i == null || i == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (j == null || j == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (k == null || k == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (l == null || l == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (m == null || m == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (n == null || n == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (o == null || o == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (p == null || p == "") {
        alert("Part B Question must be filled out");
        return false;
    }
else if (q == null || q == "") {
        alert("Part B Question must be filled out");
        return false;
    }
}
 function ChangeCase(elem)
    {
        elem.value = elem.value.toUpperCase();
    }

</script>
    
    <style>
        
body:before {
    background: url("I:\Muthu\Pictures\Sample Pictures\sample_photo_00.jpg") repeat scroll 0 0 / cover rgba(0, 0, 0, 0);
    content: "";
    height: 250px;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    width: 100%;
    z-index: -1;
}
body:before {
    background: none repeat scroll 0 0 #FFFFFF;
    content: "";
    height: 1215px;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    width: 100%;
    z-index: -1;
}
body {
    background-color: #EDEDED;
    background-repeat: repeat;
    background-size: auto auto;
    color: #525355;
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    font-weight: 400;
    line-height: 26px;
    margin: 0;
    padding: 0;
    position: relative;
}
body {
    background-color: #8B0000;
    color: #525355;
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    font-weight: 400;
    line-height: 26px;
    margin: 0;
    padding: 0;
    position: relative;
}
* {
    -moz-box-sizing: border-box;
}

.global-header:before, .global-header:after {
    content: "";
    display: table;
}
.global-header:before, .global-header:after {
    content: "";
    display: table;
}
.global-header:after {
    clear: both;
}
.global-header:before, .global-header:after {
    content: "";
    display: table;
}
.global-header:after {
    clear: both;
}
.global-header:before, .global-header:after {
    content: "";
    display: table;
}
.global-header {
    background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    margin: 0 auto;
    padding: 50px 0;
    width: 478px;
}
.global-header {
    background: none repeat scroll 0 0 #FFFFFF;
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 16px;
    margin: 0;
    padding: 50px 0;
    width: 100%;
}
article, aside, details, figcaption, figure, footer, header, hgroup, nav, section {
    display: block;
}
.global-header nav {
    margin: 0 auto;
    max-width: 960px;
    position: relative;
    z-index: 1000;
}

.global-header .logo {
    margin: 0 auto;
    text-align: center;
    width: 100%;
}
.global-header .logo {
    float: left;
    margin: 2px 0 0 11px;
}
a {
    color: #8B0000;
    text-decoration: none;
    transition: color 0.2s ease 0s;
}
img {
    border: 0 none;
    height: auto;
    vertical-align: middle;
}

.login, .signup {
    -moz-box-sizing: border-box;
    background: none repeat scroll 0 0 #FFFFFF;
    border-radius: 0 0 0 0;
    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.05), 0 0 0 0 rgba(0, 0, 0, 0.1);
    margin: 0 auto;
    padding: 80px 50px;
    width: 578px;
    height: 2825px;
}
form {
    margin-bottom: 0;
}
form {
    margin: 0 0 26px;
}

.login h1, .signup h1 {
    color: #546673;
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 600;
    margin-bottom: 30px;
    text-align: center;
}
h1 {
    color: #000000;
    font-family: "Gotham Rounded A","Gotham Rounded B","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 24px;
    font-style: normal;
    font-weight: 500;
    line-height: 1.1em;
    margin-bottom: 15px;
}
h1, h2, h3, h4, h5, h6 {
    color: inherit;
    font-family: "Gotham Rounded A","Gotham Rounded B","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: bold;
    margin: 0;
    text-rendering: optimizelegibility;
}

input[type="text"], input[type="password"] {
    transition: background 0.5s ease 0s, border-color 0.5s ease 0s;
}
select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
    color: #525355;
    display: inline-block;
    font-size: 16px;
    height: 44.2px;
    line-height: 26px;
    margin-bottom: 10px;
    padding: 4px 6px;
}
input {
    border: 2px solid #E4E7EE;
    border-radius: 2px 2px 2px 2px;
    box-shadow: none;
}
input {
    -moz-box-sizing: border-box;
    width: 60%;
}
input, textarea, select, .uneditable-input {
    border: 1px solid #A3ACB8;
    border-radius: 3px 3px 3px 3px;
    box-shadow: 0 2px 0 rgba(0, 0, 0, 0.08) inset;
}
input {
    width: 100%;
}
input, button, select, textarea {
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
}
label, input, button, select, textarea {
    font-size: 16px;
    font-weight: normal;
    line-height: 26px;
}
button, input {
    line-height: normal;
}
button, input, select, textarea {
    font-size: 100%;
    margin: 0;
    vertical-align: middle;
}

.login .password-container, .signup .password-container {
    position: relative;
}
.login .password-container span, .signup .password-container span {
    color: #7F919E;
    position: absolute;
    right: 10px;
    top: 9px;
}

button.submit {
    background: none repeat scroll 0 0 #8B0000;
    border: medium none;
    border-radius: 5px 5px 5px 5px;
    box-shadow: none;
    color: #FFFFFF;
    float: right;
    margin-right: 25%;
    padding: 8px 12px;
    width: 47.5%;
}
button.button, input.button[type="submit"] {
}
.button {
    background-color: #E6EDF3;
    background-image: -moz-linear-gradient(center top , #EDF3F9, #DCE4EB);
    background-repeat: repeat-x;
    border: 1px solid #C4CFDA;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    color: #525355;
    cursor: pointer;
    display: inline-block;
    margin-bottom: 0;
    text-align: center;
    text-decoration: none;
    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.05);
    transition: all 0.2s ease 0s;
    vertical-align: middle;
}
input, button, select, textarea {
    font-family: "ProximaNova","Helvetica Neue",Helvetica,Arial,sans-serif;
}
label, input, button, select, textarea {
    font-size: 16px;
    font-weight: normal;
    line-height: 26px;
}
button, input[type="button"], input[type="reset"], input[type="submit"] {
    cursor: pointer;
}
button, input {
    line-height: normal;
}
button, input, select, textarea {
    font-size: 100%;
    margin: 0;
    vertical-align: middle;
}

.create-account a {
    background: none repeat scroll 0 0 #E3E6EC;
    border-radius: 5px 5px 5px 5px;
    color: #80919F;
    display: inline-block;
    padding: 8px 12px;
    text-align: center;
    transition: all 0.2s ease 0s;
    width: 40.5%;
}
a {
    color: #8B0000;
    text-decoration: none;
    transition: color 0.2s ease 0s;
}

    </style>

     <%
String subcode3=(String) session.getAttribute("subcode");
if(subcode3==null) subcode3="";
int id=0;%>    
</head>

<body>
  <body class="profile-login">
<header class="global-header">  
<div>
<nav class="global-nav">
<a class="logo" data-analytics="site logo" href="/">
    <center><a href="index123.html" id="logo"><img src="images/logo1.jpg" alt="LOGO" /></a></center> <br><br>
</a>
</nav>
</div>
</header>
  <section class="login">
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

st = conn.prepareStatement("INSERT INTO IAT1_QUESTIONS (sno,subcode) VALUES (17,?)");

st.setString(1,subcode);

st.executeUpdate();
                 st.clearParameters(); 

}  
catch(Exception e){e.printStackTrace();}  
%>    
<form id="login-form" name="pitam" accept-charset="utf-8" enctype="multipart/form-data" method="post"  action="imageretrive_edit17_IAT1.jsp">
<h1>UPLOAD THE PART-B 8 MARK QUESTION UNIT 1</h1>

 <input type="file" name="uProperty" /> <br><br>

<button class="button submit" data-analytics="sign-in" type="submit">Submit</button>
   </form> 
  </section>
<%session.setAttribute("subcode4",subcode);%>
</body>
</html>