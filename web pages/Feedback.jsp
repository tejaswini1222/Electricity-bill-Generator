<%-- 
    Document   : Feedback
    Created on : Oct 12, 2023, 11:53:47 AM
    Author     : PCS
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="" />
<meta name="description" content="" />
<!--+

http://www.tooplate.com/view/2038-carpet
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">
    </script>
            </head>
    <body>
        <%
           String mob=null;
           String nm=null;
           String fed=null;
        %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		
                <div id="tooplate_middle">
			
			<div id="mid_left">
				
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
                    <h1 align="center"><b>Feedback</b></h1><br>
                <form>
                    <table border="1"align="center"width="600">
                        <tbody>
                            <tr align="center">
                                <td width="600">Name</td>
                                <td width="600"><input type="text" name="name" value="" /></td>
                            </tr>
                            <tr align="center">
                                <td width="600">Mobile no</td>
                                <td width="600"><input type="text" name="Mobile_no" value="" /></td>
                            </tr>
                            <tr align="center">
                                <td width="600">Feedback</td>
                                <td width="600"><textarea name="feedback" rows="4" cols="20">
                                    </textarea></td>
                            </tr>
                            <%
                                    nm=request.getParameter("name");
                                     mob=request.getParameter("Mobile_no");
                                     fed=request.getParameter("feedback");
                                   Statement st1=con.createStatement();
                                    if(nm!=null && nm!="" && mob!=null && mob!="" && fed!=null && fed!="")
                                    {
                                        String str1="insert into feedback(name,mobile_no,feedback)values('"+nm+"',"+mob+",'"+fed+"')";
                                    int i=st1.executeUpdate(str1);
                                    out.println("<script>alert('******Feedback Stored*****')</script>");
                                    
                                    }    
                            %>
                            <tr align="center">
                                <td  colspan="2" width="600" align="center"><input type="submit" value="Submit" name="Submit" /></td>
                               
                            </tr>
                        </tbody>
                    </table>

                </form>
               
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
             </div>
        </div>
        
    </body>
</html>
