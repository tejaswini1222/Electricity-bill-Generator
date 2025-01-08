<%-- 
    Document   : Meter_info
    Created on : Dec 26, 2023, 6:06:30 PM
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
                                    <h1><b>Meter Information</b></h1>
				</div>
                    <p>To maintain a continuous supply of electricity the government has set forth certain regulations among which paying electricity bills on time is a vital rule. Consumers can either visit the electricity board office to pay the bills or simply log into the official portal using their login credentials to pay their bills. </p>
                    </div>
		<div id="tooplate_main">
		<h1 align="center">Meter Information</h1><br>
                <form>
                             <%
                                int a=0;
                                Statement st=con.createStatement();
                                String str="select count(*)from meter_info";
                                ResultSet rs=st.executeQuery(str);
                                if(rs.next())
                                {
                                    a=rs.getInt(1);
                                    a++;
                                }
                                %>
                                
                            <table border="1"width="600px" align="center">
                                <thead>
                                    
                                </thead>
                                <tbody>
                                    <tr>
                                        <td width="600px" align="center">Grahak number</td>
                                        <td width="600px" align="center"><input type="text" name="customer_number" value="<%=a%>" readonly="true"/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td width="600px" align="center">Meter Number</td>
                                        <td width="600px" align="center"><input type="text" name="Meter_number" value="" /></td>
                                    </tr>
                                    <%
                                    String cnm=null;
                                    Statement st1=con.createStatement();
                                    String str1="select * from registration";
                                    ResultSet rs1=st1.executeQuery(str1);
                                   
                                    
                                    %>
                                    <tr>
                                        <td width="600px" align="center">customer Name</td>
                                        <td align="center" colspan="2"><input type="submit" value="search" /><select name="name">
                                                <%
                                     while(rs1.next())
                                    {
                                        
                                        %>
                                        <option>       </option>
                                                <option><%=rs1.getString(2)%></option>
                                                             <%
                                    }
                                    %>
                                            </select></td>
                               
                                    </tr>
                                    <%
                                    String add=null;
                                    String em=null;
                                    String mob=null;
                                    cnm=request.getParameter("name");
                                   
                                    
                                    Statement st2=con.createStatement();
                                    String str2="select * from registration where name='"+cnm+"'";
                                    ResultSet rs2=st2.executeQuery(str2);
                                   while(rs2.next())
                                   {
                                       add=rs2.getString(3);
                                       em=rs2.getString(5);
                                       mob=rs2.getString(6);
                                   }
                                    
                                    %>
                                    <tr>
                                        <td width="600px" align="center">Address </td>
                                        <td width="600px" align="center"><%=add%></td>
                                    </tr>
                                     <tr>
                                        <td width="600px" align="center">Email </td>
                                        <td width="600px" align="center"><%=em%></td>
                                    </tr>
                                     <tr>
                                        <td width="600px" align="center">Mobile Number</td>
                                        <td width="600px" align="center"><%=mob%></td>
                                    </tr>
                                    <%
                                    String mn=null;
                                    String mt=null;
                                    int mn1=0;
                                    String a1=null;
                                    a1=String.valueOf(request.getParameter("customer_number"));
                                    mn=request.getParameter("Meter_number");
                                   // mn1=Integer.parseInt(mn);
                                  
                                   /* add=request.getParameter("Address");
                                    em=request.getParameter("Email");
                                    mob=request.getParameter("Mobile_number");*/
                                    mt=request.getParameter("Meter_type");
                                    Statement st3=con.createStatement();
                                      if(a1!=null && a1!="" && mn!=null && mn!="" &&  mt!=null && mt!="" )  
                                    
                                      {
                                         String str3="insert into meter_info(no,meter_number,customer_name,address,email,mobile_number,meter_type)values("+a1+",'"+mn+"','"+cnm+"','"+add+"','"+em+"',"+mob+",'"+mt+"')";
                                        int i=st3.executeUpdate(str3);
                                       out.println("<script>alert('******information submitted******')</script>"); 
                                        
                                        /*  out.println(a);
                                         out.println(mn);
                                         out.println(cnm);
                                         out.println(add);
                                         out.println(em);
                                         out.println(mob);
                                         out.println(mt); */
                                         
                                      }
                                    %>
                                    <tr align="center">
                                    
                                     
                                            <td width="600px">Meter type</td>
                                            <td width="600px"><select name="Meter_type">
                                                <option>Agricultural</option>
                                                <option>Residential</option>
                                                <option>Commercial</option>
                                </select></td>
                                    </tr>
                                    <tr align="center">
                                
                                <td align="center" colspan="2"><input type="submit" value="submit" /></td>
                                    </tr>
                                 <tr align="center">
                                
                                     <td><a href="customer_registration.jsp">Back</a></td>
                                     <td><a href="customer_details.jsp">Next</a></td>
                               
                               
                                    </tr>
                                    
                                </tbody>
                                
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
