<%-- 
    Document   : Cheak Bill
    Created on : Oct 7, 2023, 11:24:38 AM
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
                                    <h1>  <b>Check Bill</b></h1>	
				</div>
				<p>
                                    You can check the KPLC bill online by visiting the Kenya power company online portal where you can enter the first part of your account number in the box written account name below then click submit.</p>
			</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
		<h1 align="center">Cheak Bill</h1><br>
                <form>
                <table border="1"width="600px" align="center">
                    <thead>
                        <tr align="center">
                            <th colspan="2" align="center">Cheak Bill</th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <tr align="center">
                            <td width="600px">Month</td>
                            <td width="600px"><select name="Month">
                                    <option>January</option>
                                    <option>February</option>
                                    <option>March</option>
                                    <option>April</option>
                                    <option>May</option>
                                    <option>June</option>
                                    <option>July</option>
                                    <option>August</option>
                                    <option>September</option>
                                    <option>October</option>
                                    <option>November</option>
                                    <option>December</option>
                                </select></td>
                        </tr>
                        <tr align="center">
                            <td width="600px">Consumer no</td>
                            <td width="600px"><input type="text" name="consumer no" value="" /></td>
                        </tr>
                        <tr align="center">
                            <td>Meter no</td>
                            <td><input type="text" name="meter no" value="" /></td>
                        </tr>
                        <tr align="center">
                            <td width="600px">Meter type</td>
                            <td width="600px"><select name="Meter type">
                                    <option>Agricultural</option>
                                    <option>Residential</option>
                                    <option>Commertial</option>
                                </select></td>
                        </tr>
                        <tr align="center">
                            <td width="600px">Privious Riding</td>
                            <td width="600px"><input type="text" name="Privious Riding" value="" /></td>
                        </tr>
                        <tr align="center">
                            <td width="600px">Current Reading</td>
                            <td width="600px"><input type="text" name="Current riding" value="" /></td>
                        </tr>
                        <tr align="center">
                            <td width="600px">Static Rate</td>
                            <td width="600px"><input type="text" name="Static rate" value="" /></td>
                        </tr>
                        <tr align="center">
                                
                                <td align="center" colspan="2"><input type="submit" value="ok" /></td>
                                    </tr>
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

