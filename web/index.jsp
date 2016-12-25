<!-- обратите внимание на spring тэги -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <script type="text/javascript" src="${pageContext.request.contextPath}resources/scripts/jquery-3.1.1.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}resources/scripts/jquery-ui-1.12.1/jquery-ui.js"></script>
  <link href="<c:url value="${pageContext.request.contextPath}resources/scripts/jquery-ui-1.12.1/jquery-ui.css"/> " rel="stylesheet"/>
  <title>Index Page</title>
</head>

<body>
<form>
  <button formaction="/register">Sign up</button>
</form>
<script>
  $("button").button();
</script>

</body>

</html>