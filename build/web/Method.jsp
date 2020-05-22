<%-- 
    Document   : sizevariable
    Created on : Feb 21, 2020, 3:28:38 PM
    Author     : IT18153750  Herath H.M.R.K.R
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.model.MethodDTO"%>
<%@page import="com.itpm.controller.MethodController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Size variable</title>
        <link rel="stylesheet" href="css/styl2.css"  >
           <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



    </head>
    <body style="background: #e1ecf2;">
        <div class="wrapper">
  <div class="top_navbar">
       <div class="hamburger" onclick="window.location.href = 'index.jsp';">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
        
      <div class="logo">CodeME </div>
      <div class="logo"> Methods </div>
      <div class="logo"><button onclick="';">Setting</button>
    </div>
    </div>
  </div>
            <br>
                
                  <div>    
                                        <p>
                                            
                                            <button class="buttonn" onclick="window.location.href = 'MethodChart.jsp';">Method Chart</button>

                                         </p>
                                            </div>

        <div class="wrapper">
            <div class="container-fluid">
            
                <br>

              

                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Line No</th>
                                                <th>Program Statements</th>
                                                <th>WMRT</th>
                                                <th>Npdtp</th>
                                                <th>Ncdtp</th>
                                                <th>Cm</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                MethodController method = new MethodController();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<MethodDTO> sizeList = method.measureMethod(filename);
                                                int lineNo = 0;
                                                int a=0;
                                                for (MethodDTO m : sizeList) {
                                                    lineNo++;
                                                    a=a+m.getCm();
                                            %>
                                            
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=m.getCodeLine()%></td>
                                                <td><%=m.getWMRT() != 0 ? m.getWMRT() : ""%></td>
                                                <td><%=m.getNpdtp() != 0 ? m.getNpdtp() : ""%></td>
                                                <td><%=m.getNcdtp() != 0 ? m.getNcdtp() : ""%></td>
                                                <td><%=m.getCm()%></td>
                                                
                                            </tr>

                                            <%
                                                }
                                            %>


                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>


                    </div> 
                    <div class="col-md-1"></div> 
                </div>
                  <br>
                 <div class="row">
                    <div class="col-md-1"></div> 
                        <div class="col-md-10">
                            <div class="card">
                                <div class="card-body"><b>
                                    File Name : <%=filename%>
                                    <br>
                                    Total Cm : <%=a%>
                                    
                                    </b> 
                                </div></div></div></div>


               


            </div>
        </div>
    </body>
</html>
