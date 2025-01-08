<%-- 
    Document   : payment
    Created on : Oct 17, 2023, 10:37:17 AM
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
     <script language="javascript">
        function editRecord(id)
        {
            var f = document.form;
            f.method="post";
            f.action='scaner.jsp?Grahak_number=' +id;
            f.submit();
        }
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
						<img src="images/slider/p1.jpg" alt="Image 01" />
					</div>
		
					<div class="contentdiv">
						<img src="images/slider/p2.jpg" alt="Image 02" />
					</div>            
					
					<div class="contentdiv">
						<img src="images/slider/p3.jpg" alt="Image 03" />
					</div>
					
					<div class="contentdiv">
						<img src="images/slider/p4.jpg" alt="Image 04" />
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
                                    <h1>  <b>Payment</b></h1>	
				</div>
				<p>
                                    Bill payment is a facility provided to the customer to make their utility payments online through digital banking.The customer can payment Electricity bill like,online Net Banking.</p>
			</div>
			
			<div class="cleaner"></div>
		</div> <!-- end of middle -->
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
		<h1 align="center">Payment</h1><br>
                <form method="post" name="form">
                    <table border="1"align="center"width="600">
                        
                        <tbody>
                        
                            <tr align="center" >
                                <td weidth="600">grahak no.</td>
                                <td weidth="600"><input type="text" name="grahakno" value="" /></td>
                                              
                               <td width="600px">Month</td>
                                        <td width="600px" align="center" ><select name="month">
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
                        <tr >
                             <td width="600px"  colspan="7" align="center"><input type="submit" value="Search" /></td>
                        </tr>
                    
                              <%
                    
                    String mt=null;
                    String cnm=null;
                    String am= null;
                    String fam=null;
                    String cd=null;
                    String dd=null;
                    String gn=null;
                    String mn=null;
                    String bu=null;
                     String month=null;
                    int gnk=0;
                  gn= request.getParameter("grahakno");
                  
                  mn=  request.getParameter("month");
                    Statement st=con.createStatement();
                    
                    if(gn!=null && gn!="" && mn!=null && mn!="")
                    {
                   
                    String str= "select * from bill_generate where Grahak_number="+gn+" and Month='"+mn+"'";
                    ResultSet rs=st.executeQuery(str);
                    
                    %>
                    <tr height="50px">
                        <td align="ceter">Grahak Number</td><td align="ceter">Month</td><td align="ceter">Meter Type</td><td align="center">Customer Name</td><td align="center">Bill unit</td><td align="center">Amount</td><td align="center">Fine Amount</td><td align="center">Current Date</td><td align="center">Due Date</td>
                        
                    </tr>
                    <%
                    while(rs.next())
                    {
                        gnk=rs.getInt(4);
                        month=rs.getString(7);
                        mt=rs.getString(2);
                        cnm=rs.getString(3);
                        bu=rs.getString(13);
                        am=rs.getString(19);
                        fam=rs.getString(20);
                        cd=rs.getString(9);
                        dd=rs.getString(12);
                        
                    %>
                    <tr height="50px" align="center">
                        <td><%=gnk%></td>
                        <td><%=month%></td>
                        <td><%=mt%></td>
                        <td><%=cnm%></td>
                        <td><%=bu%></td>
                        <td><%=am%></td>
                        <td><%=fam%></td>
                        <td><%=cd%></td>
                        <td><%=dd%></td>
                   <td align="center"><input type="button"name="BillPayment" value="BillPayment"style="background-color: cornflowerblue;font-weight: bold;color: white;"onclick="editRecord(<%=rs.getInt(4)%>)"/></td></tr>
                    <%
                    }
                    }
                    %>  
                        </tbody>
                    </table>
                    <%
                   // session.setAttribute("am1",am);
                   // session.setAttribute("cd1",cd);
                   // session.setAttribute("dd1",dd);
                   // session.setAttribute("cnm1",cnm);
                   // session.setAttribute("bu1",bu);
                    
                    String g=String.valueOf(gnk);
                    session.setAttribute("gn1",g);
                    //session.setAttribute("month1",month);
                    //session.setAttribute("fam1",fam);
                    %>
                </form>


                            	
			
					
					
					
	
			
			
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		
 
             </div>
        </div>
        
    </body>
</html>


