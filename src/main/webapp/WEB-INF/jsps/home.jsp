<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Auto Scheduler</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/css/style.css">
    <script rel="script" src="<%= request.getContextPath()%>/resources/script/animation.js"></script>

</head>


<body style="background: linear-gradient(311deg, #cc2b5e 0%, #753a88 50%, #2193b0 50%)" ;>

<div class="topnav" id="myTopnav">
    <a href="home" class="active">Home</a>
    <a href="showEmployee">Add Employee</a>
    <a href="updateEmployee">Update Employee</a>
    <a href="displayEmployees">View Employees</a>
    <a href="schedule">Generate Schedule</a>
    <form class="searchBox" action="employees">
        <input type="text" name="name" onchange="" on placeholder="Search..">
    </form>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a>
</div>

<br>
<br>

<div style="margin:0px auto; margin-top:2%; width: 90%;  text-align:center; overflow-x: hidden; background-color: #e1e8f0; box-shadow: 10px 10px 8px 10px rgba(54,56,58,0.8); ">
    <h2>Employees</h2>
    <c:forEach items="${employees}" var="employee">
        <div class="box">
            <img src="https://robohash.org/${employee.id}" width="200" height="200"/>

            <div>
                <h2>${employee.name}</h2>
                <p>${employee.position}</p>
                <p>${employee.shift}</p>

                <a href="deleteEmployeeAdmin?id=${employee.id}">Delete</a>

                <a href="showUpdate?id=${employee.id}">Edit</a>
                <br>
            </div>
        </div>
    </c:forEach>
    <br>
    <br>
</div>

<br>
<br>
</body>
</html>