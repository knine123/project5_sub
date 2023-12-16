<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
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

    </style>


</head>
<body>

<div class="card" style="width:40rem; height:40rem">
    <main>
        <div class="col-md-12 text-center">
            <div class="card-body text-center">
                <h4 class="mb-3">영화 추가</h4>
            </div>
            <form action="addok" method="post">
                <div class="row g-3 text-center">
                    <div class="col-sm-6 text-center">
                        <label for="ti" class="form-label">제목</label>
                        <div>
                            <input type="text" id="ti" name="title"/>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="lastName" class="form-label">장르</label>
                        <div>
                            <input type="text" id="lastName"  name="category"/>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="username" class="form-label">감독</label>
                        <div>
                            <input type="text" id="username" name="writer"/>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="email" class="form-label">출연자</label>
                        <div>
                            <input type="text" id="email" name="actor"/>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="address" class="form-label">별점</label>
                        <div>
                            <input type="number" id="address" step="0.1" name="star"/>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="address2" class="form-label">등장년도</label>
                        <div>
                            <input type="date" id="address2" name="year" min="1895-12-25" max="2098-12-31"/>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="address3" class="form-label">줄거리</label>
                        <div>
                            <textarea cols="50" rows="5" id="address3" name="content"></textarea>
                        </div>
                    </div>
                </div>

                <button type="button" class="btn btn-info" onclick="history.back()">목록보기</button>
                <button type="submit" class="btn btn-primary">등록하기</button>
            </form>
        </div>
    </main>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>

