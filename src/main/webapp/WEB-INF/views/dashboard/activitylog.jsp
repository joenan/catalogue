<%@page import="com.nandom.app.entities.Userprofile"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Activity Register</title>

        <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

    </head>
    <body>

        <fieldset>

            <legend>
                <center>Cataloguers Activity Registry</center>

            </legend>

        </fieldset>


        <form method="post" action="${pageContext.request.contextPath}/saveActivity">
            <table class="table table-bordered">

                <thead>
                    <tr>

                        <th scope="col">
                            <div class="form-group">
                                <label for="exampleFormControlSelect1">Activity</label>
                                <select name="type" class="form-control" id="exampleFormControlSelect1">
                                    <option>Cataloguing</option>
                                    <option>Classification</option>
                                    <option>Indexing</option>
                                    <option>Abstracting</option>
                                    <option>Subject Analysis</option>
                                </select>
                            </div>

                        </th>
                        <th scope="col">
                            <label for="exampleFormControlSelect1">No of Materials</label>
                            <div class="form-group">
                                <input class="form-control" name="activity" type="text" placeholder="No of Materials">
                            </div>
                        </th>
                        <th scope="col">
                            <button type="submit" class="btn btn-primary mb-2">Save Activity</button>
                        </th>


                        <th scope="col">

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

                            <a href="${pageContext.request.contextPath}/logout">
                                <div class="form-row align-items-center">
                                    <div class="col-auto">
                                        <button type="button" class="btn btn-primary mb-2">Logout</button>
                                    </div>
                                </div>
                            </a>


                        </th>
                    </tr>

                </thead>

            </table>
        </form>


        <table class="table table-bordered">
            <center class="center"> </center>
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Serial No</th>
                    <th scope="col">Registry Type</th>
                    <th scope="col">No of Materials</th>
                    <th scope="col">Delete</th>
                </tr>

            </thead>
            <tbody>

                <c:forEach items="${listOfRegistries}" var="logs">
                    <tr>
                        <th scope="row">${logs.profileid}</th>
                        <td>${logs.description}</td>
                        <td>${logs.numberofmaterials}</td>
                        <td><a href="<c:url value='/deleteactivity/${logs.profileid}'/>"><img src="<c:url value="/resources/images/delete.png" />"/></a></td>
                    </tr>
                </c:forEach>


            </tbody>
        </table>

    </body>
</html>