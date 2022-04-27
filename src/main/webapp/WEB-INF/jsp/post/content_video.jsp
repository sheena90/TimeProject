<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ContentVideo</title>
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
		
		<section>
			<div class="communityMainContent d-flex">
			
				<!-- 메뉴바 -->
				<div class="contentVideo col-3">
					<div class="color1 mt-5 ml-5">
					
						<div class="d-flex align-items-end ">
							<span class="material-icons-outlined">keyboard_double_arrow_down</span>
							<b class="ml-2">부위별 맞춤 서비스를 이용해보세요.</b>
						</div>
					
						<div class="mt-5">
							<div class="checks"> 
								<input type="checkbox" name="type" value="man" id="ex_chk1"> 
								<label for="ex_chk1">MAN</label> 
							</div>
							<div class="mt-4 ml-4 d-none color1" id="man">
								<select class="contentVideoSelect color1 ">
									<option selected>선택</option>
									<option>가슴</option>
									<option>어깨</option>
									<option>복근</option>
									<option>하체</option>
									<option>힙</option>
									<option>등</option>
								</select>
							</div>
						</div>
						<div >
							<div class="checks mt-5"> 
								<input type="checkbox" name="type" value="woman" id="ex_chk2"> 
								<label for="ex_chk2">WOMAN</label> 
							</div>
							<div class="mt-4 ml-4 d-none color1" id="woman">
								<select class="contentVideoSelect color1">
									<option selected>선택</option>
									<option>가슴</option>
									<option>어깨</option>
									<option>복근</option>
									<option>하체</option>
									<option>힙</option>
									<option>등</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			
				<div class=" col-9">
					<!-- 영상 콘텐츠 -->
					<div class="communityMainContentBox mt-4 d-flex flex-wrap">
						<c:forEach var="videoList" items="${managerPostVideoList }">
						<div class="content m-4">
	                        <div class="thumnail">
	                            <img width="240" alt="가슴_썸네일" src="${videoList.thumbnail }">
	                        </div>
	                        <div class="title mt-2">
	                        	<small>${videoList.title }</small>
	                        </div>
	                    	<hr>
	                    	<div class="d-flex justify-content-end align-items-center mr-2">
	                    		<div class="mr-3">
	                    			<i class="bi bi-suit-heart"></i>
	                    			100
	                    		</div>
	                    		<div>
	                    			<i class="bi bi-star"></i>
	                    		</div>
	                    	</div>
	                    </div>	
						</c:forEach>
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
					
				</div>
				
				
				
				
			</div>
		</section>
	
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
	</div>
	
	<script>
		$(document).ready(function() {
			
			// select 버튼 선택에 따른 인풋 변경
            $("input[name=type]").on("change", function() {
            	
            	var checked = $(this).is(":checked");
            	
            	if(checked) {
            		
            		if($(this).val() == "man") {
                        $("#man").removeClass("d-none");
                        $("#woman").addClass("d-none");
                        $("#ex_chk2").prop("checked", false);
                    } else {
                        $("#woman").removeClass("d-none");
                        $("#man").addClass("d-none");
                        $("#ex_chk1").prop("checked", false);
                    }
            		
            	} else {
            		$("#man").addClass("d-none");
            		$("#woman").addClass("d-none");
            	}
                
            });

		});
	
	</script>
</body>
</html>