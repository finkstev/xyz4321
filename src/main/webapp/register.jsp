<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Magento Customer Registration Middleman</title>
	
	<style type="text/css">
		label:after {
			content: ": ";
		}
		.required:before {
			content: "*";
			color: red;
			font-weight: bold;
		}
		label {
			margin-right: 10px;
		}
		label input {
			margin-bottom: 10px;
			margin-right: 20px;
			display: block;
		}
	</style>
</head>

<body>
<c:if test="${!empty messages}">
<ul><c:out value="${messages}" escapeXml="false" /></ul>
</c:if>
<c:if test="${!empty success && success}"><h1>User Successfully Created</h1></c:if>
<c:if test="${empty success || !success}">
	<h1>Create an Account</h1>
	<form action="${pageContext.request.contextPath}/submit" method="post">
		<fieldset>
			<legend>Personal Information</legend>
			
			<label for="firstName" class="required">First Name</label>
			<input type="text" name="firstName" id="firstName" value="${param.firstName}" />
			
			<label for="lastName" class="required">Last Name</label>
			<input type="text" name="lastName" id="lastName" value="${param.lastName}" />
			
			<label for="email" class="required">Email</label>
			<input type="email" name="email" id="email" value="${param.email}" />
			
			<input type="checkbox" name="newsletter" id="newsletter" />
			<label for="newsletter">Sign Up for Newsletter</label>
		</fieldset>
		
		<fieldset>
			<legend>Login Information</legend>
			
			<label for="password" class="required">Password</label>
			<input type="password" name="password" id="password" />
			
			<label for="password2" class="required">Confirm Password</label>
			<input type="password" name="password2" id="password2" />
		</fieldset>
		
		<label class="required">Required fields</label>
		
		<button type="submit">Submit</button>
	</form>
</c:if>
</body>

</html>