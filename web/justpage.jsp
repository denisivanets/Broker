<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<spring:form method="post" commandName="user" action="user-action">
  Name:<spring:input path="name"/>
  Password:<spring:input path="password"/>
  <spring:button name="Submit"/>
</spring:form>
</body>
</html>
