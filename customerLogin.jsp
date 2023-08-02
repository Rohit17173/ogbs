<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

    <!-- Include JSTL library -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
    
    <title>customer Login</title>
    <style>
        /* Your existing styles for the faint black theme */
        body {
            background-color: #1a1a1a;
            color: #999;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }

        /* Your existing styles for the navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a.right {
            float: right;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Style for the login form */
        .login-form {
            max-width: 300px;
            margin: 0 auto;
            padding: 20px;
            background-color: #333;
            border-radius: 5px;
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 0; /* Set margin on all sides to 0 */
            margin-bottom: 15px; /* Keep the bottom margin for spacing */
            background-color: #1a1a1a;
            border: none;
            color: #fff;
            border-radius: 5px;
        }

        .login-form input[type="submit"], input[type="button"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="adminlogin.jsp">ADMIN</a>
        <a href="customerlogin.jsp">CUSTOMER</a>
        <a href="about.jsp" class="right">About Us</a>
        <a href="services.jsp" class="right">Services</a>
    </div>
<br>
<h1>WELCOME</h1>
<br>
    <!-- Content -->
    <div class="login-form">
        <h2>customer Login</h2>
        <form action="admin" method="post">
         	<label for="email">Email:</label><br>
         	<input type="text" id="email" name="email" required><br>
        	<label for="password">Password:</label>
        	<br>
        	<input type="password" id="password" name="password" required>
        	<input type="submit" value="Login"><br>
        	<br>
        	<!-- Register button -->
            <input type="button" value="Register" onclick="location.href='customerRegistration.jsp';">
        </form>
            <!-- Display invalid credentials message -->
   		 <c:if test="${not empty errorMessage}">
      	  <script>
            Swal.fire({
                icon: 'error',
                title: 'Invalid Credentials',
                text: '${errorMessage}',
                showConfirmButton: false,
                timer: 2000
            });
      	  </script>
   		 </c:if>
    </div>
</body>
</html>

    
    
