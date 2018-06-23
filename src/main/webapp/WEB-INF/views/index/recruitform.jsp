<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <link href="<c:url value="/resources/bootv3/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/bootv3/bootstrap-datepicker3.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/bootv3/bootstrap-datepicker.min.js" />"></script>
        <script src="<c:url value="/resources/bootv3/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/bootstrap/js/jquery.min.js" />"></script>
        <title>CCBPAS Login</title>

        <style>
            .container {
                position: absolute;
                left: 50%;
                top: 50%;
                -webkit-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
            }

            body {
                background-image: url("<c:url value="/resources/images/pic2.png" />");
                background-repeat: no-repeat;
                background-position: center center;
                background-attachment: fixed;
                background-size: cover;
            }
        </style>

        <script type="text/javascript">
            $("#dob").datepicker({
                format: 'yyyy-mm-dd',
                autoclose: true
            });
        </script>

        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });

            $().alert('close')
        </script>

    </head>
    <body>
        <div class="container">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign up</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form:form method="post" action="${pageContext.request.contextPath}/saveSignup" modelAttribute="user" id="loginform" class="form-horizontal" role="form">


                            ${outputMessage}

                            <div class="input-group">

                                <label style="margin-left:10px;">
                                    <form:radiobutton id="usertype" path="usertype" value="Potential Recruit"/> Signup as Potential Recruit
                                </label>

                                <label style="margin-left:20px;">
                                    <form:radiobutton id="usertype" path="usertype" value="Existing Cataloguer"/> Signup as Existing Cataloguer
                                </label>


                            </div>


                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <form:input class="form-control" placeholder="Enter your Full Name" path="name" type="text" required=""/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Enter Email" path="email" type="email" required="" class="form-control"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Enter Phone" path="phone" type="text" required="" maxlength="11" class="form-control"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">

                                <span class="input-group-addon">
                                    <label class="control-label" for="date">Date of birth</label>
                                    <i class="glyphicon glyphicon-lock"></i></span>

                                <form:input placeholder="MM/DD/YYY" path="dob" type="text" required="" class="form-control" id="dob"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Name of Institution" path="institution" type="text" required="" class="form-control"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Years of experience (cataloguing)" path="yearsofexperience" type="text" required="" class="form-control"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Roles & Responsibilities" path="rolesandresponsibilities" type="text" required="" class="form-control"/>
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <form:input placeholder="Enter Password" path="password" type="password" required="" class="form-control"/>
                            </div>








                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <input id="btn-login" type="submit" class="btn btn-success" value="Sign Up">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        You already have an account?  
                                        <a href="${pageContext.request.contextPath}/" onClick="$('#loginbox').hide();
                                                        $('#signupbox').show()">
                                            Click here to Login
                                        </a>
                                    </div>
                                </div>
                            </div>    
                        </form:form>



                    </div>                     
                </div>  
            </div>

        </div>
    </body>
</html>