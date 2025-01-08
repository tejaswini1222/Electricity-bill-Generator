<%-- 
    Document   : dummybillinfo1
    Created on : Jan 5, 2024, 9:32:08 AM
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
                                 String mt2=(String)session.getAttribute("mt1");
                                 String cnm2=(String)session.getAttribute("cnm1");
                                 String no3=(String)session.getAttribute("no2");
                                 String em2=(String)session.getAttribute("em1");
                                 String mn2=(String)session.getAttribute("mn1");
                                 String add2=(String)session.getAttribute("add1");
                                 String mob2=(String)session.getAttribute("mob1");
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
                                    <h1><b>Bill information</b></h1>
				</div>
                    <p>To maintain a continuous supply of electricity the government has set forth certain regulations among which paying electricity bills on time is a vital rule. Consumers can either visit the electricity board office to pay the bills or simply log into the official portal using their login credentials to pay their bills. </p>
                    </div>
		<div id="tooplate_main">
		<h1 align="center">Bill info 1.1</h1><br>
                <form>
                            <table border="1"width="600px" align="center">
                                
                                 
                                    <tbody>
                                         <tr align="center">
                                            <td width="600px">Meter type</td>
                                            <td width="600px" align="center"><%=mt2%></td>
                                             
                                        </tr>
                                     
                                         <tr>
                                        <td width="600px" align="center">customer Name</td>
                                        <td width="600px" align="center"><%=cnm2%></td>
                                         </tr>
                                       
                                         <tr>
                                        <td width="600px" align="center">Grahak number</td>
                                        <td width="600px" align="center"><%=no3%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Email </td>
                                        <td width="600px" align="center"><%=em2%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Meter Number</td>
                                        <td width="600px" align="center"><%=mn2%></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Address </td>
                                        <td width="600px" align="center"><%=add2%></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Mobile Number</td>
                                        <td width="600px" align="center"><%=mob2%></td>
                                        </tr>
                                         <tr align="center">
                                       
                                         <td width="600px">Month</td>
                                        <td width="600px" align="center" colspan="2"><input type="submit" value="search"><select name="Month">
                                         <option>    </option>
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
                                     <%
                                        String month=null;
                                       
                                         int lmr=0;
                                         
                                         month=request.getParameter("Month");
                                         
                                         Statement st=con.createStatement();
                                         if(month!=null && month!="")
                                         {
                                         String str="select * from bill_info1 where month='"+month+"'and customer_name='"+cnm2+"'";
                                         ResultSet rs3=st.executeQuery(str);
                                          if(rs3.next())
                                         {
                                             lmr=rs3.getInt(9);
                                         }
                                          else
                                          {
                                              lmr=0;
                                          }
                                         }
                                         %>    
                                     <tr>
                                        <td width="600px" align="center">Current Riding</td>
                                        <td width="600px" align="center"><input type="text" name="Current_riding" value="" /></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Last Month Riding</td>
                                        <td width="600px" align="center"><%=lmr%></td>
                                        </tr>
                                         <tr align="center">
                                
                                <td><input type="submit" value="Save" /></td>
                                <td><a href="Bill_info2.jsp">next</a></td>
                               
                                    </tr>
                                    </tbody>
                                  
                                </table>
                                           <%
                                 String cmr=null;
                                 String month2=null;
                                 String cmr2=null;
                                
                                 cmr=request.getParameter("Current_riding");
                               Statement st3=con.createStatement();
                              
                               if(month!=null && month!="" && cmr!=null && cmr!="")  
                               {
                                   String str1="insert into bill_info1(meter_type,customer_name,grahak_number,email,meter_number,address,mobile_number,month,current_riding,last_month_riding)values('"+mt2+"','"+cnm2+"',"+no3+",'"+em2+"',"+mn2+",'"+add2+"',"+mob2+",'"+month+"',"+cmr+","+lmr+")";
                                   int i=st3.executeUpdate(str1); 
                                    out.println("<script>alert('******information updated******')</script>");
                                  
                               }
                               
                                        /* out.println(mt2);
                                         out.println(cnm2);
                                         out.println(no3);
                                         out.println(em2);
                                         out.println(mn2);
                                         out.println(add2);
                                         out.println(mob2);
                                         out.println(month);
                                         out.println(cmr);
                                         out.println(lmr);*/
                            session.setAttribute("mt4",mt2);
                            session.setAttribute("cnm4",cnm2);
                             String n=String.valueOf(no3);
                            session.setAttribute("no4",n);
                            session.setAttribute("em4",em2);
                             String m1=String.valueOf(mn2);
                            session.setAttribute("mn4",m1);
                            session.setAttribute("add4",add2);
                             String m=String.valueOf(mob2);
                            session.setAttribute("mob4",m);
                            session.setAttribute("month4",month);
                            String l=String.valueOf(lmr);
                            String c=String.valueOf(cmr);
                            
                            session.setAttribute("lmr4",l);
                            session.setAttribute("cmr4",c);
                            
                                %>
                               
                          
                </form>
                <%
                          
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
