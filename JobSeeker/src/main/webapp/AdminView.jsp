<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseeker.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Job Listings</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #87ceeb, #1f3a93);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 1000px;
            animation: fadeIn 1.2s ease-in-out;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .container h2 {
            font-size: 2rem;
            color: #ffffff;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            color: white;
        }

        th {
            background: rgba(0, 123, 255, 0.3);
            font-weight: bold;
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.1);
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

        .logout-button {
            padding: 10px 20px;
            background-color: #ff4d4d;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out, transform 0.2s;
        }

        .logout-button:hover {
            background-color: #cc0000;
            transform: translateY(-3px);
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
        <h2>Admin Job Listings</h2>
        <table>
            <tr>
                <th>Job Role</th>
                <th>Location</th>
                <th>Vacancy</th>
                <th>Time</th>
                <th>Date Validation</th>
                <th>Package</th>
                <th>Apply</th>
            </tr>
            <%
                List<Admin> admins = (List<Admin>) request.getAttribute("admin");
                if (admins != null) {
                    for (Admin admin : admins) {
            %>
            <tr>
                <td><%= admin.getJobRole() %></td>
                <td><%= admin.getLocation() %></td>
                <td><%= admin.getVacancy() %></td>
                <td><%= admin.getTime() %></td>
                <td><%= admin.getDateValidation() %></td>
                <td><%= admin.getPackages() %></td>
                <td><a href="userForm.html">Apply Now</a></td>
            </tr>
            <% 
                    }
                } else {
            %>
            <tr>
                <td colspan="7">No job listings available.</td>
            </tr>
            <% } %>
        </table>
        
        <button class="logout-button" onclick="window.location.href='Homepage.html'">Logout</button>
    </div>

</body>

</html>
