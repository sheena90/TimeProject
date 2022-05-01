<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<header>
			<div class="header d-flex align-items-center justify-content-between">
				<!-- logo -->
				<div>
					
					<img width="150" alt="logo" src="/static/image/logo.PNG">
					
				</div>
				
				<!-- 메뉴 -->
				<div class="d-flex align-items-center justify-content-between text-white">

					<h6 class="mr-5">
					<a class="text-white" href="/managerPost/content/video_view">운동영상 관리</a>
					</h6>
					<h6 class="mr-5">
						<a class="text-white" href="/managerPost/content/info_view">지식정보 관리</a>
					</h6>
					<h6 class="mr-5">
						<a class="text-white" href="/managerPost/notice_view">공지사항 관리</a>
					</h6>
					
					<!-- 로그인 아이콘에 대한 dropdown 적용 : 마이페이지, 로그아웃 -->
					<div class="dropdown d-flex align-items-center mr-4">
						<c:choose>
							<c:when test="${not empty managerId }">
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">logout</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li>
										<a class="dropdown-item text-primary" href="/manager/sign_out">로그아웃</a>
									</li>
								</ul>
							</c:when>
							<c:otherwise>
								<a class="text-white" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-bs-expanded="false" class="mr-2 text-dark"> 
									<h1 class="material-icons-outlined">login</h1>
								</a>
								<ul class="dropdown-menu dropdown-menu-right mt-2" aria-labelledby="dropdownMenuLink">
									<li><a class="dropdown-item" href="/manager/signin_view">로그인</a></li>
									<li><hr class="dropdown-divider"></li>
									<li>
										<a class="dropdown-item text-primary" href="/manager/signup_view">회원가입</a>
									</li>
								</ul>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>	
		</header>