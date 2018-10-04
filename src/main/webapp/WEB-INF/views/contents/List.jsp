<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- **********************************************************************************************************************************************************
        MAIN CONTENT :: 직원 관리 
        *********************************************************************************************************************************************************** -->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h3 style="text-align: center">content 관리 </h3>
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
								<option value="1">관광지</option>
								<option value="2">행사</option>
								<option value="3">숙박</option>
								<option value="4">음식점</option>
							</select>
						</div>
						<div class="form-group">
							<label class="sr-only" for="exampleInputPassword2"></label>
							<input type="password" class="form-control"
								id="exampleInputPassword2" placeholder="키워드">
						</div>
						<button type="submit" class="btn btn-theme">검색</button>
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
									<th> contentTypeID</th>
									<th> conetneID</th>
									<th >title</th>
									<th >areacode</th>
									<th >sugungucode</th>
									<th >cat1/cat2/cat3</th>
									<th >GPS</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${list}">
								<tr>
									<td>${item.contenttype }</td>
									<td>${item.contentid}</td>
									<td >${item.title }</td>
									<td >${item.areacode }</td>
									<td >${item.sigungucode }</td>
									<td>${item.cat1 }/${item.cat2 }/${item.cat3 }</td>
									<td >${mapx}, ${mapy }</td>
								</tr>
								</c:forEach>
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
