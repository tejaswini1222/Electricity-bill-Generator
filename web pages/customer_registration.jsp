<%-- 
    Document   : customer_registration
    Created on : Oct 5, 2023, 9:19:25 PM
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
            <script type="text/javascript">
function validate()
{ 
if( document.mobilenumbervalidation.Mobile_no.value == "" ||
isNaN( document.mobilenumbervalidation.Mobile_no.value) ||
document.mobilenumbervalidation.Mobile_no.value.length != 10 )
{
alert( "Please provide a 10 digit no" );
document.mobilenumbervalidation.Mobile_no.focus() ;

return false;
}

var email = document.mobilenumbervalidation.E_mail.value;
atpos = email.indexOf("@");
dotpos = email.lastIndexOf(".");
if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID");
document.mobilenumbervalidation.E_mail.focus() ;
return false;
}

return( true );
}
</script> 
    <body>
        <%
            int no=0;
            String nm=null;
            String add=null;
            String city=null;
            String email=null;
            String mob=null;
            String usernm=null;
            String password=null; 
            
            %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Electricity</a></h1></div>
			<div id="tooplate_menu">
				<ul>
                                    <li><a href="customer_home_page.jsp" class="current">Home</a></li>
                                        <li><a href="about us.jsp">About Us</a></li>
                                        <li><a href="Feedback.jsp">Feedback</a></li>
                                        <li><a href="contact us.jsp">Contact</a></li>
				</ul>    	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
                <div id="tooplate_middle">
			<div id="mid_slider">
				<div id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/registration1.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/registration2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/registration3.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/registration4.jpg" alt="Image 04" />
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
                                    <h1><b>Registration</b></h1>
				</div>
				<p>
                                    Once registered, you can view and pay your bills, raise and track service requests. Now empower yourself by simply registering as per the direction provided on the website and start availing the services provided by us.</p>
                        </div>  
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
                   
                    <h1 align="center">Customer Registration</h1>
                   <form method="get" action="" name="mobilenumbervalidation" onsubmit="return(validate());"> 
                         <%
                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*)from registration";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                    a=rs.getInt(1);
                                    a++;
                                }
                                %>
                    <table border="1"align="center">
                         <thead>
                                    <tr align="center">
                                        <th colspan="2"> Registration Form</th>
                                        
                                    </tr>
                                </thead>
                               
                                <tr align="center"> 
                                    <td align="center">Customer id</td>
                                    <td width="600px"><input type="text" name="Custome_id" value="<%=a%>" readonly="true" /></td>
                                </tr>
                            <tr align="center"> 
                                    <td align="center">Name</td>
                                    <td width="600px"><input type="text" name="Name" value="" placeholder="Enter Name" /></td>
                                </tr>
                            <tbody>
                                <tr align="center">
                                    <td width="600px">Address</td>
                                    <td width="600px"><input type="text" name="Address" value="" placeholder="Enter Your Address" /></td>
                                </tr>
                                <tr align="center">
                                    <td width="600px">City</td>
                                    <td width="600px"><input type="text" name="city" value="" placeholder="Enter City Name" /></td>
                                </tr>
                                <tr align="center">
                                    <td align="center">E_mail</td>
                                    <td width="600px"><input type="text" name="E_mail" value="" placeholder="Enter E_mail Id" /></td>
                                </tr>
                                <tr align="center">
                                    <td align="center">Mobile no.</td>
                                    <td width="600px"><input type="text" name="Mobile_no" value="" placeholder="Mobile Number" /></td>
                                </tr>
                                <tr align="center">
                                    <td align="center">Username</td>
                                    <td width="600px"><input type="text" name="Username" value="" /></td>
                                </tr>
                                <tr align="center">
                                    <td align="center">Password</td>
                                    <td width="600px"><input type="password" name="txtpass" value="" /></td>
                                </tr>
                                <tr align="center">
                                    <td><input type="submit" value="Submit" /></td>
                                    <td><a href="Meter_info.jsp">Next</a></td>
                                       
                            
                                    </tr>
                                 <%
                                     nm=request.getParameter("Name");
                                     add=request.getParameter("Address");
                                     city=request.getParameter("city");
                                     email=request.getParameter("E_mail");
                                     mob=request.getParameter("Mobile_no");
                                     usernm=request.getParameter("Username");
                                     password=request.getParameter("txtpass");
                                    Statement st1=con.createStatement();
                                    if(nm!=null && nm!="" && add!=null && add!="" && city!=null && city!="" && email!=null && email!="" && mob!=null && mob!="" && usernm!=null && usernm!="" && password!=null && password!="")
                                    {
                                        String str1="insert into registration(customer_id,name,address,city,email,mobile_no,username,password)values("+a+",'"+nm+"','"+add+"','"+city+"','"+email+"',"+mob+",'"+usernm+"','"+password+"')";
                                    int i=st1.executeUpdate(str1);
                                    out.println("<script>alert('******Registration Successfully******')</script>");
                                    
                                    }    
                                   
                                 %>   
                            </tbody>
                        </table>
                    </h1><br>
             
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

