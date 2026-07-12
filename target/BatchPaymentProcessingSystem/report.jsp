<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ page import="com.batchpayment.dao.PaymentDAO" %>

        <% PaymentDAO dao=new PaymentDAO(); int total=dao.getTotalPayments(); int pending=dao.getPendingPayments(); int
            processed=dao.getProcessedPayments(); double amount=dao.getTotalAmount(); %>

            <!DOCTYPE html>
            <html>

            <head>

                <meta charset="UTF-8">

                <title>Payment Reports</title>

                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background: #f4f6f9;
                        margin: 0;
                    }

                    .container {
                        width: 650px;
                        margin: 50px auto;
                        background: white;
                        padding: 30px;
                        border-radius: 10px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                    }

                    h2 {
                        text-align: center;
                        color: #007bff;
                        margin-bottom: 25px;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }

                    th,
                    td {
                        border: 1px solid #ddd;
                        padding: 15px;
                        text-align: center;
                    }

                    th {
                        background: #007bff;
                        color: white;
                    }

                    tr:nth-child(even) {
                        background: #f2f2f2;
                    }

                    .button {
                        display: block;
                        width: 220px;
                        margin: 30px auto 0;
                        padding: 12px;
                        background: #007bff;
                        color: white;
                        text-decoration: none;
                        text-align: center;
                        border-radius: 5px;
                        font-size: 18px;
                    }

                    .button:hover {
                        background: #0056b3;
                    }
                </style>

            </head>

            <body>

                <div class="container">

                    <h2>Batch Payment Report</h2>

                    <table>

                        <tr>
                            <th>Report</th>
                            <th>Value</th>
                        </tr>

                        <tr>
                            <td>Total Payments</td>
                            <td>
                                <%= total %>
                            </td>
                        </tr>

                        <tr>
                            <td>Pending Payments</td>
                            <td>
                                <%= pending %>
                            </td>
                        </tr>

                        <tr>
                            <td>Processed Payments</td>
                            <td>
                                <%= processed %>
                            </td>
                        </tr>

                        <tr>
                            <td>Total Amount</td>
                            <td>Rs. <%= amount %>
                            </td>
                        </tr>

                    </table>

                    <a class="button" href="dashboard.jsp">Back to Dashboard</a>

                </div>

            </body>

            </html>