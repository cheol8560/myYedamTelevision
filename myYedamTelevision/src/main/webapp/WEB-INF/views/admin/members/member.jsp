<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <div class="page-title">
                    <h3>회원관리</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                        </ol>
                    </div>
                </div>
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-white">
                                <div class="panel-heading clearfix">
                                    <h4 class="panel-title">회원 관리</h4>
                                </div>
                                <div class="panel-body">
                                   <div class="table-responsive">
                                    <table id="memberTable" class="display table" style="width: 100%; cellspacing: 0;">
                                        <thead>
                                            <tr>
                                                <th class="text-center" style="width:100px">ID</th>
                                                <th class="text-center" style="width:100px">닉네임</th>
                                                <th class="text-center" style="width:100px">이름</th>
                                                <th class="text-center" style="width:150px">E-mail</th>
                                                <th class="text-center" style="width:100px">Tel</th>
                                                <th class="text-center" style="width:100px">Point</th>
                                                <th class="text-center" style="width:150px">이미지</th>
                                                <th class="text-center" style="width:100px">은행</th>
                                                <th class="text-center" style="width:150px">계좌번호</th>   
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                              	<th class="text-center">ID</th>
                                                <th class="text-center">닉네임</th>
                                                <th class="text-center">이름</th>
                                                <th class="text-center">E-mail</th>
                                                <th class="text-center">Tel</th>
                                                <th class="text-center">Point</th>
                                                <th class="text-center">이미지</th>
                                                <th class="text-center">은행</th>
                                                <th class="text-center">계좌번호</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                   		<c:forEach items="${member}" var="member">
										<tr>
											<td class="text-center"><a href="getMemberForm.do?memberId=${member.memberId}">${member.memberId}</a></td>
											<td class="text-center">${member.nickName}</td>
											<td class="text-center">${member.memberName}</td>
											<td class="text-center">${member.email}</td>
											<td class="text-center">${member.tel}</td>
											<td class="text-right"><fmt:formatNumber value="${member.point}" groupingUsed="true"/></td>
											<td class="text-center">${member.memberImage}</td>
											<td class="text-center">${member.bankName}</td>
											<td class="text-center">${member.account}</td>
										</tr>
										</c:forEach>
                                        </tbody>
                                       </table>  
                                    </div>
                                </div>
                            </div>
                           
                           
                            
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->