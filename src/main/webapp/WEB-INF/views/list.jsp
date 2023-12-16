<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
    <style>
        .card-number{
            justify-content: left;
        }
    </style>
</head>
<body>
<h1>자유게시판</h1> <div id="logout"><a href="login/logout">logout</a></div>

<div style="display: flex; justify-content: center; margin: 50px;">
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 100px; width: 90%;">


        <c:forEach items="${list}" var="u">
            <div class="card text-center" style="width:22rem;">
                <div class="card-body">
                    <div class="card-number text-left">
                        <h5>${u.seq}<br/></h5>
                    </div>
                    <p>${u.category}</p>
                    <p one onclick="location.href='view/${u.seq}'">${u.title}</p>
                    <p>${u.writer}</p>
                    <p>${u.content}</p>
                    <p><c:set var="dateFormat" value="yyyy-MM-dd" />
                        <fmt:formatDate value="${u.year}" pattern="${dateFormat}" /></p>
                    <div class="d-flex justify-content-end">
                        <div class="button groud">
                            <a href="editpost/${u.seq}" class="btn btn-primary">Edit</a>
                            <a href="javascript:delete_ok('${u.seq}')" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>


<br/><button type = "button" onclick="location.href='add'">새글쓰기</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
