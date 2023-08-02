<!DOCTYPE html>
<html>
<head>
    <title>Gas Booking System</title>
    <style>
        body {
            background-color: #1a1a1a;
            color: #999;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }

        h1 {
            color: #fff;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            color: #0056b3;
        }
        
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

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        
        .navbar a.right {
            float: right;
        }
    </style>
</head>
<body>

	<!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="adminlogin.jsp">ADMIN</a>
        <a href="customerLogin.jsp">CUSTOMER</a>
        <a href="index.jsp">EMPLOYE</a>
        <a href="about.jsp" class="right">About Us</a>
        <a href="services.jsp" class="right">Services</a>
    </div>

    <h1>Welcome to Gas Booking System</h1>
    <p>Log in to book your gas cylinder online.</p>
    <a href="login.jsp">Login</a>
</body>
</html>
