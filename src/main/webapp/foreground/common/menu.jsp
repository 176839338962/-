<%--
  Created by IntelliJ IDEA.
  User: duibuqi
  Date: 2021/1/6
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<!-- Navigation -->
<script type="text/javascript">
    function checkData() {
        var q = document.getElementById("q").value.trim();
    }
</script>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Clown 杨兴卓</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/foreground/blogger/bloggerInfo.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About2</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
