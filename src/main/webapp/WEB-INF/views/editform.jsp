<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.118.2">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

	<link href="https://getbootstrap.com/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<style>
		.card {
			margin : auto;
			position: relative;
			top:50px;
		}

		.btn{
			position: relative;
			top:40px;
		}

		.col-sm-6{
			position: relative;
			top:20px;
		}

		.col-12{
			position: relative;
			top:20px;
		}

		.ui-button{
			color:white;
		}

	</style>
</head>
<body>

<div class="card" style="width:40rem; height:40rem">
	<main>
		<div class="col-md-12 text-center">
			<div class="card-body text-center">
				<h4 class="mb-3">영화 수정</h4>
			</div>
			<form:form modelAttribute="u" method="POST" action="../editok">
				<form:hidden path="seq"/>
				<div class="row g-3 text-center">
					<div class="col-sm-6 text-center">
						<label class="form-label">제목</label>
						<div>
							<form:input path="title"  />
						</div>
					</div>

					<div class="col-sm-6">
						<label class="form-label">장르</label>
						<div>
							<form:input path="category"  />
						</div>
					</div>

					<div class="col-sm-6">
						<label class="form-label">감독</label>
						<div>
							<form:input path="writer"  />
						</div>
					</div>

					<div class="col-sm-6">
						<label class="form-label">출연자</label>
						<div>
							<form:input path="actor"  />
						</div>
					</div>

					<div class="col-sm-6">
						<label class="form-label">별점</label>
						<div>
							<form:input step="0.1" path="star"  />
						</div>
					</div>

					<div class="col-sm-6">
						<label class="form-label">등장년도</label>
						<div>
							<form:input path="year" type="date"  min="1895-12-25" max="2098-12-31" />
						</div>
					</div>

					<div class="col-12">
						<label  class="form-label">줄거리</label>
						<div>
							<form:textarea cols="50" rows="5" path="content" />
						</div>
					</div>
				</div>

				<div class="ui-button">
					<input type="button" class="btn btn-info" value="목록보기" onclick="history.back()">
					<input type="submit" class="btn btn-primary" value="수정하기">
				</div>
			</form:form>
		</div>
	</main>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>