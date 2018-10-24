<%@page import="com.nandom.app.entities.Userprofile"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : existingusersdashboard
    Created on : 23-Oct-2018, 18:49:41
    Author     : Nandom Gusen
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Existing Cataloguers</title>
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
            #arrangediv {
                margin-top: 10%;
            }

        </style>


    </head>
    <body>

        <div id="arrangediv">

        </div>

<!--        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
            <center>Existing Cataloguers Dashboard</center>
        </nav>-->

    <center>

        <div class="row" style="margin-left:20%;">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Daily Register</h5>
                        <p class="card-text">Enter here to register your daily activities.</p>
                        <a href="${pageContext.request.contextPath}/activitylog" class="btn btn-primary">Proceed</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Assessment Area</h5>
                        <p class="card-text">Enter here to take the assessment as an existing cataloguer </p>
                        <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary">Proceed</a>
                    </div>
                </div>
            </div>
        </div>
    </center>

</body>
</html>
