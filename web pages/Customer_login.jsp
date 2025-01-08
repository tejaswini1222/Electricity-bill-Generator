<%-- 
    Document   : Customer_login
    Created on : Oct 5, 2023, 10:30:25 PM
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
Template 2038 Carpet
http://www.tooplate.com/view/2038-carpet
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">
    </script>
            </head>
    <body>
        <%
            String usernm=request.getParameter("txtusername");
            String password=request.getParameter("txtpass");
        %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Electricity</a></h1></div>
			<div id="tooplate_menu">
				<ul>
                                    <li><a href="customer_home_page.jsp" class="current">Home</a></li>                                  
                                    <li><a href="log out.jsp">LogOut</a></li>
                                
					
				</ul>      	
                        </div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
                <div id="tooplate_middle">
			<div id="mid_slider">
				<div id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/customer 1.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/customer 2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/customer 3.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/customer 4.jpg" alt="Image 04" />
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
                                    <h1><b>Login</h1></b>
				</div>
				<p>
                                The Customer Portal allows Customers to log and manage requests, search the Knowledge Base, view outages and view Services provided by the support organization. Other functionality that can be enabled for the Customer Portal includes Forums, Surveys and Chat.
                                </p>
 
			</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
		<h1 align="center">Customer Login</h1><br>
                <form>
                            <table border="1"width="600px" align="center">
                                <thead>
                                    <tr align="center">
                                        <th colspan="2"> Login Form</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td width="600px">Username</td>
                                        <td width="600px"><input type="text" name="txtusername" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td width="600px">Password</td>
                                        <td width="600px"><input type="password" name="txtpass" value="" /></td>
                                    </tr>
                                    <tr align="center">
                                        <td><input type="submit" value="Login" name="Login" /></td>
                                        <td><a href="customer_registration.jsp">Register Here</a></td>
                            
                                    </tr>
                                    <%
                                    Statement st=con.createStatement();
                                    if(usernm!=null && usernm!="" && password!=null && password!="")
                                    {
                                        String str="select * from registration where username='"+usernm+"' and password='"+password+"'";
                                        ResultSet rs=st.executeQuery(str);
                                        if(rs.next())
                                        {
                                            out.println("<script>alert('*******login successfully*****')</script>");
                                            session.setAttribute("nm",usernm);
                                            response.sendRedirect("customer_home_page.jsp");
                                            
                                        }
                                        else
                                        {
                                                out.println("<script>alert('login failed-----')</script>");
                                                 response.sendRedirect("customer_registration.jsp");
                                        }
                                       
                                        
                                    }
                                    
                                    %>
                  
                                </tbody>
                            </table>
                  
                    
                </form>

                            	
			
					
					
					
	
			
			
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		<div id="tooplate_footer">
		
                    <a><marquee>Designed by-Asmita Gaikwad and Deepali Shinde</marquee></a> 
			
		</div>
 
             </div>
        </div>
        
    </body>
</html>
