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
      <div class="d-flex flex-column">
        <h1 class="text-center mt-3">Send an Omikuji</h1>
        <form action="/omikuji/show" method="POST" class="d-flex justify-content-center" >
          <div class="d-flex flex-column">
            <label class="form-label" for="years">
              Pick any number from 5 to 25
            </label>
            <input class="form-control" type="number" name="years" />
            <label for="city">Enter the name of any city.</label>
            <input class="form-control" type="text" name="city" />
            <label for="person">Enter the name of any real person.</label>
            <input class="form-control" type="text" name="person" />
            <label for="hobby">Enter professional endeavor or hobby.</label>
            <input class="form-control" type="text" name="hobby" />
            <label for="thing">Enter any type of living thing.</label>
            <input class="form-control" type="text" name="thing" />
            <label for="nice">Say something nice to someone:</label>
            <input class="form-control" type="text" name="someone" />
            <button class="btn-outline-success mt-3" type="submit">Send</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
