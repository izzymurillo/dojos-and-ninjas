<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Dojo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/darkly.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
    <div class="container mt-5">
      <div class="container">
        <div class="card">
          <div class="card-header">
            <h1>New Dojo</h1>
          </div>
          <div class="card-body">
            <form:form action="/dojos" method="post" modelAttribute="dojo" class="form-control p-3">
              <form:label path="name" class="m-3"><h4>Name:</h4></form:label>
              <form:input path="name" type="text"/>
              <input path="name" type="submit" value="Create" class="btn btn-primary m-3"/>
            </form:form>
          </div>
        </div>
      </div>
    </div>
</body>
</html>