<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Job Seeker Portal</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #87ceeb; /* Sky blue background */
            color: #333;
            overflow-x: hidden;
        }

        /* Glassmorphism Navbar */
        .navbar {
            display: flex;
            justify-content: flex-end;
            gap: 20px;
            padding: 15px 30px;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
            background: rgba(255, 255, 255, 0.2); /* Transparent glass effect */
            backdrop-filter: blur(15px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .navbar a:hover {
            background-color: #ffcc00;
            color: #333;
            transform: scale(1.1);
        }

        /* Main Container */
        .container {
            max-width: 900px;
            margin: 120px auto 50px auto;
            padding: 40px;
            text-align: center;
            background: rgba(255, 255, 255, 0.3); /* Transparent background */
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px); /* Frosted glass effect */
            animation: fadeIn 1.5s ease-in-out;
        }

        .container h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .container p {
            font-size: 1.1rem;
            line-height: 1.6;
        }

        .container ul {
            text-align: left;
            margin: 20px auto;
            max-width: 600px;
            padding: 0;
        }

        .container li {
            margin-bottom: 10px;
            font-size: 1rem;
        }

        .btn {
            padding: 12px 25px;
            background-color: #ffcc00;
            color: #333;
            text-decoration: none;
            font-size: 1rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #ff6600;
            transform: translateY(-5px);
        }

        /* Glassmorphism Footer */
        footer {
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(15px);
            color: white;
            padding: 30px 50px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
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

        /* Fade In Animation */
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

    <!-- Glassmorphism Navbar -->
    <div class="navbar">
        <a href="Homepage.html">Home</a>
        <a href="Aboutus.jsp">About Us</a>
        <a href="Contactus.jsp">Contact Us</a>
    </div>

    <!-- About Us Section -->
    <div class="container">
        <h1>About Us</h1>
        <p>Welcome to <strong>Job Seeker Portal</strong>, your trusted platform for connecting job seekers with top employers worldwide.</p>

        <h2>Our Mission</h2>
        <p>We aim to bridge the gap between talent and opportunity by providing a user-friendly and efficient platform.</p>

        <h2>Why Choose Us?</h2>
        <ul>
            <li>Access to thousands of job listings across multiple industries.</li>
            <li>Streamlined application process.</li>
            <li>Secure and transparent platform.</li>
            <li>24/7 customer support.</li>
        </ul>

        <a href="Homepage.html" class="btn">Return to Homepage</a>
    </div>

    <!-- Glassmorphism Footer -->
    <footer>
        <div class="footer-section">
            <h4>Contact Us</h4>
            <p>Phone: +91060016186</p>
            <p>Email: support@jobportal.com</p>
        </div>
        <div class="footer-section">
            <h4>Quick Links</h4>
            <p><a href="Homepage.html">Home</a></p>
            <p><a href="Aboutus.jsp">About Us</a></p>
            <p><a href="Contactus.jsp">Contact Us</a></p>
        </div>
        <div class="footer-section social-icons">
            <h4>Follow Us</h4>
            <a href="#">🔵 Facebook</a>
            <a href="#">🟣 Instagram</a>
            <a href="#">🔗 LinkedIn</a>
        </div>
    </footer>

</body>

</html>
