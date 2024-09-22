<!DOCTYPE html>
<html>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<head>
   
    <title>Apply Off-in-Lieu</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #d4e8fc; 
            margin: 50px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; 
        }

        h1 {
            color: #2c3e50; 
            margin-bottom: 30px;
            text-align: center;
        }

        form {
            background-color: #ffffff; 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); 
            width: 100%; 
            max-width: 400px; 
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            color: #34495e; 
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            padding: 10px;
            margin-bottom: 15px; 
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .radio-group {
            margin-bottom: 15px; 
        }

        input[type="radio"] {
            margin-right: 5px; 
            cursor: pointer; 
        }

        button {
            padding: 12px;
            border: none;
            border-radius: 5px;
            background-color: #3498db; 
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        button:hover {
            background-color: #2980b9;
            transform: translateY(-2px); 
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Apply Off-in-Lieu for ${sessionScope.userName}</h1>
    <form action="applyOffInLieu" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" maxlength="50" required>
        
        <label for="contactNumber">Contact Number:</label>
        <input type="text" name="contactNumber" maxlength="8" required>
        
        <label for="email">Email:</label>
        <input type="email" name="email" required>
        
        <label for="satDutyDate">Sat Duty Date:</label>
        <input type="date" name="satDutyDate" required>
        
        <label for="offDate">Off Date:</label>
        <input type="date" name="offDate" required>
        
        <label>AM/PM/FULL:</label>
        <div class="radio-group">
            <input type="radio" name="amPmFull" value="AM"> AM
            <input type="radio" name="amPmFull" value="PM"> PM
            <input type="radio" name="amPmFull" value="FULL"> FULL
        </div>
        
        <label for="approvingOfficerId">Approving Officer ID:</label>
        <input type="text" name="approvingOfficerId" required>
        
        <button type="submit">Apply</button>
    </form>
    <p class="error">${error}</p>
</body>
</html>
