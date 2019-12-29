<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Employee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/resources/css/style.css">
    <link rel="script" href="<%= request.getContextPath()%>/resources/script/animation.js">
</head>
<body style="background-color:  #2193b0" ;>

<div class="topnav" id="myTopnav">
    <a href="home" class="active">Home</a>
    <a href="showEmployee">Add Employee</a>
    <a href="displayEmployees">View Employees</a>
    <a href="schedule">Generate Schedule</a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a>
</div>

<div style="margin:0px auto; margin-top: 10%; width: 60%;  text-align:center; box-shadow: 10px 10px 8px 10px rgba(54,56,58,0.8); background: linear-gradient(311deg, #cc2b5e 0%, #753a88 50%, #2193b0 50%)"
     ;>
    <h2>Update Location</h2>
    <form action="updateEmployee" method="post" style="text-align: center;">

    <pre>

          Id:<input type="text" name="id" value="${employee.id}" readonly/>

        Name:<input type="text" name="name" value="${employee.name}"/>

        Start Time:<input type="text" name="start_time">

        position: Management:<input type="radio" name="position"
                                    value="Management" ${employee.position=='Management'? 'checked':''} >
                Associate:<input type="radio" name="position"
                                 value="Associate" ${employee.position=='Associate'? 'checked':''}>
               Driver:<input type="radio" name="position" value="Driver" ${employee.position=='Driver'? 'checked':''}>

        Shift: Morning:<input type="radio" name="shift" value="Morning" ${employee.shift=='Morning'? 'checked':''}>
           Mid:<input type="radio" name="shift" value="Mid"${employee.shift=='Mid'? 'checked':''}>
             Night:<input type="radio" name="shift" value="Night"${employee.shift=='Night'? 'checked':''}>

        <input type="submit" value="save"/>

    </pre>

    </form>

    <a href="displayEmployees">Go Back</a>
</div>
<br>
<br>
</body>
</html>