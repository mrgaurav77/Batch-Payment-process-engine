<!DOCTYPE html>
<html>

<head>

    <title>Admin Login</title>

    <style>
        body {

            font-family: Arial;

            background: #f2f2f2;

        }

        .login {

            width: 350px;

            margin: 100px auto;

            background: white;

            padding: 30px;

            border-radius: 10px;

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

        }
    </style>

</head>

<body>

    <div class="login">

        <h2 align="center">Admin Login</h2>

        <form action="LoginServlet" method="post">

            <input type="text" name="username" placeholder="Username">

            <input type="password" name="password" placeholder="Password">

            <button>Login</button>

        </form>

    </div>

</body>

</html>