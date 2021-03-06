

<%@page import="com.itpm.model.ControlSDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.ControlSController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control Structures</title>
        
    <link rel="stylesheet" href="css/styl2.css"  >
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
       
         <body style="background: #e1ecf2;">
        <div class="wrapper">
  <div class="top_navbar">
       <div class="hamburger">
       <div class="one"></div>
       <div class="two"></div>
       <div class="three"></div>
    </div>
    <div class="top_menu">
        
      <div class="logo">CodeME </div>
      <div class="logo">Control Structure</div>
        <div class="logo"><button onclick="window.location.href = 'ControlStructureSettings.jsp';">Setting</button>
    </div>
    </div>
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
                                                <th scope="col">Line no</th>
                                                <th scope="col">Program statements</th>
                                                <th scope="col">Wtcs</th>
                                                <th scope="col">NC</th>
                                                <th scope="col">Ccspps</th>
                                                <th scope="col">Ccs</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                ControlSController cs = new ControlSController();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<ControlSDTO> controlList = cs.measureControlS(filename);
                                                int lineNo = 0;
                                                int a = 0;
                                                for (ControlSDTO s : controlList) {
                                                    lineNo++;
                                                    a=a+s.getCcspps();
                                            %>
                                            <tr>
                                                <th scope="row"><%=lineNo%></th>
                                                <td><%=s.getCodeLine()%></td>
                                                <td><%=s.getWtcs() != 0 ? s.getWtcs() : ""%></td>
                                                <td><%=s.getNC() != 0 ? s.getNC() : ""%></td>
                                                <td><%=s.getCcspps() != 0 ? s.getCcspps() : ""%></td>
                                                <td><%=s.getCcs() != 0 ? s.getCcs() : "0"%></td>
                                                 <%
                                                }
                                            %>
<!--                                            <td><%=a%></td>-->
                                            </tr>

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
