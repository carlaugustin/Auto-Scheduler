<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Schedule</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/css/style.css">
    <link rel="script" href="<%= request.getContextPath()%>/resources/script/animation.js">
</head>

<body style="background: linear-gradient(311deg, #cc2b5e 0%, #753a88 50%, #2193b0 50%)" ;>

<div class="topnav" id="myTopnav">
    <a href="home" class="active">Home</a>
    <a href="showEmployee">Add Employee</a>
    <a href="displayEmployees">View Employees</a>
    <a href="schedule">Generate Schedule</a>
    <input type="text" placeholder="Search..">
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a>
</div>

<div style="margin:0px auto; margin-top: 10%; width: 60%;  text-align:center; background-color: #e1e8f0; box-shadow: 10px 10px 8px 10px rgba(54,56,58,0.8); ">

    <h2>Schedule</h2>
    <table style="margin:0px auto;  text-align:center;">
        <tr>
            <th>name</th>
            <th></th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
            <th>Saturday</th>
            <th>Sunday</th>
        </tr>

        <c:forEach items="${employees}" var="employee">
            <tr></tr>
            <tr>
                <td>${employee.name}</td>
                <td></td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>
                <td>${employee.start_time}</td>

            </tr>
        </c:forEach>
    </table>

    <br>

</div>
<br>
<br>
</body>
</html>