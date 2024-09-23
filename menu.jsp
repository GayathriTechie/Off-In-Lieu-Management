<!DOCTYPE HTML>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #d4e8fc; 
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh; 
        }

        .sidebar {
            background-color: white;
            padding: 50px;
            width: 300px; 
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1); 
        }

        h1 {
            color: #030303; 
            margin-bottom: 50px;
            text-align: left; 
        }

        form {
            margin: 15px 0; 
        }

        button {
            width: 100%; 
            padding: 12px;
            border: none;
            border-radius: 5px;
            background-color: #007bff; 
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); 
        }

        button:hover {
            background-color: #2980b9; 
            transform: translateY(-2px); 
        }

        button:active {
            transform: translateY(0); 
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); 
        }

        .content {
            flex: 1; /* This allows the content area to take the remaining width */
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        @media (max-width: 400px) {
            h1 {
                font-size: 1.5em; 
            }

            button {
                font-size: 14px; 
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h1>Welcome ${sessionScope.userName}</h1>
        <form action="applyOffInLieu.jsp" method="get">
            <button type="submit">Apply Off-in-Lieu</button>
        </form>
        <form action="displayOffInLieu" method="get">
            <button type="submit">Display Off-in-Lieu</button>
        </form>
        <form action="LoginPage.jsp" method="post">
            <button type="submit">Return to Login</button>
        </form>
    </div>
    <div class="content">
        <!-- Additional content can go here if needed -->
    </div>
</body>
</html>
