<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My 회원탈퇴</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">   
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  	<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
  	
  	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<div class="myPage mt-5 mb-5">
			<div class="d-flex justify-content-between col-8">
				<a class="text-dark" href="/user/myProfile_view"><span>회원정보</span></a>
				<a class="text-dark" href="/user/myFavorites_view"><span>즐겨찾기</span></a>
				<a class="text-dark" href="/user/myPlan_view"><span>계획표</span></a>
				<a class="text-dark" href="/user/myQuestion_view"><span>Q&A</span></a>
				<a class="text-dark" href="/user/myWithdraw_view"><span class="text-danger">회원탈퇴</span></a>
			</div>
			<hr>
			<div class="mr-3 ml-3 mt-5">
				<b>탈퇴 안내</b>
				<p><small class="text-secondary">Time 회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</small></p>
			</div>
		
			<div class="favoritesContent">
				<div class="mb-4 ml-3">
					<span class="text-success font-weight-bold"><i class="bi bi-check"></i></span>
					<b>사용하고 계신 아이디(<span class="text-success">${userNickname }</span>)는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</b>
					<p class="ml-3 mt-2 text-secondary"><span class="text-danger">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</span>하오니 신중하게 선택하시기 바랍니다.</p>
				</div>
				<div class="mb-4 ml-3">
					<span class="text-success font-weight-bold"><i class="bi bi-check"></i></span>
					<b>탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</b>
					<p class="ml-3 mt-2 text-secondary">회원정보 및 메일주소, 즐겨찾기, 계획표 등 개인형 서비스 이용기록은 모두 삭제되며,삭제된 데이터는 복구되지 않습니다.<br>
					내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.</p>
				</div>
				<div class="mb-4 ml-3">
					<span class="text-success font-weight-bold"><i class="bi bi-check"></i></span>
					<b>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</b>
					<p class="ml-3 mt-2 text-secondary">게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.<br>
					삭제를 원하는 게시글이 있다면 <span class="text-danger">반드시 탈퇴 전 삭제하시기 바랍니다.</span></p>
				</div>
				<div class="mb-5 ml-3">
					<p class="ml-3 text-danger">탈퇴 후에는 아이디 (<b class="text-success">${userNickname }</b>)로 다시 가입할 수 없으며 아디와 데이터는 복구할 수 없습니다.<br>
					게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.</p>
				</div>
				<div class="checkbox">
	    			<input type="checkbox" name="check1" id="check1" value="1" class="checkbox1">
		    		<label for="check1" class="ml-3"><b>안내 사항을 모두 확인하였으며, 이에 동의합니다.</b></label>
				</div>
			</div>
		

			<div class="page mt-3">
				<button type="button" class="btn btn-primary mr-3" id="deleteBtn">확인</button>
			</div>
		
		</div>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#deleteBtn").on("click", function() {
				
				if(!$("input:checked[id='check1']").is(":checked") ) {
					alert("회원탈퇴 안내 사항을  확인 후 동의해주세요.");
					return;
				}
				
				$.ajax({
					
					type:"get",
					url:"/user/delete",
					success:function(data) {
						if(data.result == "success") {
							alert("회원탈퇴가 정상 처리되었습니다.");
							location.href="/post/main_view";
						} 
					},
					error:function() {
						alert("회원탈퇴 에러");
					}
					
				});
				
				
			});
		});
	
	</script>
	

</body>
</html>