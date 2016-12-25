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
<span id="registerLabel">Registration</span>
  <spring:form method="POST" commandName="newUser">
    <table>
      <tr>
        <td><spring:label path="name">Name</spring:label></td>
        <td><spring:input path="name"/></td>
      </tr>
      <tr>
        <td><spring:label path="surname">Surname</spring:label></td>
        <td><spring:input path="surname"/></td>
      </tr>
      <tr>
        <td><spring:label path="phone">Phone</spring:label></td>
        <td><spring:input path="phone"/></td>
      </tr>
      <tr>
        <td><spring:label path="email">E-mail</spring:label></td>
        <td><spring:input path="email"/></td>
      </tr>
      <tr>
        <td><spring:label path="login">Login</spring:label></td>
        <td><spring:input path="login"/></td>
      </tr>
      <tr>
        <td><spring:label path="password">Password</spring:label></td>
        <td><spring:password path="password"/></td>
      </tr>
    </table>
    <spring:button>Submit</spring:button>
  </spring:form>
<script>
  $('button').button();
  $('input:text, input:password').off('mouseenter')
          .button()
          .css({
            'font' : 'inherit',
            'color' : 'inherit',
            'text-align' : 'left',
            'outline' : 'none',
            'cursor' : 'text'
          })
  $('label').label();
</script>
<style>
  #registerLabel{
    margin: 1em 0 0.5em 0;
    font-weight: 600;
    font-family: 'Titillium Web', sans-serif;
    position: relative;
    font-size: 30px;
    line-height: 40px;
    padding: 15px 15px 15px 15%;
    color: #355681;
    box-shadow:
    inset 0 0 0 1px rgba(53,86,129, 0.4),
    inset 0 0 5px rgba(53,86,129, 0.5),
    inset -285px 0 35px white;
    border-radius: 0 10px 0 10px;
    /*background: #fff url(../images/bartoszkosowski.jpg) no-repeat center left; TODO:Найти картинку */

  }
</style>

</body>

</html>