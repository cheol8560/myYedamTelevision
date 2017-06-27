<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paginationInfo" required="true"
	type="yolo.myTv.util.PaginationInfo"%>
<%@ attribute name="jsFunc" required="false" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty jsFunc}">
	<c:set var="jsFunc" value="fn_egov_link_page"></c:set>
</c:if>



<div class="container">
	<div class="paginations-v3 text-center margin-b-60">
			<ul class="paginations-v3-list">
				<li class="previous">
					<a href="#" aria-label="Previous"> 
						<span aria-hidden="true"><i class="fa fa-angle-double-left"></i></span>
					</a>
				</li>
					<c:forEach 
					begin="${paginationInfo.firstPageNoOnPageList}" 
					end="${paginationInfo.lastPageNoOnPageList}" var="p">
					<c:if test="${paginationInfo.currentPageNo == p }">
						<li class="active"><a>${p}</a></li>
					</c:if>
					<c:if test="${paginationInfo.currentPageNo != p }">
						<li><a href="#" onclick="fn_egov_link_page(${p})">${p}</a></li>
					</c:if>
					</c:forEach>
				<li class="next">
					<a href="#" aria-label="Next">
						<span aria-hidden="true"><i class="fa fa-angle-double-right"></i></span>
					</a>
				</li>
			</ul>
		<!-- End Paginations v2 -->
	</div>
</div>