<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Results</h2>

       
          <p><a href="${pageContext.request.contextPath}/notices"> Show Current Notice</a></p>
          <p><a href="${pageContext.request.contextPath}/createnotice"> Create Notice</a></p>
          <p><a href="${pageContext.request.contextPath}/test">Test</a></p>
          
          
          
          
          <sec:authorize access="!isAuthenticated()">
		        <p><a href="<c:url value='/login' />">Log in</a></p>
	      </sec:authorize>
	
	      <sec:authorize access="isAuthenticated()">
		        <p><a href="<c:url value='/j_spring_security_logout' />">Log out</a></p>
	      </sec:authorize>
	
	      <sec:authorize access="hasRole('admin')">
	         	<p><a href="<c:url value='/admin' />">Admin page</a></p>
	      </sec:authorize>

</body>
</html>


