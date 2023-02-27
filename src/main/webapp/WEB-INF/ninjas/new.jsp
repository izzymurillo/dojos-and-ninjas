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
    <title>New Ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/darkly.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container mt-5">
      <div class="container">
        <div class="card">
          <div class="card-header">
            <h1>New Ninja</h1>
          </div>
          <div class="card-body">
            <form:form
              action="/ninjas"
              method="post"
              modelAttribute="ninja"
              class="form-control p-3"
            >
              <div class="form-control">
                <form:label path="dojo" class="form-label m-3"><h4>Dojo:</h4></form:label>
                <form:select path="dojo">
                  <c:forEach var="dojo" items="${dojos}">
                    <form:option value="${dojo.id}" path="dojo">
                      <c:out value="${dojo.name}" />
                    </form:option>
                  </c:forEach>
                </form:select>
              </div>
              <form:label path="firstName" class="form-label m-3"
                ><h4>First Name:</h4></form:label
              >
              <form:input path="firstName" type="text" class="form-control" />
              <form:label path="lastName" class="form-label m-3"
                ><h4>Last Name:</h4></form:label
              >
              <form:input path="lastName" type="text" class="form-control" />
              <form:label path="age" class="form-label m-3"
                ><h4>Age:</h4></form:label
              >
              <form:input path="age" type="number" class="form-control" />
              <div class="d-flex justify-content-end">
                <button class="btn btn-primary m-4" type="submit">
                  Create
                </button>
              </div>
            </form:form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
