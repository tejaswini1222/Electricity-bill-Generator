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
      float vc=0;
      float ik=0;
      float vs=0;
      float sr=0;
        no1=request.getParameter("grahak_number");
                      
        
                                 String mt2=(String)session.getAttribute("mt4");
                                 String cnm2=(String)session.getAttribute("cnm4");
                               String no3=(String)session.getAttribute("no4");
                                   String em2=(String)session.getAttribute("em4");
                                 String mn2=(String)session.getAttribute("mn4");
                               String add2=(String)session.getAttribute("add4");
                                  String mob2=(String)session.getAttribute("mob4");
                                 String month2=(String)session.getAttribute("month4");
                                String lmr=(String)session.getAttribute("lmr4");
                                String cmr2=(String)session.getAttribute("cmr4");
                                 
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
                                    <h1><b>Bill info 2</b></h1>
				</div>
                    <p>To maintain a continuous supply of electricity the government has set forth certain regulations among which paying electricity bills on time is a vital rule. Consumers can either visit the electricity board office to pay the bills or simply log into the official portal using their login credentials to pay their bills.</p>
                    </div>
		<div id="tooplate_main">
		<h1 align="center">Bill Information2</h1><br>
                <form>
                    
                            <table border="1"width="600px" align="center">
                                <%
                                      /*   out.println(mt2);
                                         out.println(cnm2);
                                         out.println(no3);
                                         out.println(em2);
                                         out.println(mn2);
                                         out.println(add2);
                                         out.println(mob2);
                                         out.println(month2);
                                         out.println(cmr2);
                                         out.println(lmr);*/
                                 %>
                               
                                        
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
                                        <td width="600px" align="center">grahak number</td>
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
                                        <td width="600px" align="center"><%=month2%></td>
                                    </tr>
                                      <%
                                     int bu=0;
                                        int c=0;
                                     int l=Integer.parseInt(lmr);
                                     c=Integer.parseInt(cmr2);
                                      bu=c-l;
                                        %>
                                        <tr>
                                        <td width="600px" align="center">Billing Unit</td>
                                        <td width="600px" align="center"><%=bu%></td>
                                        </tr>
                                      
                                     <tr>
                                        <td width="600px" align="center">Current Riding</td>
                                        <td width="600px" align="center"><%=cmr2%></td>
                                        </tr>
                                         <tr>
                                        <td width="600px" align="center">Last Month Riding</td>
                                        <td width="600px" align="center"><%=l%></td>
                                        </tr>
                                        <%
                                        float rate=0;
                                        
                                         Statement st=con.createStatement();
                                         String str="select unit_rate,vahak_kar,indhan_kar,Vij_shulk,static_rate from rate_info where meter_type='"+mt2+"' and minunit <="+bu+" and maxunit >="+bu+"";
                                        ResultSet rs=st.executeQuery(str);
                                       while(rs.next()) 
                                       {
                                         rate=rs.getFloat(1);
                                         vc=rs.getFloat(2);
                                         ik=rs.getFloat(3);
                                         vs=rs.getFloat(4);
                                         sr=rs.getFloat(5);
                                       }
                                        %>
                                        <tr>
                                        <td width="600px" align="center">Per unit rate</td>
                                        <td width="600px" align="center"><%=rate%></td>
                                        </tr>
                                        <%
                                        
                                        float ps=0;
                                         %>
                                        
                                        <%
                                       ps=bu*rate;
                                      //float ps1=Float.valueOf(ps);
                                      
                                        %>
                                        <tr>
                                        <td width="600px" align="center">vij kar</td>
                                        <td width="600px" align="center"><%=ps%></td>
                                        </tr>
                                       
                                        <tr>
                                        <td width="600px" align="center">Vahak kar</td>
                                        <td width="600px" align="center"><%=vc%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Indhan kar</td>
                                        <td width="600px" align="center"><%=ik%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Vij shulk</td>
                                        <td width="600px" align="center"><%=vs%></td>
                                        </tr>
                                        <tr>
                                        <td width="600px" align="center">Static rate</td>
                                        <td width="600px" align="center"><%=sr%></td>
                                        </tr>
                                        
                                       
                                         <tr align="center">
                           
                                    <td><a href="dummybillinfo1.jsp">Back</a></td>   
                                    <td><a href="Bill generate.jsp">Next</a></td>
                                    </tr>
                                    </tbody>
                                         
                                </table>
                                        <%
                                      Statement st1=con.createStatement();
                                       if(mt2!=null && mt2!="" && cnm2!=null && cnm2!="" && no3!=null && no3!="" && em2!=null && em2!="" && mn2!=null && mn2!="" && add2!=null && add2!="" && mob2!=null && mob2!="" && month2!=null && month2!=""  ) 
                                       {
                                        String str3="insert into bill_info2(meter_type,customer_name,grahak_number,email,meter_number,address,mobile_number,month,billing_unit,current_riding,last_month_riding,per_unit_rate,power_size)values('"+mt2+"','"+cnm2+"',"+no3+",'"+em2+"',"+mn2+",'"+add2+"',"+mob2+",'"+month2+"',"+bu+","+cmr2+","+lmr+","+rate+","+ps+")";
                                      int i=st.executeUpdate(str3);
                                    
                                       }
                                     
                           session.setAttribute("mt",mt2);
                           session.setAttribute("cnm",cnm2);
                           String gn=String.valueOf(no3);   
                           session.setAttribute("no",gn);
                            session.setAttribute("em",em2);
                            String mn=String.valueOf(mn2);  
                            session.setAttribute("mn",mn);
                            session.setAttribute("add",add2);
                            String mob=String.valueOf(mob2); 
                           session.setAttribute("mob",mob);
                            session.setAttribute("month",month2);
                            String bu3=String.valueOf(bu);
                            session.setAttribute("bu2",bu3);
                            String cmr=String.valueOf(cmr2);
                           session.setAttribute("cmr4",cmr);
                           String lmr3=String.valueOf(lmr);
                           session.setAttribute("lmr4",lmr3);
                           String pur=String.valueOf(rate);
                           session.setAttribute("prate",pur);
                            String ps2=String.valueOf(ps);
                           session.setAttribute("ps4",ps2);
                           String tc2=String.valueOf(vc);
                           session.setAttribute("vc4",tc2);
                           String ik2=String.valueOf(ik);
                           session.setAttribute("ik4",ik2);
                           String vs2=String.valueOf(vs);
                           session.setAttribute("vs4",vs2);
                          String sr2=String.valueOf(sr);
                          session.setAttribute("sr4",sr2);
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

