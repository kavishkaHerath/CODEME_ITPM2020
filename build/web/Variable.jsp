<%-- 
    Document   : sizevariable
    Created on : Feb 21, 2020, 3:28:38 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.model.VeriableDTO"%>
<%@page import="com.itpm.controller.VeriableConrtoller"%>
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
      <div class="logo"> Variable  </div>
      <div class="logo"><button onclick="window.location.href = 'VeribleSetting.jsp';">Setting</button>
    </div>
    </div>
  </div>
            <br>
     <div>    
                                        <p>
                                            
                                            <button class="buttonn" onclick="window.location.href = 'VeriableChart.jsp';">veriable Chart</button>

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
                                                <th>Wvs</th>  
                                                <th>Npdtv</th>
                                                <th>Ncdtv</th>
                                                <th>Cv</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                VeriableConrtoller veriable = new VeriableConrtoller();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<VeriableDTO> VariableList = veriable.measurevariable(filename);
                                                int lineNo = 0;
                                                int a=0;
                                                for (VeriableDTO s : VariableList) {
                                                    lineNo++;
                                                    a=a+s.getCv();
                                                    
                                            %>
                                            
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=s.getCodeLine()%></td>
                                                <td><%=s.getWvs() != 0 ? s.getWvs(): ""%></td>
                                                <td><%=s.getNpdtv() != 0 ? s.getNpdtv() : ""%></td>
                                                <td><%=s.getNcdtv() != 0 ? s.getNcdtv() : ""%></td>
                                                <td><%=s.getCv()%></td>
                                                
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
                                    Total Cv : <%=a%>
                                    
                                    </b> 
                                </div></div></div></div>



               


            </div>
        </div>
    </body>
</html>
