<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paginationInfo" required="true" type="yolo.myTv.util.PaginationInfo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<!-- Paginations v2 -->
				<!-- Delete ".previous and .next" classes "li" to use the default version of arrows sticking with the numbers -->
				<div class="paginations-v2 text-center">
					<ul class="paginations-v2-list">
						<li class="previous"><a href="#" aria-label="Previous"> <span
								aria-hidden="true">Prev</span>
						</a></li>
						
						<c:forEach begin="${paginationInfo.firstPageNoOnPageList}" end="${paginationInfo.lastPageNoOnPageList}" var="p">
							<li><a href="#" onclick="fn_egov_link_page(${p})">${p}</a></li>
						</c:forEach>
						<!-- class="active" -->						
						
						<li class="next"><a href="#" aria-label="Next"> <span
								aria-hidden="true">Next</span>
						</a></li>
					</ul>
				</div>
				<!-- End Paginations v2 -->
			</div>
		</div>