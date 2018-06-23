<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta
            content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
            name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <!-- Favicons -->
        <link rel="icon" href="<c:url value="/resources/assets/img/apple-icon.png" />">
        <link rel="icon" href="<c:url value="/resources/assets/img/favicon.png" />">

        <title>CCBPAS</title>

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link href="<c:url value="/resources/assets/css/font-awesome.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/assets/css/material-dashboard.css?v=2.0.0" />" rel="stylesheet">
        <link href="<c:url value="/resources/assets/assets-for-demo/demo.css" />" rel="stylesheet">
    

        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <style>

            #arrange {
                display:flex;
            }


            #chart_div {

            }
            .container-fluid {

            }
            .text-primary {
                font-weight: bolder;
                font-size: 50px;
            }
            .card {
                width:105%;
            }

        </style>

        <script type="text/javascript">
            window.onload = function () {

                var dps = [[]];
                var chart = new CanvasJS.Chart("chartContainer", {
                    theme: "dark2", // "light1", "light2", "dark1"
                    animationEnabled: true,
                    title: {
                        text: "Assessment result for : ${entity.name}"
                    },
                    axisY: {
                        title: "Cataloguer Competency Based Performance Assessment",
                        //prefix: "$",
                        suffix: "%"
                    },
                    data: [{
                            type: "bar",
                            
                            indexLabel: "{y}",
                            dataPoints: dps[0]
                        }]
                });

                var yValue;
                var label;

            <c:forEach items="${dataPointsList}" var="dataPoints" varStatus="loop">
                <c:forEach items="${dataPoints}" var="dataPoint">
                yValue = parseFloat("${dataPoint.y}");
                label = "${dataPoint.label}";
                dps[parseInt("${loop.index}")].push({
                    label: label,
                    y: yValue
                });
                </c:forEach>
            </c:forEach>

                chart.render();

            }
        </script>


    </head>

    <body class="">
        <div class="wrapper">
            <div class="sidebar" data-color="purple" data-background-color="white"
                 data-image="../assets/img/sidebar-1.jpg">
                <!--
Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

Tip 2: you can also add an image using data-image tag
                -->
                <div class="logo">
                    <a href="http://www.creative-tim.com"
                       class="simple-text logo-normal"> CCBPAS </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">

                        <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/admin">
                                <i class="material-icons"></i>
                                <p>Performance Assessment</p>
                            </a>
                        </li>

                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/recommendations">
                                <i class="material-icons"></i>
                                <p>Recommendations</p>
                            </a>
                        </li>

                      

                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav
                    class="navbar navbar-expand-lg navbar-transparent  navbar-absolute fixed-top">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <a class="navbar-brand" href="#pablo"></a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navigation" aria-controls="navigation-index"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="sr-only">Toggle navigation</span> <span
                                class="navbar-toggler-icon icon-bar"></span> <span
                                class="navbar-toggler-icon icon-bar"></span> <span
                                class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end"
                             id="navigation">
                            <form class="navbar-form" action="">
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control"
                                           placeholder="Search...">
                                    <button type="submit"
                                            class="btn btn-white btn-round btn-just-icon">
                                        <i class="material-icons">search</i>

                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->

                <!-- End Navbar -->



                <div class="content">

                    <div id="arrange">
                        <div id="chart_div"></div>

                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header card-header-primary">
                                            <h4 class="card-title ">CATALOGUER COMPETENCY BASED PERFORMANCE ASSESSMENT</h4>
                                            <p class="card-category"></p>
                                        </div>

                                        <div class="card-body">

                                            <div class="table-responsive">

                                                
                                                ${chartContainer}
                                               
                                                
                                                <table class="table">
                                                    <thead class="text-primary">
                                                    <th>User</th>
                                                    <th>User Type</th>
                                                    <th>Institution</th>
                                                    <th>Behavioural Skills</th>
                                                    <th>Functional Skills</th>
                                                    <th>Knowledge Skills</th>
                                                    <th>Professional Skills</th>
                                                    <th>Technological Skills</th>
                                                    <th width="50">Display</th>

                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="k" items="${performance}">  
                                                            <tr>
                                                                <td>${k.name}</td>
                                                                <td>${k.usertype}</td>
                                                                <td>${k.institution}</td>
                                                                <td>${k.behaviouralcategoryscore}</td>
                                                                <td>${k.functionalcategoryscore}</td>
                                                                <td>${k.knowledgecategoryscore}</td>
                                                                <td>${k.professionalcategoryscore}</td>
                                                                <td>${k.technologicalcategoryscore}</td>
                                                                <td> <td><a href="<c:url value='/admin/performancechart/${k.id}'/>"><img height="30" width="30" src="<c:url value="/resources/images/search.png" />"/></a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <div class="col-md-12">


                                </div>

                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div></div>
        <div></div>
        <footer class="footer ">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy;
                    <script type="text/javascript">
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="https://www.creative-tim.com" target="_blank">Nandom
                        Gusen</a> for a better web. Email: nandomgusen@yahoo.com | Phone:08060680061
                </div>
            </div>
        </footer>
        <div></div>
        <div></div>
    </body>
    <!--   Core JS Files   -->
    <script src="<c:url value="/resources/assets/js/core/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/assets/js/core/popper.min.js" />"></script>
    <script src="<c:url value="/resources/assets/js/bootstrap-material-design.js" />"></script>
    <script src="<c:url value="/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js" />"></script>   
    <script src="<c:url value="/resources/assets/js/plugins/chartist.min.js" />"></script>   
    <script src="<c:url value="/resources/assets/js/plugins/arrive.min.js" />"></script>   
    <script src="<c:url value="/resources/assets/js/plugins/bootstrap-notify.js" />"></script>   
    <script src="<c:url value="/resources/assets/js/material-dashboard.js?v=2.0.0" />"></script>  
    <script src="<c:url value="/resources/assets/js/plugins/demo.js" />"></script>  


</html>
