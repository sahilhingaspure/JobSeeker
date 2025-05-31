<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #00c6ff, #0072ff); /* Vibrant Blue Gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.1); /* Glassmorphism Effect */
            backdrop-filter: blur(15px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 600px;
            width: 80%;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h1 {
            color: #28a745; /* Green Success Color */
            font-size: 2.5rem;
            margin-bottom: 15px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        .btn {
            padding: 12px 30px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 5px 15px rgba(40, 167, 69, 0.4);
        }

        .btn:hover {
            background-color: #218838;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(40, 167, 69, 0.5);
        }

        /* Success Icon */
        .success-icon {
            font-size: 60px;
            color: #28a745;
            margin-bottom: 20px;
        }

        /* Animation */
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
    </style>
</head>
<body>
    <div class="container">
        <div class="success-icon">✔️</div>
        <h1>Success!</h1>
        <p>The Admin record has been successfully added.</p>
        <a href="AdminHomepage.jsp" class="btn">Back to Admin Panel</a>
    </div>
</body>
</html>
