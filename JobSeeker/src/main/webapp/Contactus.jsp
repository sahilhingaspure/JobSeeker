<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #87ceeb; 
            color: #333;
        }

        .navbar {
            display: flex;
            justify-content: flex-end;
            gap: 20px;
            padding: 15px 30px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
            background-color: rgba(0, 0, 0, 0.3); 
            backdrop-filter: blur(10px); 
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #ffcc00;
            color: #333;
            transform: scale(1.1);
        }
        
        .container {
            text-align: center;
            padding-top: 120px;
        }

        .container h1 {
            font-size: 3rem;
            margin-bottom: 10px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .container p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            animation: fadeIn 1.5s ease-in-out 0.5s;
        }

        .btn {
            padding: 12px 25px;
            margin: 15px;
            background-color: #ffcc00;
            color: #333;
            font-size: 1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #ff6600;
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

        .features {
            margin-top: 50px;
            display: flex;
            justify-content: center;
            gap: 40px;
            flex-wrap: wrap;
        }

        .feature-card {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px 30px;
            border-radius: 15px;
            text-align: center;
            width: 250px;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.3);
        }

        footer {
            background-color: rgba(0, 0, 0, 0.3); 
            color: white;
            padding: 30px 50px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            backdrop-filter: blur(10px);
            margin-top: 50px;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.2);
        }

        .footer-section {
            margin: 10px 0;
        }

        .footer-section h4 {
            margin-bottom: 10px;
            font-size: 1.2rem;
        }

        .footer-section p,
        .footer-section a {
            margin: 5px 0;
            color: white;
            text-decoration: none;
        }

        .footer-section a:hover {
            color: #ffcc00;
        }

        .social-icons a {
            font-size: 1.5rem;
            margin: 0 10px;
            transition: transform 0.3s ease;
        }

        .social-icons a:hover {
            transform: scale(1.2);
        }

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

        html {
            scroll-behavior: smooth;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="Homepage.html">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="#">Login</a>
    </div>

    <div class="container">
        <h1>Contact Us</h1>
        <p>If you have any questions or need support, feel free to reach out to us.</p>
        
        <h2>Our Contact Details</h2>
        <p><strong>Phone:</strong> +123 456 7890</p>
        <p><strong>Email:</strong> support@jobportal.com</p>
        <p><strong>Address:</strong> 123, Job Street, New Delhi, India</p>
        
        <a href="Homepage.html" class="btn">Go Back</a>
    </div>

    <footer>
        <div class="footer-section">
            <h4>Quick Links</h4>
            <a href="#">Privacy Policy</a><br>
            <a href="#">Terms of Service</a>
        </div>
        <div class="footer-section">
            <h4>Contact Us</h4>
            <p>Email: support@jobportal.com</p>
            <p>Phone: +123 456 7890</p>
        </div>
        <div class="footer-section social-icons">
            <a href="#">&#x1F30D;</a>
            <a href="#">&#x1F426;</a>
            <a href="#">&#x1F4F1;</a>
        </div>
    </footer>

</body>
</html>
