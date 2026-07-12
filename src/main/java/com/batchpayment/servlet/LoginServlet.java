package com.batchpayment.servlet;

import com.batchpayment.dao.AdminDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        if (dao.login(username, password)) {

            response.sendRedirect("dashboard.jsp");

        } else {

            response.getWriter().println("<h2>Invalid Login</h2>");

        }

    }

}