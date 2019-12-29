<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Employee</title>
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
    <h2>Create Employee</h2>
    <form action="saveEmployee" method="post" style="text-align: center;">

    <pre>

          Id:<input type="text" name="id">

        Name:<input type="text" name="name">

        Start Time:<input type="text" name="start_time">


        position: Management:<input type="radio" name="position" value="Management">
                Associate:<input type="radio" name="position" value="Associate">
               Driver:<input type="radio" name="position" value="Driver">

        Shift: Morning:<input type="radio" name="shift" value="Morning">
           Mid:<input type="radio" name="shift" value="Mid">
             Night:<input type="radio" name="shift" value="Night">

        <input type="submit" value="save">
    </pre>

    </form>
    <br>
    ${msg}
    <br>
    <a href="displayEmployees">View All</a>

</div>

</body>
</html>