<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseeker.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration List</title>
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
            flex-direction: column;
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

        .logout-btn {
            margin-bottom: 20px;
            padding: 10px 20px;
            background-color: #ff4b5c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
        }

        .logout-btn:hover {
            background-color: #ff1e3a;
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
    <form action="AdminHomepage.jsp" method="post">
        <button type="submit" class="logout-btn">Admin Page</button>
    </form>

    <div class="container">
        <h2>Registration List</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>EmailId</th>
                    <th>Username</th>
                    <th>Password</th>
                </tr>
            </thead>

            <tbody>
                <%
                    List<Registration> registrations = (List<Registration>) request.getAttribute("registration");
                    if (registrations != null) {
                        for (Registration reg : registrations) {
                %>
                <tr>
                    <td><%= reg.getName() %></td>
                    <td><%= reg.getEmailId() %></td>
                    <td><%= reg.getUsername() %></td>
                    <td><%= reg.getPassword() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
</body>

</html>
