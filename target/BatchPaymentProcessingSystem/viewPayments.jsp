<%@ page import="java.util.*" %>
    <%@ page import="com.batchpayment.dao.PaymentDAO" %>
        <%@ page import="com.batchpayment.model.Payment" %>

            <!DOCTYPE html>
            <html>

            <head>

                <title>View Payments</title>

                <style>
                    body {

                        font-family: Arial;
                        background: #f4f4f4;

                    }

                    table {

                        width: 90%;
                        margin: auto;
                        border-collapse: collapse;
                        background: white;

                    }

                    th,
                    td {

                        padding: 12px;
                        border: 1px solid gray;
                        text-align: center;

                    }

                    th {

                        background: #2196F3;
                        color: white;

                    }

                    h2 {

                        text-align: center;

                    }
                </style>

            </head>

            <body>

                <h2>All Payments</h2>

                <table>

                    <tr>

                        <th>ID</th>
                        <th>Student</th>
                        <th>Account</th>
                        <th>IFSC</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Batch</th>
                        <th>Failure Reason</th>

                    </tr>

                    <% PaymentDAO dao=new PaymentDAO(); List<Payment> list=dao.getAllPayments();

                        for(Payment p:list){

                        %>

                        <tr>

                            <td>
                                <%=p.getId()%>
                            </td>

                            <td>
                                <%=p.getStudentName()%>
                            </td>

                            <td>
                                <%=p.getAccountNumber()%>
                            </td>

                            <td>
                                <%=p.getIfsc()%>
                            </td>

                            <td>
                                <%=p.getAmount()%>
                            </td>

                            <td>

                                <% if("Processed".equals(p.getStatus())){ %>

                                    <span style="color:green;font-weight:bold;">
                                        <%=p.getStatus()%>
                                    </span>

                                    <% }else if("Failed".equals(p.getStatus())){ %>

                                        <span style="color:red;font-weight:bold;">
                                            <%=p.getStatus()%>
                                        </span>

                                        <% }else{ %>

                                            <%=p.getStatus()%>

                                                <% } %>

                            </td>

                            <td>
                                <%=p.getBatchId()%>
                            </td>
                            <td>

                                <% if(p.getFailureReason()==null || p.getFailureReason().equals("")){ %>

                                    -

                                    <% }else{ %>

                                        <span style="color:red;">
                                            <%=p.getFailureReason()%>
                                        </span>

                                        <% } %>

                            </td>

                        </tr>

                        <% } %>

                </table>
                <br><br>

                <div style="text-align:center;">
                    <a href="dashboard.jsp" style="background:#007bff;
              color:white;
              padding:12px 25px;
              text-decoration:none;
              border-radius:5px;
              font-size:18px;">
                        Back to Dashboard
                    </a>
                </div>

            </body>

            </html>