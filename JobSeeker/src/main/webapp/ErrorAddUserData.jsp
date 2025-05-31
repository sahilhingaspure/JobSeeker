<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration Failed</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #87ceeb, #0056b3); /* Gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.2); /* Semi-transparent white */
            backdrop-filter: blur(10px); /* Glassmorphism effect */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 80%;
            max-width: 600px;
            animation: fadeIn 1s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        h2 {
            color: #ff4d4d; /* Error red */
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.3);
            font-size: 2rem;
            margin-bottom: 10px;
        }

        p {
            color: rgba(255, 255, 255, 0.9);
            margin-bottom: 20px;
            font-size: 1.1rem;
        }

        .btn {
            padding: 12px 25px;
            background-color: #ff4d4d;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, transform 0.2s;
        }

        .btn:hover {
            background-color: #cc0000;
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
        <h2>Registration Failed!</h2>
        <p>There was an error while saving your details. Please try again.</p>
        <a href="userForm.html" class="btn">Go Back</a>
    </div>
</body>
</html>
