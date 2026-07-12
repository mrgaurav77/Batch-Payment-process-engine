<%@ page import="com.batchpayment.dao.PaymentDAO" %>

    <% PaymentDAO dao=new PaymentDAO(); int total=dao.getTotalPayments(); int pending=dao.getPendingPayments(); int
        processed=dao.getProcessedPayments(); double amount=dao.getTotalAmount(); %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">

            <title>Dashboard</title>

            <style>
                body {

                    font-family: Arial, sans-serif;
                    margin: 0;
                    background: #f4f6f9;

                }

                .header {

                    background: #007bff;
                    color: white;
                    padding: 20px;
                    text-align: center;
                    font-size: 30px;
                    font-weight: bold;

                }

                .cards {

                    display: flex;
                    justify-content: center;
                    flex-wrap: wrap;
                    margin-top: 30px;

                }

                .card {

                    width: 220px;
                    margin: 15px;
                    padding: 25px;
                    background: white;
                    border-radius: 10px;
                    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);

                }

                .card h2 {

                    margin: 0;
                    color: #007bff;

                }

                .card p {

                    font-size: 28px;
                    font-weight: bold;

                }

                .menu {

                    text-align: center;
                    margin-top: 40px;

                }

                .menu a {

                    display: inline-block;
                    width: 220px;
                    padding: 15px;
                    margin: 10px;
                    background: #007bff;
                    color: white;
                    text-decoration: none;
                    border-radius: 5px;
                    font-size: 18px;

                }

                .menu a:hover {

                    background: #0056b3;

                }
            </style>

        </head>

        <body>

            <div class="header">

                Batch Payment Processing System

            </div>

            <div class="cards">

                <div class="card">

                    <h2>Total Payments</h2>

                    <p>
                        <%= total %>
                    </p>

                </div>

                <div class="card">

                    <h2>Pending</h2>

                    <p>
                        <%= pending %>
                    </p>

                </div>

                <div class="card">

                    <h2>Processed</h2>

                    <p>
                        <%= processed %>
                    </p>

                </div>

                <div class="card">

                    <h2>Total Amount</h2>

                    <p>RS. <%= amount %>
                    </p>

                </div>

            </div>

            <div class="menu">

                <a href="addPayment.jsp">Add Payment</a>

                <a href="viewPayments.jsp">View Payments</a>

                <a href="report.jsp">Reports</a>

                <a href="ProcessBatchServlet">Process Batch</a>

            </div>

        </body>

        </html>