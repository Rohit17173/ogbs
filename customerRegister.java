package customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customerRegister")
public class customerRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ogbs", "root", "redhat123");
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO customer (fName, lName, contact, email, password) VALUES (?, ?, ?, ?, ?)");
            pstmt.setString(1, fName);
            pstmt.setString(2, lName);
            pstmt.setString(3, contact);
            pstmt.setString(4, email);
            pstmt.setString(5, password);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();

            request.setAttribute("successMessage", "Registered Successfully");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}


