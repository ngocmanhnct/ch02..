package murach.email;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import murach.business.User;
import murach.data.UserDB;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // SỬA LỖI TẠI ĐÂY: Đổi thành index.jsp
        String url = "/index.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp";    // SỬA LỖI TẠI ĐÂY: Đổi thành index.jsp
        } 
        else if (action.equals("add")) {
            // ... (Phần code xử lý lấy dữ liệu giữ nguyên như cũ) ...
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            
            // Lấy dữ liệu mới
            String dateOfBirth = request.getParameter("dateOfBirth");
            String referralSource = request.getParameter("referral_source");
            String contactMethod = request.getParameter("contact_method");
            String likeThatParam = request.getParameter("like_that");
            String emailAnnouncementsParam = request.getParameter("email_announcements");
            
            String likeThat = (likeThatParam != null) ? "Yes" : "No";
            String emailAnnouncements = (emailAnnouncementsParam != null) ? "Yes" : "No";

            User user = new User(firstName, lastName, email);

            String message;
            if (firstName == null || lastName == null || email == null ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                
                message = "Please fill out all three text boxes.";
                url = "/index.jsp"; // SỬA LỖI TẠI ĐÂY: Đổi thành index.jsp
            } 
            else {
                message = "";
                UserDB.insert(user);
                url = "/thanks.jsp";
            }
            
            request.setAttribute("user", user);
            request.setAttribute("message", message);
            request.setAttribute("dateOfBirth", dateOfBirth);
            request.setAttribute("referralSource", referralSource);
            request.setAttribute("contactMethod", contactMethod);
            request.setAttribute("likeThat", likeThat);
            request.setAttribute("emailAnnouncements", emailAnnouncements);

            java.util.Calendar cal = java.util.Calendar.getInstance();
            int currentYear = cal.get(java.util.Calendar.YEAR);
            request.setAttribute("currentYear", currentYear);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}