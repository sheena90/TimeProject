<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
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
				<img class="col-2" width="120" alt="logo" src="/static/image/logo.png" >
				<h3 class="text-center text-white"> | </h3>
				<h3 class="col-2 text-white">Community</h3>
			</div>
			
			<div>
				<div class="d-flex align-items-center justify-content-start ml-3 mt-3">
					<span class="material-icons-outlined" style="color:red; font-size:30px;">campaign</span>
					<span>Stop! 폭언이나 욕설 금지</span>
				</div>
				<hr class="ml-3 mr-3">
				<div class="ml-3 mr-3">
					<h6>제목</h6>
					<input type="text" class="form-control mt-3" placeholder="제목을 입력해주세요" id="titleInput">
					<textarea rows="10" cols="1000" class="form-control mt-3" placeholder="내용을 입력해주세요" id="contentInput"></textarea>
				</div>
				<div class="ml-3 mr-3">
					<input type="file" class="mt-3" id="fileInput">
					<div class="d-flex justify-content-between mt-3">
						<a href="/post/community/list_view" class="btn btn-secondary">목록으로</a>
						<button type="button" class="btn btn-danger" id="saveBtn">저장</button>
					</div>
				</div>
			</div>
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#saveBtn").on("click", function(){
				
				let title = $("#titleInput").val();
				let content = $("#contentInput").val().trim(); //trim 메소드: 앞 뒤 공백 제거
				
				if(title == "") {
					alert("제목을 입력하세요.");
					return;
				}
				
				if(content == "") {
					alert("내용을 입력하세요.")
					return;
				}
				
				
				// 파일 호출 추가 옵션
				var formData = new FormData();
				// {"subject":title, "content":content} 문자열 형태를 비어있는 FormData 객체 생성해서 parameter 삽입
				// append 메소드 통해서 값을 추가
				formData.append("subject", title);
				formData.append("content", content);
				formData.append("file", $("#fileInput")[0].files[0]);
				
				
				$.ajax({
					type:"post",
					url:"/post/community/create",
					data:formData,  // formData 변수 형태로 전달
					enctype:"multipart/form-data",    // 파일 업로드 필수 옵션
					processData:false,				  // 파일 업로드 필수 옵션 + data:{}의 문자열 기본 속성을 제거 역할
					contentType:false,				  // 파일 업로드 필수 옵션 + data:{}의 문자열 기본 속성을 제거 역할
					success:function(data) {
						
						if(data.result == "success") {
							location.href="/post/community/main_view";
						} else {
							alert("게시글 입력 실패");
						}
					},
					error:function() {
						alert("게시글 에러");
					}
				});
			});
		});
	</script>
</body>
</html>