<%-- 
    Document   : variable
    Created on : MARCH 30, 2020, 2:47:07 AM
    Author     : hmrkr
--%>

<%@page import="com.itpm.controller.SizeVMController1"%>
<%@page import="com.itpm.controller.SizeVMController11"%>
<%@page import="com.itpm.model.InheritanceDTO"%>
<%@page import="com.itpm.controller.InheritanceController"%>
<%@page import="com.itpm.model.SizeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.SizeVMController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display All</title>
        
        <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        
        <div class="wrapper">
            <div class="container-fluid">
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10 align-items-center">
                            <a href="index.jsp"><center><h4 class="p-3 mb-2 bg-info text-white">CODE COMPLEXITY MEASURING TOOL</h4></center></a>
                        </div>

                    </div>
                    <!-- end row -->
<!--                </div>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Code here</label>
                            <textarea class="form-control rounded-0" id="txtcode" rows="12"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row" >
                    <div class="col-md-9"> </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-primary">Measure</button>
                    </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-secondary">Clear</button><br>
                    </div>
                </div>-->
                <br>

                <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-10">
                        <div class="card">
                            <div class="card-heading p-2"><h4>Display the all factors</h4></div>
                            <div class="card-body">
                                <div class="table-responsive-sm">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Cs</th>
                                                <th scope="col">Cv</th>
                                                <th scope="col">Cm</th>
                                                <th scope="col">Ci</th>
                                                <th scope="col">Ccp</th>
                                                <th scope="col">Ccs</th>
                                                <th scope="col">TCps</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                              <%
                                                SizeVMController svmc11 = new SizeVMController();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<SizeDTO> variableList = svmc11.measureSize(filename);
                                                int lineNo = 0;
                                                for (SizeDTO s : variableList) {
                                                    lineNo++;
                                            %>
                                            
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=s.getCodeLine()%></td>
                                                   <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                 <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                               <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                 <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                 <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                 <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                <td><%=s.getCs() != 0 ? s.getCs() : ""%></td>
                                                 
                                               
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
            </div>
        </div>
        
    </body>
</html>
