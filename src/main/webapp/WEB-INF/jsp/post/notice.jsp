<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Time Notice</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.6/dist/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
  	
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
  
</head>
<body>
	<div id="wrap">
		
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="signUp mt-5 mb-5">
			<div class="signUpHeader d-flex align-items-center justify-content-center">
				<img class="col-2" width="120" alt="logo" src="/static/image/logo.PNG" >
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white">Notice</h3>
			</div>
			
			<div class="favoritesContent ml-5 mr-5">
				<div class="pt-3">
					<b>Time 서비스의 신규 및 업데이트 소식을 알려드립니다!</b>
				</div>
				<hr>
				<div class="pt-3">
					<table class="table text-center mt-3">
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>작성일</th>
								<th>조회</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>[개선 안내1]</td>
								<td>2022-04-19</td>
								<td>0</td>
							</tr>
							<tr>
								<td>2</td>
								<td>[개선 안내2]</td>
								<td>2022-04-19</td>
								<td>0</td>
							</tr>
							<tr>
								<td>3</td>
								<td>[개선 안내3]</td>
								<td>2022-04-19</td>
								<td>0</td>
							</tr>
						</tbody>
					
					</table>
				</div>
			</div>
			
			<div class="page">
				<ul class="pagination">
					<li class="paginationLi"><a href="#" class="paginationA first">처음 페이지</a></li>
					<li class="paginationLi"><a href="#" class="paginationA arrow left"><<</a></li>
					<li class="paginationLi"><a href="#" class="paginationA active num">1</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">2</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">3</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">4</a></li>
					<li class="paginationLi"><a href="#" class="paginationA num">5</a></li>
					<li class="paginationLi"><a href="#" class="paginationA arrow right">>></a></li>
					<li class="paginationLi"><a href="#" class="paginationA last">끝 페이지</a></li>
				</ul>
			</div>
			
			<div class=" d-flex justify-content-center mt-4">
				<div class="input-group w-25">
	       			<input type="text" class="form-control">
	       			<div class="input-group-append">
	             		<button class="btn btn-secondary">검색</button>
	       			</div>
	 			</div>
 			</div>
				
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>

</body>
</html>