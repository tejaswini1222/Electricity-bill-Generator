<%-- 
    Document   : scaner.jsp
    Created on : Feb 9, 2024, 9:03:22 AM
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
             //String am2=(String)session.getAttribute("am1");
              //String cd2=(String)session.getAttribute("cd1");
              // String dd2=(String)session.getAttribute("dd1");
               // String cnm2=(String)session.getAttribute("cnm1");
                 String gn2=(String)session.getAttribute("gn1");
                // String gk=request.getParameter("Grahak_number");
                // String month2=(String)session.getAttribute("month1");
                //  String fam2=(String)session.getAttribute("fam1");
                 // String bu3=(String)session.getAttribute("bu1");
                 
        %>
       
        <div id="tooplate_wrapper">
	<div id="tooplate_main_wrapper">
	
		
                <div id="tooplate_middle">
			
			<div id="mid_left">
				
                <div id="tooplate_main_top"></div>
		<div id="tooplate_main">
                     <%
                   
                    String am2=null;
                    String cd2=null;
                    String dd2=null;
                    String cnm2=null;
                   String month2=null;
                   String fam2 =null;
                   String bu3=null;
                   String d1=request.getParameter("date");
                   Statement st2=con.createStatement();
                                    String str2="select * from bill_generate where Grahak_number="+gn2+"";
                                    ResultSet rs2=st2.executeQuery(str2);
                                   while(rs2.next())
                                   {
                                        am2=rs2.getString(19);
                                        cd2=rs2.getString(9);
                                        dd2=rs2.getString(12);
                                        cnm2=rs2.getString(3);
                                        month2=rs2.getString(7);
                                        fam2=rs2.getString(20);
                                        bu3=rs2.getString(13); 
                                     
                                   }
                                 
                    %>
                    <marquee> <h2 ><b>Electricity Bill Payment</b></h2><br></marquee>
                    <h1 align="center">₹<%=am2%></h1>
                <form>
                <table border="2" align="center" width="600">
                 
                     <tr align="center">
                                <td width="600px">Current Date</td>
                                <td width="600px"><%=cd2%></td>
                            </tr>
                      <tr align="center">
                                <td width="600px">Due Date</td>
                                <td width="600px"><%=dd2%></td>
                                
                            </tr> 
                       <tr align="center">
                                <td width="600px">Customer Name</td>
                                <td width="600px"><%=cnm2%></td>
                            </tr>
                        <tr align="center">
                                <td width="600px">Grahak number</td>
                                <td width="600px"><%=gn2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Month</td>
                                <td width="600px"><%=month2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">Bill unit</td>
                                <td width="600px"><%=bu3%></td>
                            </tr>
                </table><br><br>
                            <table border="2" align="center" width="600">
                           <tr align="center">
                                <td width="600px">Before Due Date Amount</td>
                                <td width="600px"><%=am2%></td>
                            </tr>
                            <tr align="center">
                                <td width="600px">After Due Date Amount</td>
                                <td width="600px"><%=fam2%></td>
                            </tr>
                             
                            
                            <%
                            String img=null;
                            Statement st=con.createStatement();
                             String str= "select * from admin_login";
                             ResultSet rs=st.executeQuery(str);
                             while(rs.next())
                             {
                                 img=rs.getString(3);
                             }
                            %>
                            <tr align="center">
                                <td width="600px"> Date</td>
                                <td><input type="date" name="date" value="" /></td>
                            </tr>
                            <tr align="center">
                                <td colspan="2">
                            <img src="images/slider/dscaner.png" width="300" height="300" alt="scaner"/>
                                </td>
                            </tr>
                             <%
                               
                              
                             Statement st1=con.createStatement();
                             
                             if(d1!=null && d1!="")
                             {
                                String str1="insert into payment(grahak_no,month,amount,fine_amount,name,bill_unit,date)values("+gn2+",'"+month2+"',"+am2+","+fam2+",'"+cnm2+"',"+bu3+",'"+d1+"')";
                                 int i=st1.executeUpdate(str1);
                                 out.println("<script>alert('******Payment Successfull******')</script>");
                                 /*out.println("gno="+gn2);
                                 out.println("mon="+month2);
                                 out.println("amo="+am2);
                                 out.println("fmo="+fam2);
                                 out.println("crd="+cd2);
                                 out.println("dud="+dd2);
                                 out.println("nm="+cnm2);
                                 out.println("bu="+bu3);
                                 out.println("da="+d1);*/
                                 
                                 
                             }
                             
                             
                            %>
                            <tr align="center">
                                <td colspan="2"><input type="submit" value="Pay" name="Pay" /></td>
                            </tr>
                           
                            </table>
                         
                </form>
		</div> <!-- end of main -->
                <div id="tooplate_main_bot"></div>
		
		
 
             </div>
        </div>
        
    </body>
</html>
