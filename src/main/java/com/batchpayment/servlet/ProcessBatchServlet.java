package com.batchpayment.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.batchpayment.dao.PaymentDAO;

@WebServlet("/ProcessBatchServlet")
public class ProcessBatchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // HTML response
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String batchId = "BATCH" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

        PaymentDAO dao = new PaymentDAO();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Batch Processing</title>");
        out.println("<style>");
        out.println("body{font-family:Arial,sans-serif;background:#f4f4f4;text-align:center;padding-top:80px;}");
        out.println(
                ".box{background:#fff;padding:30px;width:450px;margin:auto;border-radius:10px;box-shadow:0 0 10px rgba(0,0,0,.2);}");
        out.println("h2{color:green;}");
        out.println(
                "a{display:inline-block;margin-top:20px;padding:10px 20px;background:#007bff;color:white;text-decoration:none;border-radius:5px;}");
        out.println("a:hover{background:#0056b3;}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class='box'>");

        if (dao.processBatch(batchId)) {

            out.println("<h2> Batch Processed Successfully</h2>");
            out.println("<h3>Batch ID : " + batchId + "</h3>");
            out.println("<a href='viewPayments.jsp'>View Payments</a>");

        } else {

            out.println("<h2 style='color:red;'>No Pending Payments Found.</h2>");
            out.println("<a href='dashboard.jsp'>Back to Dashboard</a>");

        }

        out.println("</div>");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }
}