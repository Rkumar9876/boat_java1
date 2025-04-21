import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Your DB credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ earbudshub";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String emailOrPhone = request.getParameter("emailOrPhone");
        String password = request.getParameter("password");

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Query to check login
            String sql = "SELECT * FROM user_register WHERE email_or_phone=? AND password=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, emailOrPhone);
            pst.setString(2, password);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                // Login success
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("full_name"));

                response.sendRedirect("home.jsp");
            } else {
                // Login failed
                out.println("<script>alert('Invalid email/phone or password!'); window.location='Login.jsp';</script>");
            }

            conn.close();
        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='Login.jsp';</script>");
        }
    }
}
