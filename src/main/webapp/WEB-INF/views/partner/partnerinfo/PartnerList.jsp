<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
	<section class="wrapper site-min-height">
		<!-- page start-->
		<div class="chat-room mt">
			<aside class="mid-side">
				<div class="chat-room-head">
					<h3>파트너 관리 </h3>
					<form action="#" class="pull-right position">
						<input type="text" placeholder="Search"
							class="form-control search-btn ">
					</form>
				</div>
				<div class="room-desk">
					<h4 class="pull-left">파워 업체 </h4>
					<a href="#" class="pull-right btn btn-theme02">+ Create Room</a>
					<div class="room-box">
						<h5 class="text-primary">
							업체명: <a href="<c:url value='/Planit/Admin/partner/View.do'/>" >경복궁게스트하우스</a>
						</h5>
						<p>서울특별시 광화문.</p>
						<p>
							<span class="text-muted">Admin :</span> Sam Soffes | <span
								class="text-muted">평점 :</span> 5.0 | <span
								class="text-muted">최근 리뷰 :</span> 2 min ago
						</p>
					</div>
					<div class="room-box">
						<h5 class="text-primary">
							업체명: <a href="<c:url value='/Planit/Admin/partner/View.do'/>">곰하나루펜션</a>
						</h5>
						<p>충청남도 공주시</p>
						<p>
							<span class="text-muted">Admin :</span> Sam Soffes | <span
								class="text-muted">평점 :</span> 4.8 | 
								<span class="text-muted">최근 리뷰 :</span> 15 min ago
						</p>
					</div>
					<div class="room-box">
						<h5 class="text-primary">
							업체명: <a href="<c:url value='/Planit/Admin/partner/View.do'/>">속초마을</a>
						</h5>
						<p>강릉시 </p>
						<p>
							<span class="text-muted">Admin :</span> Sam Soffes | <span
								class="text-muted">평점 :</span> 4.2 | 
								<span class="text-muted">최근 리뷰 :</span> 15 min ago
						</p>
					</div>
				</div>
				<div class="room-desk">
					<h4 class="pull-left">미달업체[평점이 낮은 업체로 관리가 필요합니다.]</h4>
					<div class="room-box">
						<h5 class="text-primary">
							업체명: <a href="<c:url value='/Planit/Admin/partner/View.do'/>">제주도</a>
						</h5>
						<p>제주도 게스트 하우스입니다.</p>
						<p>
							<span class="text-muted">Admin :</span> Sam Soffes | <span
								class="text-muted">평점 :</span> 1.3 | 
								<span class="text-muted">LastActivity :</span> 15 min ago
						</p>
					</div>
					<div class="room-box">
						<h5 class="text-primary">
							업체명: <a href="<c:url value='/Planit/Admin/partner/View.do'/>">목포항</a>
						</h5>
						<p>목포항 펜션입니다</p>
						<p>
							<span class="text-muted">Admin :</span> Sam Soffes | <span
								class="text-muted">평점 :</span> 1.0 | 
								<span class="text-muted">최근 리뷰 :</span> 15 min ago
						</p>
					</div>
				</div>
			</aside>
			<aside class="right-side">
				<div class="user-head">
					<a href="#" class="chat-tools btn-theme"><i class="fa fa-cog"></i>
					</a> <a href="#" class="chat-tools btn-theme03"><i
						class="fa fa-key"></i> </a>
				</div>
				<div class="invite-row">
					<h4 class="pull-left">진행 이벤트</h4>
					<a href="#" class="btn btn-theme04 pull-right">+ 더보기</a>
				</div>
				<ul class="chat-available-user">
					<li><a href="chat_room.html"> <img class="img-circle"
							src="img/friends/fr-02.jpg" width="32"> 이벤트명 <span
							class="text-muted">1h:02m</span>
					</a></li>
					
				</ul>
			</aside>
		</div>
		<!-- page end-->
	</section>
	<!-- /wrapper -->
</section>
<!-- /MAIN CONTENT -->
<!--main content end-->
