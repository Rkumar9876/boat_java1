import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String fullName = request.getParameter("fullName");
        String emailOrPhone = request.getParameter("emailOrPhone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            out.println("<script>alert('Passwords do not match!'); window.location='Register.jsp';</script>");
            return;
        }

        try {
            // DB connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/earbudshub", "root", "");

            // Insert user data
            String sql = "INSERT INTO user_register (full_name, email_or_phone, password) VALUES (?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, fullName);
            pst.setString(2, emailOrPhone);
            pst.setString(3, password);

            int result = pst.executeUpdate();

            if (result > 0) {
                out.println("<script>alert('Registration Successful!'); window.location='login.jsp';</script>");
            } else {
                out.println("<script>alert('Registration Failed. Try Again.'); window.location='Register.jsp';</script>");
            }

            conn.close();
        } catch (Exception e) {
            out.println("<script>alert('Error: " + e.getMessage() + "'); window.location='Register.jsp';</script>");
        }
    }
}
