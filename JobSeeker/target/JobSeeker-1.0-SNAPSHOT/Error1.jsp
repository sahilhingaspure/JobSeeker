<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Failed</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #87ceeb, #0056b3);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 80%;
            max-width: 500px;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h2 {
            font-size: 2rem;
            font-weight: bold;
            color: #ff4c4c;
            text-shadow: 1px 1px 4px rgba(255, 76, 76, 0.8);
            animation: subtleError 1.5s ease-in-out infinite alternate;
        }

        a {
            text-decoration: none;
            font-weight: bold;
            color: #ffcc00;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            color: #ff6600;
        }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes subtleError {
            0% {
                text-shadow: 1px 1px 4px rgba(255, 76, 76, 0.8);
            }
            50% {
                text-shadow: 2px 2px 8px rgba(255, 76, 76, 0.5);
            }
            100% {
                text-shadow: 1px 1px 4px rgba(255, 76, 76, 0.8);
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Registration Failed! Please try again.</h2>
        <a href="user.html">Go Back</a>
    </div>

</body>
</html>
