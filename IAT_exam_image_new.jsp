<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<HEAD>
<TITLE>Display file upload form to the user</TITLE>
</HEAD>

        <center>
                <label for="email">Enter email address</label>
                <input id="email" name="email">

        </center>

<% String mail = request.getParameter("email");
                        %><%=mail%>
<BODY>
    <FORM ENCTYPE="multipart/form-data" ACTION="imageretrive_final_test.jsp?subcode=${mail}" METHOD=POST>
        <br> <br> <br>

        <center>
            <table border="0" bgcolor=#ccFDDEE>
                <tr>
                    <center>
                        <td colspan="2" align="center"><B>UPLOAD THE FILE</B>
                            <center></td> 
                </tr>
                <tr>
                    <td colspan="2" align="center"></td>
                </tr>
                <tr>
                    <td><b>Choose the WebEx File To Upload and Convert:</b></td>
                    <td><INPUT NAME="file" TYPE="file"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit"
                        value="Upload and Convert Recording"></td>
                </tr>
                <table>
                    </center>
                    </FORM>
</BODY>
</HTML>