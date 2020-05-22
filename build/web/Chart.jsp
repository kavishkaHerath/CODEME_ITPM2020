<%-- 
    Document   : TotalChart
    Created on : May 15, 2020, 11:35:10 PM
    Author     : IT18153750  Herath H.M.R.K.R
--%>
<%@page import="com.itpm.controller.Total"%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.itpm.controller.SizeController"%>
<%@page import="com.itpm.model.SizeDTO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <style>
       
/*div.container {


  float: left;
 
}*/
    </style>   
       <link rel="stylesheet" href="css/button.css"  >
         <link rel="stylesheet" href="css/styl2.css"  >
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        
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
      <div class="logo">Chart </div>
      <div class="logo">
    </div>
    </div>
  </div>
            
        
         <%
                Total total = new Total();
                                                String filename = session.getAttribute("filename").toString();
                                                ArrayList<Integer> sizeList1 = total.measureTotal(filename).getLineNo();
                                                ArrayList<Integer> sizeList = total.measureTotal(filename).getFCs();
                                                ArrayList<String> sizeList2 = total.measureTotal(filename).getCodeLine();
                                                ArrayList<Integer> veribleList=total.measureTotal(filename).getFCv();
                                                ArrayList<Integer> methodList = total.measureTotal(filename).getFCm();
                                                ArrayList<Integer> inherList = total.measureTotal(filename).getFCi();
                                                ArrayList<Integer> contList = total.measureTotal(filename).getFCCs();
                                                ArrayList<Integer> cuptList = total.measureTotal(filename).getFCcp();
                                                
                                                int lineNo = 0;
                                            
                                                for(Integer j:sizeList1){
                                                    lineNo++;
                                                  
                                                }
                                                int TotalCs = 0;
                                                int TotalCv = 0;
                                                int TotalCm = 0;
                                                int TotalCi = 0;
                                                int TotalCCs= 0;
                                                int TotalCcp = 0;
                                                
                                               
                                                
                                                 for (int i=0;i < lineNo;i++) {
                                                  TotalCs = TotalCs + sizeList.get(i);
                                                  TotalCv = TotalCv + veribleList.get(i);
                                                  TotalCm = TotalCm + methodList.get(i);
                                                  TotalCi = TotalCi + inherList.get(i);
                                                  TotalCCs = TotalCCs + contList.get(i);
                                                  TotalCcp = TotalCcp + cuptList.get(i);
                                                 }
                %>
                 
         <br>
         <br>
         <br>
               <div class="container" style="height: 100px; width: 70%;">
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
                type:'pie',//bar,horizontalBar,pie,Line,doughnut,
                data:{ 
                    labels:['CS', 'CV', 'CM','Ci','Ccp','Ccs'],
                    datasets:[{
                            label:'Compatity',
                            data:[
                            "<%=TotalCs%>",
                            "<%=TotalCv%>",
                            "<%=TotalCm%>",
                            "<%=TotalCi%>",
                            "<%=TotalCcp%>",
                            "<%=TotalCCs%>"
                            ],
                            //backgroundColor:'green',
                            backgroundColor:[
                                'rgba(255, 99, 132, 0.6)',
                                'rgba(20, 208, 114, 0.91)',
                                'rgba(54, 162, 235, 0.6)',
                                'rgba(255, 206, 86, 0.6)',
                                'rgba(196, 242, 150)',
                                'rgba(198, 142, 255)'
                                
                            ],
                            borderWidth:4,
                            borderColor:'#777',
                            hoverBorderWidith:3,
                            hoverBordeColor:'#000'
                    }]
                },
                options:{
                title:{
                        display:true,
                        text:"<%=filename%>",
                        fontSize:15
                    },
                 
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
