package com.batchpayment.servlet;

import java.io.IOException;

import com.batchpayment.dao.PaymentDAO;
import com.batchpayment.model.Payment;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AddPaymentServlet")
public class AddPaymentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Payment p = new Payment();

        p.setStudentName(request.getParameter("studentName"));
        p.setAccountNumber(request.getParameter("accountNumber"));
        p.setIfsc(request.getParameter("ifsc"));
        p.setAmount(Double.parseDouble(request.getParameter("amount")));

        PaymentDAO dao = new PaymentDAO();

        if (dao.addPayment(p)) {

            response.sendRedirect("viewPayments.jsp");
            // response.getWriter().println("<h1>Payment Added Successfully</h1>");

        } else {

            response.getWriter().println("Payment Not Added");

        }

    }

}
