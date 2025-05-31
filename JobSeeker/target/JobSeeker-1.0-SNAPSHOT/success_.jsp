<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #87ceeb, #1f3a93);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 600px;
            text-align: center;
            animation: fadeIn 1.2s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        h1 {
            font-size: 2.5rem;
            color: #ffffff;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        p {
            color: white;
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            margin: 10px 15px;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: rgba(0, 123, 255, 0.7);
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }

        a:hover {
            background-color: rgba(0, 123, 255, 1);
            transform: translateY(-3px);
            box-shadow: 0 8px 15px rgba(0, 123, 255, 0.5);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>The user information has been successfully registered.</p>
        <a href="userlogin.html">Click Here to Login</a>
        <a href="Homepage.html">Back to Homepage</a>
    </div>
</body>

</html>
