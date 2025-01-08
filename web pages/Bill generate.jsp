<%-- 
    Document   : Bill generate
    Created on : Oct 6, 2023, 11:32:08 AM
    Author     : PCS
--%>
<%@include file="connection.jsp" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.text.DateFormat" %>
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
                                 String mt2=(String)session.getAttribute("mt");
                                 String cnm2=(String)session.getAttribute("cnm");
                                 String no3=(String)session.getAttribute("no");
                                 String em2=(String)session.getAttribute("em");
                                 String mn2=(String)session.getAttribute("mn");
                                 String add2=(String)session.getAttribute("add");
                                String mob2=(String)session.getAttribute("mob");
                                 String month2=(String)session.getAttribute("month");
                                String bu=(String)session.getAttribute("bu2");
                                String cmr=(String)session.getAttribute("cmr4");
                                String lmr=(String)session.getAttribute("lmr4");
                                String prate2=(String)session.getAttribute("prate");
                                String ps2=(String)session.getAttribute("ps4");
                                String vc2=(String)session.getAttribute("vc4");
                                String ik2=(String)session.getAttribute("ik4");
                                String vs2=(String)session.getAttribute("vs4");
                                String sr2=(String)session.getAttribute("sr4");
                               
               %>   
      
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		<div id="tooplate_header">
			<div id="site_title"><h1><a>Electricity</a></h1></div>
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
						<img src="images/slider/bill 1.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/bill 2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/bill 5.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/bill 4.jpg" alt="Image 04" />
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
                                    <h1>  <b>Bill Generate</b></h1>	
				</div>
				<p>
                                Based on your tariffs and category, your electricity bill is generated and hence, it is your responsibility to check that your bill is being generated under the right tariff and category. Units consumed:Units consumed is nothing but the number of KWH (Kilo-Watt per hour) consumed in one month.
                                </p></div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
		<h1 align="center">Bill Generate</h1><br>
                <form>
                   
                    <table border="1"width="400px" align="left">
                        <thead>
                                    <tr align="center">
                                        <th colspan="2"><h5>customer Information</h5></th>
                                        
                                    </tr>
                                </thead>
                        <tbody>
                            
                            <tr align="center">
                                <td width="600px">Meter number</td>
                                <td width="600px"><%=mn2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Meter type</td>
                                <td width="600px"><%=mt2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Customer name</td>
                                <td width="600px"><%=cnm2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Grahak number</td>
                                <td width="600px"><%=no3%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Address</td>
                                <td width="600px"><%=add2%></td>
                            </tr>
                             <tr align="center">
                                <td width="600px">Mobile no</td>
                                <td width="600px"><%=mob2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Month</td>
                                <td width="600px"><%=month2%></td>
                            </tr>
                    </table>
                            <table  border="1"width="400px" align="right">
                                <thead>
                                    <tr align="center">
                                        <th colspan="2"><h5>Bill Date Information</h5></th>
                                        
                                    </tr>
                                </thead>
                            <%
                        Date currentDate = new Date();
                        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                        Calendar c= Calendar.getInstance();
                        c.setTime(currentDate);
                        c.add(Calendar.MONTH,1);
                        Date currentDatePluseOne = c.getTime();
                        
                        Calendar cc= Calendar.getInstance();
                        cc.setTime(currentDatePluseOne);
                        cc.add(Calendar.DAY_OF_WEEK,5);
                        Date currentDatePluseOnee = cc.getTime();
                    
                    %>
                    
                            <tr align="center">
                                <td width="600px">Previous riding date</td>
                                <td width="600px"><%=dateFormat.format(currentDate)%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">current riding date</td>
                                <td width="600px"><%=dateFormat.format(currentDatePluseOne)%></td></tr>
                            <tr align="center">
                                <td width="600px">Bill beginning date</td>
                                <td width="600px"><%=dateFormat.format(currentDatePluseOne)%></td>
                            </tr>
                             <%
                         
                    Date currentDatee = new Date();
                    DateFormat dateFormatt = new SimpleDateFormat("dd/MM/yyyy");
                  
                     Calendar ccccc= Calendar.getInstance();
                           ccccc.setTime(currentDatePluseOne);
                        ccccc.add(Calendar.DAY_OF_WEEK,15);
                        Date currentDatePluseOneeeee = ccccc.getTime();
                    
                       double p= Double.parseDouble(ps2);
                       double v=Double.parseDouble(vc2);
                       double i= Double.parseDouble(ik2);
                        double v1=Double.parseDouble(vs2);
                        double s=Double.parseDouble(sr2);
                       
                        
                             double tot=0;
                            tot=p+v+i+v1+s;
                            
                            
                            double ftot=0;
                            ftot=tot+10;
                            %>
                            <tr align="center">
                                <td width="600px">Bill ending date</td>
                                <td width="600px"><%=dateFormat.format(currentDatePluseOneeeee)%><td width="150px">Amount</td></td><td width="50px"><%=tot%></td>
                                
                                
                            </tr>
                            
                                 <%
                     Date currentDateee = new Date();
                    DateFormat dateFormattt = new SimpleDateFormat("dd/MM/yyyy");
                     Calendar cccccc= Calendar.getInstance();
                           cccccc.setTime(currentDatePluseOne);
                        cccccc.add(Calendar.DAY_OF_WEEK,25);
                        Date currentDatePluseOneeeeee = cccccc.getTime();
                    
                    %>
                            <tr align="center">
                                <td width="600px">Due date</td>
                                <td width="600px"><%=dateFormat.format(currentDatePluseOneeeeee)%><td width="150px">Fine Amount</td></td><td width="50px"><%=ftot%></td></td>
                            </tr>
                            </table>
                            
                                
                            <table  border="1"width="800px" align="center">
                                <thead>
                                    <tr align="center">
                                        <th colspan="2"><h5>charges</h5></th>
                                        
                                    </tr>
                                </thead>
                            <tr align="center">
                                <td width="600px">Total unit</td>
                                <td width="600px"><%=bu%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">vij kar</td>
                                <td width="600px"><%=ps2%></td>
                            </tr>
                    
                            <tr align="center">
                                <td width="600px">vahak kar</td>
                                <td width="600px"><%=vc2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Indhan kar</td>
                                <td width="600px"><%=ik2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">vij shulk</td>
                                <td width="600px"><%=vs2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Static rate</td>
                                <td width="600px"><%=sr2%></td>
                            </tr>
                           <%
                            Statement st=con.createStatement();
                            if(mn2!=null && mn2!="" && mt2!=null && mt2!="" && cnm2!=null && cnm2!="" && no3!=null && no3!="" && add2!=null && add2!="" && mob2!=null && mob2!="" && month2!=null && month2!="" && bu!=null && bu!="" && ps2!=null && ps2!="" && vc2!=null && vc2!="" && ik2!=null && ik2!="" && vs2!=null && vs2!="" && sr2!=null && sr2!=""  )
                            {
                                String str1="insert into bill_generate(Meter_number,meter_type,customer_name,Grahak_number,Address,Mobile_no,Month,pr_date,crn_date,bb_date,bn_date,due_date,tot_unit,power_size,vahak_kar,Indhan_kar,vij_kar,static_rate,Amount,fine_amount)values("+mn2+",'"+mt2+"','"+cnm2+"',"+no3+",'"+add2+"',"+mob2+",'"+month2+"','"+currentDate+"','"+currentDatePluseOne+"','"+currentDatePluseOne+"','"+currentDatePluseOneeeee+"','"+currentDatePluseOneeeeee+"',"+bu+","+ps2+","+vc2+","+ik2+","+vs2+","+sr2+","+tot+","+ftot+")";
                                 int i1=st.executeUpdate(str1); 
                                    out.println("<script>alert('******information Submitted******')</script>");
                                  
                               }
                           %>
                           <tr align="center">
                                <td width="600px">Total bill</td>
                                <td width="600px"><%=tot%></td>
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
