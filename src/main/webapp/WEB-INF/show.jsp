<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Omikuji Form</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container">
      <div class="card mt-3">
        <h1 class="card-header">Here's your Omikuji</h1>
        <div class="card-body">
          <span>In </span><c:out value="${years}"></c:out
          ><span> years, you will live in </span> <c:out value="${city}"></c:out
          ><span> with </span><c:out value="${person}"></c:out
          ><span> as your roommate, </span> <c:out value="${hobby}"></c:out
          ><span> for a living. The next time you see a </span
          ><c:out value="${thing}"></c:out>
          <span>, you will have good luck. Also, </span
          ><c:out value="${someone}"></c:out>
        </div>
      </div>
      <a href="/omikuji"><button class="btn-outline-primary mt-3">Home</button></a>
    </div>
  </body>
</html>
