<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #ff4d4d, #8b0000); /* Red gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.2); /* Glassmorphism effect */
            backdrop-filter: blur(10px); /* Blur effect */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 80%;
            max-width: 600px;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h1 {
            color: #ffcccc; /* Light red text */
            font-size: 2rem;
            margin-bottom: 15px;
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
        }

        p {
            color: white;
            margin-bottom: 20px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #ff4d4d;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, transform 0.2s;
        }

        .btn:hover {
            background-color: #8b0000;
            transform: scale(1.05);
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
        <h1>Error!</h1>
        <p>There was an issue adding the Admin record. Please try again.</p>
        <a href="Admin.html" class="btn">Go Back</a>
    </div>
</body>
</html>
