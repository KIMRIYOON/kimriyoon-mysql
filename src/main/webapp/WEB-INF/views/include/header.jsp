<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title> 스프링 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/resources/home/css/swiper.min.css">
<link rel="stylesheet" href="/resources/home/css/common.css">
<script src="/resources/home/js/jquery-1.11.3.min.js"></script>
<script src="/resources/home/js/rollmain.js"></script>
<script src="/resources/home/js/jquery.easing.js"></script>	
<script src="/resources/home/js/common.js"></script>  
<script src="/resources/home/js/jquery.smooth-scroll.min.js"></script> 
<!--[if lte IE 9]>
    <script src="/resources/home/js/html5shiv.js"></script>
	<script src="/resources/home/js/placeholders.min.js"></script>
<![endif]-->
<script>
if('${msg}' != ""){
	alert("${msg}에 성공하였습니다.");
	}
</script>
</head>
<body>
<ul class="skipnavi">
    <li><a href="#container">본문내용</a></li>
</ul>
<!-- wrap -->
<div id="wrap">

	<header id="header">
		<div class="header_area box_inner clear" color:>	
			<h1><a href="/">사용자홈페이지</a></h1>
			<p class="openMOgnb"><a href="#" onclick="return false"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a></p>
			<!-- header_cont -->
			<div class="header_cont">
				<ul class="util clear">
				<c:choose>
					<c:when test="${session_enabled eq 'true'}">
						<li><span style="color:white">${session_username}님[${session_userid}] 환영합니다!!</span></li>
						<li><a href="/logout">로그아웃</a></li>
						<c:if test="${session_levels eq 'ROLE_ADMIN'}">
							<li><a href="/admin">관리자</a></li>
						</c:if>
					</c:when>
					<c:otherwise>
						<li><a href="/login"><b>로그인</b></a></li>
						<li><a href="#"><b>회원가입</b></a></li>
					</c:otherwise>
				</c:choose>
				</ul>	
				<nav>
				<ul class="gnb clear">
					<li><a href="#" class="openAll1"><b>회사소개</b></a>
                        <div class="gnb_depth gnb_depth2_1">
                            <ul class="submenu_list">
                                <li><a href="#"><b>기업연혁</b></a></li>
                                <li><a href="#"><b>오시는길</b></a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="#" class="openAll2"><b>창업문의</b></a>
                        <div class="gnb_depth gnb_depth2_2">
                            <ul class="submenu_list">
                                <li><a href="#"><b>상담신청</b></a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="/smaple" class="openAll3"><b>포트폴리오</b></a>
                        <div class="gnb_depth gnb_depth2_3">
                            <ul class="submenu_list">
                                <li><a href="/sample"><b>원페이지</b></a></li>
                                <li><a href="/sample/slide"><b>슬라이드</b></a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="/board/list" class="openAll4"><b>고객센터</b></a>
				        <div class="gnb_depth gnb_depth2_4">
                            <ul class="submenu_list">
                                <li><a href="/board/list"><b>공지사항</b></a></li>
                            </ul>
                        </div>
					</li>
				<li><a href="#" class="openAll5"><b>Q&A</b></a>
                        <div class="gnb_depth gnb_depth2_5">
                            <ul class="submenu_list">
                                <li><a href="#"><b>궁금해요</b></a></li>
                            </ul>
                        </div>
					</li>
				</ul>
                </nav>
				<p class="closePop"><a href="#">닫기</a></p>
			</div>
			<!-- //header_cont -->
		</div>
	</header>
	