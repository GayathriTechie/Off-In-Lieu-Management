<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Login - Off-in-Lieu Application</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #d4e8fc;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	width: 300px;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	background-color: white;
/* 	display: flex; */
/* 	flex-direction: column; */
/* 	align-items: flex-start; */
}

h2 {
	text-align: center;
	margin-bottom: 30px;
	margin-top:10px;
}

label {
/* 	margin-bottom: 5px; */
/* 	display: block; */
	margin-bottom: 12px;
    display: block;
    margin-top: 20px;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"], input[type="reset"] {
	width: 48%;
	padding: 10px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-top: 10px;
}

input[type="submit"] {
	background-color: #007bff;
	color: white;
}

input[type="reset"] {
	background-color: #6c757d;
	color: white;
}

input[type="submit"]:hover, input[type="reset"]:hover {
	opacity: 0.9;
}

.error {
	color: red;
	text-align: center;
	margin-top: 15px;
}

.error-message {
	color: red;
    font-size: 12px;
    margin-top: 5px; 
    margin-bottom: 0;
}
</style>
<script>
	function validateInput(input) {
		const
		alphanumericPattern = /^[a-zA-Z0-9]*$/;
		const
		errorMessageId = input.id + "Error";
		const
		errorMessageElement = document.getElementById(errorMessageId);

		if (!alphanumericPattern.test(input.value)) {
			errorMessageElement.textContent = "Field accepts alphanumeric characters only.";
		} else {
			errorMessageElement.textContent = "";
		}
	}

	function validateForm() {
		const
		staffId = document.getElementById("staffId");
		const
		password = document.getElementById("password");
		if (!/^[a-zA-Z0-9]*$/.test(staffId.value)
				|| !/^[a-zA-Z0-9]*$/.test(password.value)) {
			alert("Please make sure all fields contain only alphanumeric characters.");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	 <div class="container">
        <h2>Login</h2>
        
        <form action="login" method="post" onsubmit="return validateForm()">
            <label for="staffId">Staff ID:</label>
            <input type="text" id="staffId" name="staffId" required maxlength="5" 
                   <c:if test="${sessionScope.failedAttempts >= 3}">disabled</c:if>
                   oninput="validateInput(this)">
            <span class="error-message" id="staffIdError"></span><br>
                        
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required 
                   <c:if test="${sessionScope.failedAttempts >= 3}">disabled</c:if>
                   oninput="validateInput(this)">
            <span class="error-message" id="passwordError"></span>
            
            <input type="submit" value="Login" 
                   <c:if test="${sessionScope.failedAttempts >= 3}">disabled</c:if>
            >
            <input type="reset" value="Clear">
        </form>

        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <c:if test="${sessionScope.failedAttempts >= 3}">
            <p class="error">
                You have exceeded the maximum number of attempts. <a href="login?reset=true">Click here to reset.</a>
            </p>
        </c:if>
    </div>
   
</body>
</html>
