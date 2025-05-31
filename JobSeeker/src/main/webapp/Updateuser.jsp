<%@page import="com.mycompany.jobseeker.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Update User Details</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #1e3c72, #2a5298, #4e8cff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.1); /* Glassmorphism effect */
            backdrop-filter: blur(15px);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
            width: 80%;
            max-width: 600px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
            border: 2px solid rgba(255, 255, 255, 0.2);
        }

        h2 {
            color: #fff;
            margin-bottom: 20px;
            font-size: 2rem;
            letter-spacing: 1px;
        }

        label {
            color: #e0e0e0;
            text-align: left;
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            background: rgba(255, 255, 255, 0.3);
            border: none;
            border-radius: 10px;
            outline: none;
            color: #fff;
            font-size: 14px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: 0.3s ease;
        }

        input[type="text"]:focus,
        select:focus {
            background-color: rgba(255, 255, 255, 0.5);
            color: #000;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 10px;
            accent-color: #4e8cff;
        }

        .radio-group, 
        .checkbox-group {
            text-align: left;
            margin-bottom: 20px;
        }

        .btn {
            padding: 12px 35px;
            background-color: #4e8cff;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 0 15px rgba(78, 140, 255, 0.6);
        }

        .btn:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
            box-shadow: 0 0 20px rgba(78, 140, 255, 1);
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
    </style>
</head>

<body>
    <%
        User user = (User) request.getAttribute("user");
        if (user != null) {
    %>

    <div class="container">
        <h2>Update User Details</h2>
        <form action="SaveUpdateUserController" method="POST">
            <input type="hidden" name="username" value="<%= user.getUsername() %>">

            <!-- Gender Section -->
            <div class="radio-group">
                <label>Gender:</label>
                <input type="radio" name="gender" value="Male" <%= user.getGender().equals("Male") ? "checked" : "" %>> Male
                <input type="radio" name="gender" value="Female" <%= user.getGender().equals("Female") ? "checked" : "" %>> Female
            </div>

            <!-- Mobile Number -->
            <label for="mobileno">Mobile No:</label>
            <input type="text" id="mobileno" name="mobileno" value="<%= user.getMobileno() %>" required>

            <!-- City Dropdown -->
            <label for="city">City:</label>
            <select name="city" id="city">
                <option value="Delhi" <%= user.getCity().equals("Delhi") ? "selected" : "" %>>Delhi</option>
                <option value="Mumbai" <%= user.getCity().equals("Mumbai") ? "selected" : "" %>>Mumbai</option>
            </select>

            <!-- Education Checkboxes -->
            <div class="checkbox-group">
                <label>Education:</label>
                <input type="checkbox" name="education" value="Diploma" <%= user.getEducation().contains("Diploma") ? "checked" : "" %>> Diploma<br>
                <input type="checkbox" name="education" value="UG" <%= user.getEducation().contains("UG") ? "checked" : "" %>> UG<br>
                <input type="checkbox" name="education" value="PG" <%= user.getEducation().contains("PG") ? "checked" : "" %>> PG
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn">Update</button>
        </form>
    </div>

    <%
        } else {
    %>
    <p style="color: white; text-align: center;">User not found.</p>
    <%
        }
    %>
</body>

</html>
