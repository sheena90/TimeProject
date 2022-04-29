<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<header>
			<div class="header d-flex align-items-center justify-content-between">
				<!-- logo -->
				<div>
					<a href="/post/main_view">
						<img width="150" alt="logo" src="/static/image/logo.PNG">
					</a>
				</div>
				
				<!-- 메뉴 -->
				<div class="d-flex align-items-center justify-content-between text-white">
					<h6 class="mr-2 text-danger"><i class="bi bi-broadcast"></i></h6>
					<h6 class="mr-5">
						<a class="text-white" href="/post/live/play_view" data-toggle="modal" data-target="#liveModal">라이브 강의</a>
					</h6>
					<h6 class="mr-5">
					<a class="text-white" href="/post/content/video_view">운동영상</a>
					</h6>
					<h6 class="mr-5">
						<a class="text-white" href="/post/content/info_view">지식정보</a>
					</h6>
					<h6 class="mr-5">
						<a class="text-white" href="/post/community/main_view">Community</a>
					</h6>
					<!--  <h1 class="material-icons-outlined mr-2">login</h1>-->
					
					
					<!-- 로그인 아이콘에 대한 dropdown 적용 : 마이페이지, 로그아웃 -->
					<div class="dropdown d-flex align-items-center mr-4">
						<c:choose>
							<c:when test="${not empty userId }">
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">logout</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="/user/myProfile_view">My페이지</a></li>
									<li><hr class="dropdown-divider"></li>
									<li>
										<a class="dropdown-item text-primary" href="/user/sign_out">로그아웃</a>
									</li>
								</ul>
							</c:when>
							<c:otherwise>
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">login</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="/user/signin_view">로그인</a></li>
									<li><hr class="dropdown-divider"></li>
									<li>
										<a class="dropdown-item text-primary" href="/user/signup_view">회원가입</a>
									</li>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
					
					
					
				</div>
			</div>
			
		</header>
		
	
	<!-- Modal -->
	<div class="modal fade" id="liveModal"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
	    	<div class="modal-content">
	      		<div class="modal-body">
	      			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
        			
	      			<div class="headerLive text-center">
						<img width="120" alt="logo" src="/static/image/logo_black.jpg" >
					</div>
	      
	      			<table class="table text-center mt-3">
						<thead>
							<tr>
								<th>No.</th>
								<th>Title</th>
								<th>시작시간</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="live" items="${managerPostLive }" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>${live.title }</td>
									<td>${live.timeline }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
	      		</div>
	      		<div class="modal-footer">
	        		<a href="/post/live/play_view">
	        			<button type="button" class="btn btn-primary">입장하기</button>
	        		</a>
	      		</div>
	    	</div>
	  	</div>
	</div>