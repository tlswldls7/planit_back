<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- **********************************************************************************************************************************************************
        MAIN CONTENT :: 직원 관리 
        *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h3 style="text-align: center">직 원 관 리</h3>
		<!-- /row -->
		<!-- INLINE FORM ELELEMNTS -->
		<div class="row mt">
			<div class="col-lg-6 col-lg-offset-3">
				<div class="form-panel center-block">
					<div class="center-block">
					<h4 class="mb"> 검 색</h4>
					</div>
					<form class="form-inline" role="form">
						<div class="form-group">
							<label class="sr-only" for="searchColumns">분류</label> 
							<select class="form-control" id="searchColumns">
								<option value="1">사번</option>
								<option value="2">이름</option>
								<option value="3">부서</option>
								<option value="4">전화번호</option>
							</select>
						</div>
						<div class="form-group">
							<label class="sr-only" for="exampleInputPassword2">Password</label>
							<input type="password" class="form-control"
								id="exampleInputPassword2" placeholder="Password">
						</div>
						<button type="submit" class="btn btn-theme">Sign in</button>
					</form>
				</div>
				<!-- /form-panel -->
			</div>
			<!-- /col-lg-12 -->
		</div>
		<!-- /row -->
		<h3>
			<i class="fa fa-angle-right"></i>00으로 검색한 결과
		</h3>
		<div class="row mt">
			<div class="col-lg-12">
				<div class="content-panel">
					<h4>
						<i class="fa fa-angle-right"></i> 직원
					</h4>
					<section id="unseen">
						<table class="table table-bordered table-striped table-condensed table-text-center ">
							<thead>
								<tr>
									<th>사원번호</th>
									<th>부서명</th>
									<th >이름</th>
									<th >전화번호</th>
									<th >직무</th>
									<th >권한레벨</th>
									<th colspan="2">관리</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td>플랜잇. 프로그램</td>
									<td >정현선</td>
									<td >4504</td>
									<td >플랜잇팀장
									</td>
									<td>level_10</td>
									<td colspan="2">
									<button type="button" class="btn btn-round btn-info">정보</button>
									<button type="button" class="btn btn-round btn-success">수정</button>
									<button type="button" class="btn btn-round btn-danger">삭제</button></td>
								</tr>
							</tbody>
						</table>
					</section>
				</div>
				<!-- /content-panel -->
			</div>
			<!-- /col-lg-4 -->
		</div>

	</section>

</section>


