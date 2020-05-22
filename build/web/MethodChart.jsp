<%-- 
    Document   : MethodChart
    Created on : May 21, 2020, 2:08:07 AM
    Author     : Ravi
--%>
<%@page import="com.itpm.model.MethodDTO"%>
<%@page import="com.itpm.controller.MethodController"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <style>
       
/*div.container {


  float: left;
 
}*/
    </style>    
         <link rel="stylesheet" href="css/styl2.css"  >
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
           <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--<mata name="viewport" content="width=device-width, initial-scale=1.0">
        --%> 
          <title>JSP Page</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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
      <div class="logo">Methods</div>
      <div class="logo">
    </div>
    </div>
  </div>
            
        
         <%
                    int WMRT=0;
                    int Npdtp=0;
                    int Ncdtp=0;
                    
             
                     MethodController method = new MethodController();
                     String filename = session.getAttribute("filename").toString();
                     ArrayList<MethodDTO> methodList = method.measureMethod(filename);
                     for (MethodDTO m : methodList) {
                          WMRT = WMRT + m.getWMRT();
                          Npdtp = Npdtp + m.getNpdtp();
                          Ncdtp = Ncdtp + m.getNcdtp();
                         }

         %>
                 
         <br>
         <br>
         <h6> File Name : <%=filename%> </h6>
         <br>
               <div class="container" style="height: 100px; width: 60%;">
            <canvas id="myChart"></canvas>
             
        </div>
         
            <br>
         <br>
         <br>
           
            
        </div>
         
        <script>
            let myChart = document.getElementById('myChart').getContext('2d');
            //GLobaL Options
            Chart.defaults.global.defaulFontFamily = 'Lato',
            Chart.defaults.global.defaulFontSize = 18;
            Chart.defaults.global.defaulFontColor = '#777';
            let massPopChart = new Chart(myChart, {
                type:'horizontalBar',//bar,horizontalBar,pie,Line,doughnut,
                data:{ 
                    labels:['WMRT', 'Npdtp', 'Ncdtp'],
                    datasets:[{
                            label:'Compatity',
                            data:[
                            "<%=WMRT%>",
                            "<%=Npdtp%>",
                            "<%=Ncdtp%>"
                           
                            ],
                            //backgroundColor:'green',
                            backgroundColor:[
                                'rgba(54, 162, 235, 0.6)',
                                'rgba(255, 99, 132, 0.6)',
                                'rgba(255, 206, 86, 0.6)'
                               
                            ],
                            borderWidth:4,
                            borderColor:'#777',
                            hoverBorderWidith:3,
                            hoverBordeColor:'#000'
                    }]
                },
                options:{
                
                 
                    legend:{
                        display:true,
                        position:'right',
                        labels:{
                            forntColor:'#000'
                        }
                    },
                    layout:{
                        padding:{
                            left:50,
                            right:0,
                            bottom:0,
                            top:0
                    }
                },
                tooltips:{
                    enabled:true
                    
                        
                    }
                }
            });
        
        </script>
        
        
        
        
        
        
    </body>
</html>
