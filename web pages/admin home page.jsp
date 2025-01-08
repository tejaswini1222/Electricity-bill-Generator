<%-- 
    Document   : admin home page
    Created on : Oct 11, 2023, 8:08:37 PM
    Author     : PCS
--%>

<%-- 
    Document   : main_home_page
    Created on : Sep 28, 2023, 10:07:35 AM
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
                                  
                                    <li><a href="Meter_info.jsp" class="current">Bill Generate</a></li>
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
					Admin home page	
				</div>
				<p>
The history of power generation is long and convoluted, marked by myriad technological milestones, conceptual and technical, from hundreds of contributors. Many accounts begin power’s story at the demonstration of electric conduction by Englishman Stephen Gray, which led to the 1740 invention of glass friction generators in Leyden, Germany.Hans Christian Oersted’s demonstration of the relationship between electricity and magnetism. </p>
				
			</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
			
			<div class="col_w900 col">
					<div class="col_allw280 fp_service_box">
						<div class="con_tit_02">Agricultural</div>
						<img src="images/agri.png" alt="Image" />
						<p>Electricity plays an equally important part in the dairy farm for feed rationing,milking,milk cooling;all these appcatons are automatically controlled.computers have increasingly been employed to aid in farm management and to directly control automated equipment.</p>
						
					</div>
					<div class="col_allw280 fp_service_box">
						<div class="con_tit_02">Residential</div>
						<img src="images/logo 11.png" alt="Image" />
						<p>When examining the setup and use of electricity in a residential house,it is frequently a small area with 4-5 people using power and very few big application.but when you look at a company,it frequently has more employees and larger applications,so it needs a bigger load.</p>
					</div>
					<div class="col_allw280 fp_service_box col_last">
						<div class="con_tit_02">Commercial</div>
						<img src="images/logo 1.png" alt="Image" />
                                                <p>If you are wondering are commercial electricity rates higher than residential ,yes there are disparties but these are the reasons behind them.The amount and timing iof electricity use is the main factor behind the disparity in business and residential electric rate.</p>
					</div>
					<div class="cleaner h60"></div>
					<div class="col_allw280 fp_service_box">
						<div class="con_tit_02">Uses</div>
						<img src="images/uses.png" alt="Image" />
						<p>People use electricity for lighting, heating, cooling, and refrigeration and for operating appliances, computers, electronics, machinery, and public transportation systems.</p>
						
					</div>
					<div class="col_allw280 fp_service_box">
						<div class="con_tit_02">Safety</div>
						<img src="images/safety.png" alt="Image" />
						<p>Electricity can be dangerous if not handled properly. Electrical fires, electrocution, and other accidents can occur if electrical equipment is not installed or used correctly.</p>
						
					</div>
					<div class="col_allw280 fp_service_box col_last">
						<div class="con_tit_02">limitation</div>
						<img src="images/limitation.png" alt="Image" />
						<p>Estimates of relative technology cost and value; Power system capacity expansion modeling.</p>
						
					</div>
					
					<div class="cleaner"></div>
				</div>
			
				<div class="col_w900 col_w900_last">
					<div class="con_tit_01"><b>Welcome to Online Electricity Bill</b></div>
					<img src="images/abc.png" alt="Image 01" class="image_wrapper image_fl" />
					<p> In stone age If we have no electricity to power all the machinery currently used, people may be surprised to realize that having no electricity also means having no running water. Even those of us with wells need electricity to power the well pump.Without electricity, we would need to go back to using kerosene lamps for night light, have an outhouse, and use a manual pump to fetch water, just like the Ingalls family on “Little House on the Prairie”.</p>
					<p>Computers and laptops, without which we would be unable to run our lives, are also essential sources of power.
Electricity has also been used to create robots. 
Electricity is also used by machines in the medical profession and surgery, such as X-rays and ECGs. As a result, power is now a daily requirement.</p>	
					<div class="cleaner"></div>
				</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		<div id="tooplate_footer">
		
                    <a><marquee>Designed by-Asmita Gaikwad and Deepali Shinde</marquee></a> 
			
		</div>
 
             </div>
        </div>
        
    </body>
</html>
