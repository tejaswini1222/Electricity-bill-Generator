<%-- 
    Document   : adminchooseyourpage
    Created on : Oct 12, 2023, 10:44:37 AM
    Author     : PCS
--%>

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
                                    <li><a href="admin home page.jsp" class="current">Home</a></li>
                                    <li><a href="unit rate information.jsp">RateInfo</a></li>
                                    <li><a href="Bill generate.jsp">BillGenerate</a></li>
                                    <li><a href="log out.jsp">LogOut</a></li>
					
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
		<h1 align="center">Choose Your Page</h1><br>
                <form>
                            <table border="1"width="600px" align="center">
                               
                                <tbody>
                                    <tr>
                                        <td width="600px"><a href="unit rate information.jsp">Rate Info</a></td>
                                        <td width="600px"><a href="Bill generate.jsp">Bill Generate</a></td>
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

