<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <!-- Your CSS styles for the dashboard page -->
    <style>
        body {
            background-color: #f1f1f1;
            color: #333;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
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

        .navbar a.right {
            float: right;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Your custom styles for the dashboard content */
        .dashboard-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
	<%-- Check if the user is logged in as admin --%>
    <%@ page import="javax.servlet.http.HttpSession" %>
    <% if (session != null && session.getAttribute("isAdminLoggedIn") != null && (boolean) session.getAttribute("isAdminLoggedIn")) { %>
    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp" class="right">About Us</a>
        <a href="services.jsp" class="right">Services</a>
        
    </div>
<br>
<h2>DASHBOARD</h2>
<br>
    <!-- Dashboard Content -->
    <div class="dashboard-content">
        <h1>Welcome, Admin!</h1>
        <p>This is the admin dashboard. You can manage various aspects of the gas booking system here.</p>
        <!-- Add your admin-specific functionalities here -->
    </div>
    <br>
    <br>
    <a href="adminLogout">Logout</a>
     <% } else { %>
        <%-- Redirect to login page if not logged in as admin --%>
        <% response.sendRedirect("adminlogin.jsp"); %>
    <% } %>
</body>
</html>
    
