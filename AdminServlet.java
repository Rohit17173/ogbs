package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            // Check admin credentials (for simplicity, hardcoded here)
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                // Create a new session and set a session attribute to mark admin login
                HttpSession session = request.getSession();
                session.setAttribute("isAdminLoggedIn", true);

                // Redirect to the admin dashboard
                response.sendRedirect("adminDashboard.jsp");
            } else {
                // Set the error message and forward back to adminLogin.jsp
                request.setAttribute("errorMessage", "Invalid credentials. Please try again.");
                request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
            }
        } catch (Exception e) {
            // Handle the exception gracefully (e.g., log the error)
            e.printStackTrace();

            // Set the error message and forward back to adminLogin.jsp
            request.setAttribute("errorMessage", "An error occurred. Please try again later.");
            request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
        }
    }
}
