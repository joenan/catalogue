<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <link href="<c:url value="/resources/bootv3/bootstrap.min.css" />" rel="stylesheet">
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
                width: 60%;
            }

            body {
                background-image: url("<c:url value="/resources/images/pic2.png" />");
                background-repeat: no-repeat;
                background-position: center center;
                background-attachment: fixed;
                background-size: cover;
            }
        </style>

    </head>
    <body>
        <div class="container">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">User Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        ${loginError}

                        <form action="${pageContext.request.contextPath}/login" method="get" id="loginform" class="form-horizontal" role="form">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="email" value="" placeholder="username or email">                                        
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                            </div>



                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                    </label>


                                </div>
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <input id="btn-login" type="submit" class="btn btn-success" value="Login">
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                        You do not have an account?  
                                        <a href="${pageContext.request.contextPath}/signup" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        |

                                    </div>
                                </div>
                                <CENTER style="margin-top:40px;">
                                    <a href="${pageContext.request.contextPath}/adminLogin" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                        Admin
                                    </a>
                                </CENTER>
                            </div>    
                        </form>     

                    </div>                     
                </div>  
            </div>

        </div>
    </body>
</html>