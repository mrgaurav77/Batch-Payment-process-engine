<!DOCTYPE html>
<html>

<head>

    <title>Add Payment</title>

    <style>
        body {
            font-family: Arial;
            background: #f4f4f4;
        }

        .container {

            width: 450px;
            margin: 40px auto;
            background: white;
            padding: 25px;
            box-shadow: 0px 0px 10px gray;

        }

        input {

            width: 100%;
            padding: 10px;
            margin-top: 10px;

        }

        button {

            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background: green;
            color: white;
            border: none;
            cursor: pointer;

        }
    </style>

</head>

<body>

    <div class="container">

        <h2>Add Payment</h2>

        <form action="AddPaymentServlet" method="post">

            <input type="text" name="studentName" placeholder="Student Name" required>

            <input type="text" name="accountNumber" placeholder="Account Number" required>

            <input type="text" name="ifsc" placeholder="IFSC Code" required>

            <input type="number" name="amount" placeholder="Amount" required>

            <button type="submit">Save Payment</button>

        </form>

    </div>

</body>

</html>