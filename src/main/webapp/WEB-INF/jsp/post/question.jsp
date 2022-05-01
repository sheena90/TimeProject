<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
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
				<h3 class="col-2 text-white">Question</h3>
			</div>
			
			<div class="mt-5">
				<div class="questionInput d-flex align-items-center justify-content-center mt-5">
					<div class="mr-5 col-1">NAME.</div>
					<input type="text" class="form-control col-4" id="nameInput">
				</div>
				<div class="questionInput d-flex align-items-center justify-content-center mt-4">
					<div class="mr-5 col-1">EMAIL.</div>
					<input type="text" class="form-control col-4" id="emailInput">
				</div>
				<div class="questionInput d-flex align-items-center justify-content-center mt-4">
					<div class="mr-5 col-1">SUBJECT.</div>
					<input type="text" class="form-control col-4" id="subjectInput">
				</div>
				<div class="questionInput d-flex align-items-center justify-content-center mt-4">
					<div class="mr-5 col-1">CONTENTS.</div>
					<textarea rows="5" class="form-control col-4" id="contentInput"></textarea>
				</div>
				<div class="questionInput d-flex justify-content-end col-6 mt-4">
					<button type="button" class="btn btn-danger" id="sendBtn">SEND</button>
				</div>
							
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#sendBtn").on("click", function() {
				
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
				let subject = $("#subjectInput").val();
				let content = $("#contentInput").val();
				
				if(name == "") {
					alert("이름을 입력하세요.");
					return;
				}
				
				if(email == "") {
					alert("이메일을 입력하세요.");
					return;
				}
				
				if(subject == "") {
					alert("제목을 입력하세요.");
					return;
				}
				
				if(content == "") {
					alert("내용을 입력하세요.");
					return;
				}
				
				
				$.ajax({
					type:"post",
					url:"/post/question/create",
					data:{"name":name, "email":email, "subject":subject, "content":content},
					success:function(data) {
						
						if(data.result == "success") {
							location.href="/user/myQuestion_view";
						} else {
							alert("Q&A 입력 실패");
						}
						
					},
					error:function() {
						alert("Q&A 에러");
					}
					
				});
				
			});
			
			
		});
	
	</script>

</body>
</html>