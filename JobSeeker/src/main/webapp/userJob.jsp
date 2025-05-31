<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #87ceeb; 
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
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

        footer {
            background-color: rgba(0, 0, 0, 0.3); 
            color: white;
            padding: 30px 50px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            backdrop-filter: blur(10px);
            position: fixed;
            bottom: 0;
            width: 100%;
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

        form {
            animation: fadeIn 1.5s ease-in-out;
            text-align: center;
        }

    </style>
</head>
<body>
    <form action="AdminListController" method="POST">
        <h3>Login Successful</h3>
        <input class="btn" type="submit" value="View Job Listings" />
    </form>

    <footer>
        <div class="footer-section">
            <h4>Contact Us</h4>
            <p>Email: support@example.com</p>
        </div>
        <div class="footer-section social-icons">
            <a href="#">🔗</a>
            <a href="#">🔗</a>
        </div>
    </footer>
</body>
</html>
