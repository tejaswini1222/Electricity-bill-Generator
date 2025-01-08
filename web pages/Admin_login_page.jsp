<%-- 
    Document   : Admin_login_page
    Created on : Oct 5, 2023, 9:16:49 PM
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
            
        %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Electricity</a></h1></div>
			<div id="tooplate_menu">
				<ul>
                                   
                                    
                                    <li><a href="log out.jsp">LogOut</a></li>
					
				</ul>     	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
                <div  id="tooplate_middle">
			<div  id="mid_slider">
				<div   id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/admin 4.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/admin 1.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/admin.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/admin 3.jpg" alt="Image 04" />
					</div>
				
				</div>
                            
                        
				
				<div id="paginate-slider1" class="pagination">
				
				</div>
				
				<script type="text/javascript">
				
				featuredcontentslider.init({
					id: "slider1",  //id of main slider DIV
					contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
					toc: "#increment",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
					nextprev: ["", ""],  //labels for "prev" and "next" links. Set to "" to hide.
					revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
					enablefade: [true, 0.2],  //[true/false, fadedegree]
					autorotate: [true, 3000],  //[true/false, pausetime]
					onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
						//previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
						//curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
					}
				})
				
				</script>
			</div>
                    <div id="mid_left">
                       
				<div id="mid_title">
                                    <h1><b>Login</b></h1>
				</div>
                    <p>If you have access to an administrator (or admin) account, you can sign in to the  Admin console. The Admin console is where admins manage Electrical billing services for people in an organization. </p>
                    </div>
		<div id="tooplate_main">
		<h1 align="center">Admin Login</h1><br>
                <form>
                            <table border="1"width="600px" align="center">
                                <thead>
                                    <tr align="center">
                                        <th colspan="2"> Login Form</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td width="600px" align="center">Username</td>
                                        <td width="600px" align="center"><input type="text" name="txtusername" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td width="600px" align="center">Password</td>
                                        <td width="600px" align="center"><input type="password" name="txtpass" value="" /></td>
                                    </tr>
                                    <tr align="center">
                                        <td colspan="2"><input type="submit" value="Login" name="Login" /></td>
                            
                                    </tr>
                                   <%
                                   String aunm=request.getParameter("txtusername");
                                   String apass=request.getParameter("txtpass");
                                    Statement st=con.createStatement();
                                    if(aunm!=null && aunm!="" && apass!=null && apass!="")
                                    {
                                        String str="select * from admin_login where admin_name='"+aunm+"' and password='"+apass+"'";
                                        ResultSet rs=st.executeQuery(str);
                                        if(rs.next())
                                        {
                                            out.println("<script>alert('*******login successfully*****')</script>");
                                             response.sendRedirect("admin home page.jsp");
                                        }
                                        else
                                        {
                                                out.println("<script>alert('login failed-----')</script>");
                                        } 
                                    }
                                   
                                    %>
                                </tbody>
                            </table>
                </form>
               
                            	
			
					
					
					
	
			
			
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		<div id="tooplate_footer">
		
                    <a href="#"><marquee>Designed by-Asmita Gaikwad and Deepali Shinde</marquee></a> 
			
		</div>
 
             </div>
        </div>
        
    </body>
</html>
