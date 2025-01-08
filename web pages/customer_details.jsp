<%-- 
    Document   : customer_details
    Created on : Jan 2, 2024, 9:40:25 AM
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
            f.action='Bill_info1.jsp?no=' +id;
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
                                    <h1><b>Customer Details</b></h1>
				</div>
                    <p> To maintain a continuous supply of electricity the government has set forth certain regulations among which paying electricity bills on time is a vital rule. Consumers can either visit the electricity board office to pay the bills or simply log into the official portal using their login credentials to pay their bills.</p>
                    </div>
		<div id="tooplate_main">
                    <form method="post" name="form">
                    <table border="2">
                        <thead>
                                    <tr align="center">
                                        <th colspan="8"><h3> Customer Details</h3></th>
                                        
                                    </tr>
                                </thead>
                                
                    <%
                    int a=0;
                    String mn=null;
                    String cnm=null;
                    String add=null;
                    String em=null;
                    String mob=null;
                    String mt=null;
                   
                    Statement st=con.createStatement();
                    String str= "select * from meter_info";
                    
                    ResultSet rs=st.executeQuery(str);
                    
                    
                    %>  
                    <tr height="50px">
                        <td align="ceter">Grahak Number</td><td align="center">Meter Number</td><td align="center">Customer Name</td><td align="center">Address</td><td align="center">Email</td><td align="center">Mobile Number</td><td align="center">Meter Type</td>
                        
                    </tr>
                    <%
                    while(rs.next())
                    {
                        a=rs.getInt(1);
                        mn=rs.getString(2);
                        cnm=rs.getString(3);
                        add=rs.getString(4);
                        em=rs.getString(5);
                        mob=rs.getString(6);
                        mt=rs.getString(7);
                    %>
                    <tr height="50px" align="center">
                        <td><%=a%></td> 
                        <td><%=mn%></td>
                        <td><%=cnm%></td>
                        <td><%=add%></td>
                        <td><%=em%></td>
                        <td><%=mob%></td>
                        <td><%=mt%></td>
                   <td align="center"><input type="button"name="BillGenrate" value="BillGenrate"style="background-color: cornflowerblue;font-weight: bold;color: white;"onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>
                    <%
                    }
                    %>
                    
                    </table>
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
