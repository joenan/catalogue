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
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>


        <script src="<c:url value="/resources/assets/js/core/jquery.min.js" />"></script>
        <script src="<c:url value="/resources/assets/js/core/popper.min.js" />"></script>
        <script src="<c:url value="/resources/assets/js/bootstrap-material-design.js" />"></script>
        <script src="<c:url value="/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js" />"></script>   
        <script src="<c:url value="/resources/assets/js/plugins/chartist.min.js" />"></script>   
        <script src="<c:url value="/resources/assets/js/plugins/arrive.min.js" />"></script>   
        <script src="<c:url value="/resources/assets/js/plugins/bootstrap-notify.js" />"></script>   
        <script src="<c:url value="/resources/assets/js/material-dashboard.js?v=2.0.0" />"></script>  
        <script src="<c:url value="/resources/assets/js/plugins/demo.js" />"></script>  


        <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>


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
            p {
                /*                display: flex;
                                justify-content: center;*/
                font-weight:bold;
            }

        </style>





    </head>

    <body class="">
        <div class="wrapper">

            <div class="sidebar" data-color="purple" data-background-color="white"
                 data-image="../assets/img/sidebar-1.jpg">

                <div class="logo">
                    <a href="http://www.creative-tim.com"
                       class="simple-text logo-normal"> CCBPAS </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">

                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/individual">
                                <i class="material-icons"></i>
                                <p>Individual Assessment</p>
                            </a>
                        </li>

                        <li class="nav-item"><a class="nav-link"
                                                href="${pageContext.request.contextPath}/admin">
                                <i class="material-icons"></i>
                                <p>Performance Assessment</p>
                            </a></li>

                        <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/admin/recommendations">
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

                    <form class="form-inline" method="get" action="${pageContext.request.contextPath}/admin/getrecommendation">
                        <div class="form-group mb-2" style="margin-left:20px;">
                            <label for="staticEmail2" class="sr-only">Email</label> <input
                                type="text" readonly class="form-control-plaintext"
                                id="staticEmail2" value="Select Recommendation ">
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="recommendation">
                                <option>Recruitment</option>
                                <option>Re-training</option>
                                <option>Redeployment</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary mb-2">Search Recommendation</button>
                    </form>

                    <div id="arrange">
                        <div id="chart_div"></div>

                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header card-header-primary">
                                            <h4 class="card-title ">Recommendation</h4>
                                            <p class="card-category">Recommended based on performance</p>
                                        </div>

                                        <div class="card-body">

                                            <div class="table-responsive">

                                                <c:if test="${!empty recruitment}">

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Average Score</th>

                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${recruitment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.average}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>

                                                <!--                                                    Beginning of Retraining -->

                                                <c:if test="${!empty behaviouralretraining}">

                                                    <p>Behavioural Skills Recommendation For Retraining</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Behavoural Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${behaviouralretraining}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.behaviouralrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty functionalretraining}">

                                                    <p>Functional Skills Recommendation For Retraining</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Functional Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${functionalretraining}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.functionalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>

                                                <c:if test="${!empty knowledgeretraining}">

                                                    <p>Knowledge Skills Recommendation For Retraining</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Knowledge Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${knowledgeretraining}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.knowledgerecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty professionalretraining}">

                                                    <p>Professional Skills Recommendation For Retraining</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Professional Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${professionalretraining}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.professionalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty technologicalretraining}">

                                                    <p>Technological Skills Recommendation For Retraining</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Technological Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${technologicalretraining}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.technologicalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <!--                                                    End of Retraining -->

                                                <!--                                                    Beginning of Redeployment -->

                                                <c:if test="${!empty behaviouralredeployment}">

                                                    <p>Behavioural Skills Recommendation For Redeployment</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Behavoural Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${behaviouralredeployment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.behaviouralrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty functionalredeployment}">

                                                    <p>Functional Skills Recommendation For Redeployment</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Functional Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${functionalredeployment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.functionalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>

                                                <c:if test="${!empty knowledgeredeployment}">

                                                    <p>Knowledge Skills Recommendation For Redeployment</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Knowledge Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${knowledgeredeployment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.knowledgerecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty professionalredeployment}">

                                                    <p>Professional Skills Recommendation For Redeployment</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Professional Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${professionalredeployment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.professionalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <c:if test="${!empty technologicalredeployment}">

                                                    <p>Technological Skills Recommendation For Redployment</p>

                                                    <table class="table">
                                                        <thead class="text-primary">
                                                        <th>User</th>
                                                        <th>Email</th>
                                                        <th>Phone</th>
                                                        <th>User Type</th>
                                                        <th>Institution</th>
                                                        <th>Technological Skills</th>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="k" items="${technologicalredeployment}">
                                                                <tr>
                                                                    <td>${k.name}</td>
                                                                    <td>${k.email}</td>
                                                                    <td>${k.phone}</td>
                                                                    <td>${k.usertype}</td>
                                                                    <td>${k.institution}</td>
                                                                    <td>${k.technologicalrecommendation}</td>

                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>


                                                <!--                                                    End of Redeployment -->

                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <div class="col-md-12"></div>

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
                        Gusen</a> for a better web. Email: nandomgusen@yahoo.com | Phone:
                    08060680061
                </div>
            </div>
        </footer>
        <div></div>
        <div></div>
    </body>



    <!--   Core JS Files   -->




</html>
