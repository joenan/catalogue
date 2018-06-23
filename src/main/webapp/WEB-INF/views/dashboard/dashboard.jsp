<%@page import="com.nandom.app.entities.Userprofile"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>User Dashboard</title>

        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-grid.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-grid.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-reboot.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/css/bootstrap-reboot.min.css" />" rel="stylesheet">

        <script src="<c:url value="/resources/js/bootstrap.bundle.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

        <style>
            .table {
                width:70%;

                top: 0; bottom:0; left: 0; right:0;
                margin: auto;

                width: 70%;


            }
            #section{
                border: 1px solid #ddd;
            }
            #space{
                margin:10px;
                height:30px;
            }
            .table .table-stripped {

            }
            h3 {
                font-size: 25px;
                padding:10px; 

            }
            .logininfo {
                float:right;
                margin-top:-34px;
            }
            .status {
                color:crimson;
                font-size: 20px;
            }
            .center {
                width: 70%;
            }

        </style>

        <script>
            $("#success-alert").fadeTo(1000, 500).slideUp(500, function () {
                $("#success-alert").alert('close');
            });
        </script>

    </head>
    <body>
        <fieldset>
            <h4><center>Cataloguer Competency Based Performance Assessment</center></h4>
            <h6 class="logininfo">Logged in as: 
                <bold>
                    <a href="${pageContext.request.contextPath}/logout" alt="Logout">
                        <%
                            if (session != null) {
                                if (session.getAttribute("user") != null) {
                                    Userprofile user = (Userprofile) session.getAttribute("user");
                                    out.print("" + user.getName() + " ");
                                } else {
                                    response.sendRedirect("index/loginform");
                                }
                            }
                        %>
                    </a>
                </bold>


            </h6>
            <center>
                <div class="center">${status}</div>
            </center>
            <div id="section">
                <table class="table table-bordered">
                    <center><h3>Knowledge Base Assessment</h3></center>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Serial No</th>
                            <th scope="col">Assessment Type</th>
                            <th scope="col">Time Allowed</th>
                            <th scope="col">Attempt</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Knowledge Skills</td>
                            <td>18mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/knowledgeskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Indexing Skills</td>
                        <td>18mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/indexingskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Classification Skills</td>
                        <td>10mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/classificationskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>Cataloguing</td>
                        <td>20mins</td> 
                    <form method="get" action="${pageContext.request.contextPath}/cataloguingskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tbody>
                </table>
                </section>

                <table class="table table-bordered">
                    <center class="center"><h3>Behavioural Skills</h3></center>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Serial No</th>
                            <th scope="col">Assessment Type</th>
                            <th scope="col">Time Allowed</th>
                            <th scope="col">Attempt</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">4</th>
                            <td>Leadership</td>
                            <td>18mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/leadershipskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Communication</td>
                        <td>10mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/communicationskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">1</th>
                        <td>Team Work</td>
                        <td>20mins</td> 
                    <form method="get" action="${pageContext.request.contextPath}/teamwork"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tbody>
                </table>

                <table class="table table-bordered">
                    <center class="center"><h3>Functional Skills</h3></center>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Serial No</th>
                            <th scope="col">Assessment Type</th>
                            <th scope="col">Time Allowed</th>
                            <th scope="col">Attempt</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">4</th>
                            <td>Problem Solving</td>
                            <td>18mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/problemsolving"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Consistency and Adaptability</td>
                        <td>10mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/competencyandadaptabilityskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    <tr>
                        <th scope="row">1</th>
                        <td>Judgement</td>
                        <td>20mins</td> 
                    <form method="get" action="${pageContext.request.contextPath}/judgementskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tbody>
                </table>

                <table class="table table-bordered">
                    <center class="center"><h3>Professional Skills</h3></center>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Serial No</th>
                            <th scope="col">Assessment Type</th>
                            <th scope="col">Time Allowed</th>
                            <th scope="col">Attempt</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">3</th>
                            <td>Subject Analysis</td>
                            <td>10mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/professionalskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>

                    </tbody>
                </table>

                <table class="table table-bordered">
                    <center class="center"><h3>Technological Skills</h3></center>
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Serial No</th>
                            <th scope="col">Assessment Type</th>
                            <th scope="col">Time Allowed</th>
                            <th scope="col">Attempt</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">3</th>
                            <td>TECHNOLOGICAL SKILLS</td>
                            <td>10mins</td>
                    <form method="get" action="${pageContext.request.contextPath}/technologicalskills"><td><button type="submit" class="btn btn-primary">Start</button></td></form>
                    </tr>
                    </tbody>
                </table>

            </div>






        </fieldset>
        <div id="space">

        </div>


    </body>
</html>