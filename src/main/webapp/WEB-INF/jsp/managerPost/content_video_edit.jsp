<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 ContentVideo_edit</title>
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
	
		<c:import url="/WEB-INF/jsp/include/managerHeader.jsp" />
		
		
		<div class="managerPostVideo mt-5 mb-5">
			<div class="signUpHeader d-flex align-items-center justify-content-center">
				<h3 class="col-2 text-white text-center">관리자</h3>
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white text-center">수정/삭제</h3>
			</div>
			
			<div>
				
				
				<div class="m-3">
					<div class="mb-3" >
						<h6>성별</h6>
						<select id="gender">
							<option selected>${video.userGender }</option>
							<option>남자</option>
							<option>여자</option>
						</select>
					</div>
					<div class="mb-3" >
						<h6>부위</h6>
						<select id="body" >
							<option selected>${video.body } </option>
							<option>가슴</option>
							<option>어깨</option>
							<option>복근</option>
							<option>하체</option>
							<option>힙</option>
							<option>등</option>
						</select>
					</div>
					<div class="mb-3" >
						<h6>타입</h6>
						<select id="type">
							<option selected>${video.type } </option>
							<option>라이브</option>
							<option>동영상</option>
						</select>
					</div>
					
					
					<h6>제목</h6>
					<input type="text" class="form-control mt-3" id="titleInput" value="${video.title }"><br>
					<h6>동영상 링크</h6>
					<input type="text" class="form-control mt-3" id="linkInput" value="${video.link }"><br>
					<h6>라이브 시간 </h6>
					<input type="text" class="form-control mt-3" id="timeInput" value="${video.timeline }" ><br>
					
				</div>
				<div class="ml-3 mr-3">
					<img width="180" src="${video.thumbnail}">
					<div class="d-flex justify-content-between mt-3 mb-3">
						<a href="/managerPost/content/video_view" class="btn btn-secondary">목록으로</a>
						<div>
							<button type="button" class="btn btn-danger" >삭제</button>
							<button type="button" class="btn btn-dark" id="editBtn">수정</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/managerFooter.jsp" />
		
	</div>
	


</body>
</html>