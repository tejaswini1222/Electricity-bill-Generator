<%-- 
    Document   : unit rate information
    Created on : Oct 7, 2023, 10:50:26 AM
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
            String mt=null;
            String minu=null;
            String maxu=null;
            String ur=null;
             
        %>
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Bill_Generate</a></h1></div>
			<div id="tooplate_menu">
				<ul>
                                    <li><a href="admin home page.jsp" class="current">Home</a></li>
                                    <li><a href="log out.jsp">Log Out</a></li>
					
				</ul>    	
			</div> <!-- end of tooplate_menu -->
		</div> <!-- end of forever header -->
                <div id="tooplate_middle">
			<div id="mid_slider">
				<div id="slider1" class="sliderwrapper">
	
					<div class="contentdiv">
						<img src="images/slider/a1.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/a2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/a3.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/a4.jpg" alt="Image 04" />
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
					Electricity Bill Generate	
				</div>
				<p>
The history of power generation is long and convoluted, marked by myriad technological milestones, conceptual and technical, from hundreds of contributors. Many accounts begin power’s story at the demonstration of electric conduction by Englishman Stephen Gray, which led to the 1740 invention of glass friction generators in Leyden, Germany.Hans Christian Oersted’s demonstration of the relationship between electricity and magnetism. </p>
				
			</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
		<h1 align="center">Unit information</h1><br>
                <form>
                <table border="1"width="600px" align="center">
                    <thead>
                        <tr align="center">
                            <td width="600px" >Meter type</th>
                            <td width="600px" ><select name="meter_type">
                                    <option>Agricultural</option>
                                    <option>Residential</option>
                                    <option>Commercial</option>
                                </select></th>
                        </tr>
                        
                    </thead>
                    <tbody>
                         <tr align="center">
                            <td width="600px" >minUnit</td>
                            <td width="600px" ><select name="minunit">
                                    <option>0</option>
                                    <option>101</option>
                                    <option>301</option>
                                    <option>501</option>
                                </select></td>
                        </tr>
                        <tr align="center">
                            <td width="600px" >maxunit</td>
                            <td width="600px" ><select name="maxunit">
                                    <option>100</option>
                                    <option>300</option>
                                    <option>500</option>
                                    <option>1000</option>
                                </select></td>
                        </tr>
                        
                          <tr align="center">
                            <td width="600px" >Unit rate</td>
                            <td width="600px"><input type="text" name="unit_rate" value="" /></td>
                                </select></td>
                        </tr>
                        <tr align="center">
                                
                            <td align="center" colspan="2"><input type="submit" value="Update" /></td>
                                    </tr>
                    </tbody>
                </table>
                                    <%
                          mt=request.getParameter("meter_type");
                          minu=request.getParameter("minunit");
                          maxu=request.getParameter("maxunit");
                          ur=request.getParameter("unit_rate");
                     Statement st1=con.createStatement();
                    if(mt!=null && mt!="" && minu!=null && minu!="" && maxu!=null && maxu!="" && ur!=null && ur!="")
                    {
                    String str1 ="update rate_info set unit_rate="+ur+" where meter_type='"+mt+"' and minunit= "+minu+" and maxunit="+maxu+"";
                    int a=st1.executeUpdate(str1);
                    out.println("<script>alert('Update Successfully')</script>");
                    }
                %>

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
