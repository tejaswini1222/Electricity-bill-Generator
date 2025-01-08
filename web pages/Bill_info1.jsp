<%-- 
    Document   : Bill_info1
    Created on : Dec 26, 2023, 6:27:07 PM
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
        String no1=null;
       
        no1=request.getParameter("no");
        %>
        <%
               /* 
                   String mt3=(String)session.getAttribute("mt4");
                 String cnm3=(String)session.getAttribute("cnm4");
                 String no3=(String)session.getAttribute("no4");
                 String em3=(String)session.getAttribute("em4");
                 String mn3=(String)session.getAttribute("mn4");
                 String add3=(String)session.getAttribute("add4");
                 String mob3=(String)session.getAttribute("mob4"); */
        %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Electricity</a></h1></div>
			<div id="tooplate_menu">
				<ul>
                                    <li><a href="admin home page.jsp" class="current">Home</a></li>
                                    
                                    <li><a href="log out.jsp">LogOut</a></li>
					
				</ul>     	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
                <div  id="tooplate_middle">
			<div  id="mid_slider">
				<div   id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/check11.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/check 2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/check.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/check 4.jpg" alt="Image 04" />
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
                                    <h1><b>Bill information1</b></h1>
				</div>
                        <p>To maintain a continuous supply of electricity the government has set forth certain regulations among which paying electricity bills on time is a vital rule. Consumers can either visit the electricity board office to pay the bills or simply log into the official portal using their login credentials to pay their bills.</p>
                    </div>
		<div id="tooplate_main">
		<h1 align="center">Bill Information1</h1><br>
                <form>
                            <table border="1"width="600px" align="center">
                                  <%
                                     String mt=null;
                                    String cnm=null;
                                    String em=null;
                                    String mn=null;
                                    String add=null;
                                    String mob=null;
                                    no1 =request.getParameter("no");
                                   
                                    Statement st2=con.createStatement();
                                    String str2="select * from meter_info where no='"+no1+"'";
                                    ResultSet rs2=st2.executeQuery(str2);
                                   while(rs2.next())
                                   {
                                       mt=rs2.getString(7);
                                       cnm=rs2.getString(3);
                                       em=rs2.getString(5);
                                       mn=rs2.getString(2);
                                       add=rs2.getString(4);
                                       mob=rs2.getString(6);
                                       
                                   }
                                    
                                       
                                         %> 
                                 
                                    <tbody>
                                         <tr align="center">
                                            <td width="600px">Meter type</td>
                                            <td width="600px" align="center"><%=mt%></td>
                                             
                                        </tr>
                                     
                                         <tr>
                                        <td width="600px" align="center">customer Name</td>
                                        <td width="600px" align="center"><%=cnm%></td>
                                         </tr>
                                       
                                         <tr>
                                        <td width="600px" align="center">Grahak number</td>
                                        <td width="600px" align="center"><%=no1%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Email </td>
                                        <td width="600px" align="center"><%=em%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Meter Number</td>
                                        <td width="600px" align="center"><%=mn%></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Address </td>
                                        <td width="600px" align="center"><%=add%></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Mobile Number</td>
                                        <td width="600px" align="center"><%=mob%></td>
                                        </tr>
                                      
                                         <tr align="center">
                                             <td colspan="2"><a href="dummybillinfo1.jsp">Next</a></td>
                                          
                                         </tr>
                                          
                                         
                                    </tbody>
                                  
                                </table>
                                     
                               
         
                          
                </form>
                	<%
                                 session.setAttribute("mt1",mt);
                                 session.setAttribute("cnm1",cnm);
                                 session.setAttribute("no2",no1);
                                 session.setAttribute("em1",em);
                                 session.setAttribute("mn1",mn);
                                 session.setAttribute("add1",add);
                                 session.setAttribute("mob1",mob);
                                 
                                 %>     
			
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		<div id="tooplate_footer">
		
                    <a href="#"><marquee>Designed by-Asmita Gaikwad and Deepali Shinde</marquee></a> 
			
		</div>
 
             </div>
        </div>
        
    </body>
</html>
