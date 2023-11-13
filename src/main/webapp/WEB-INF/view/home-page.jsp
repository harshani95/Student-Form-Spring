<%--
  Created by IntelliJ IDEA.
  User: Ruwanthika
  Date: 2023-11-09
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>#Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Salary</th>
                    <th>Functions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${students}" var="student">
                    <tr>
                        <td>
                            <c:out value="${student.id}"/>
                        </td>
                        <td>${student.name}</td>
                        <td>${student.address}</td>
                        <td>${student.salary}</td>
                        <td>
                            <a href="edit-student/${student.id}" class="btn btn-success">Update</a>
                            <a href="delete-student/${student.id}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
