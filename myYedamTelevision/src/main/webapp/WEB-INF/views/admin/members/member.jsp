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
                                                <th style="width:100px">ID</th>
                                                <th style="width:100px">닉네임</th>
                                                <th style="width:100px">이름</th>
                                                <th style="width:150px">E-mail</th>
                                                <th style="width:100px">Tel</th>
                                                <th style="width:100px">Point</th>
                                                <th style="width:150px">이미지</th>
                                                <th style="width:100px">은행</th>
                                                <th style="width:150px">계좌번호</th>   
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                              	<th>ID</th>
                                                <th>닉네임</th>
                                                <th>이름</th>
                                                <th>E-mail</th>
                                                <th>Tel</th>
                                                <th>Point</th>
                                                <th>이미지</th>
                                                <th>은행</th>
                                                <th>계좌번호</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                   		<c:forEach items="${member}" var="member">
										<tr>
											<td><a href="getMemberForm.do?memberId=${member.memberId}">${member.memberId}</a></td>
											<td>${member.nickName}</td>
											<td>${member.memberName}</td>
											<td>${member.email}</td>
											<td>${member.tel}</td>
											<td><fmt:formatNumber value="${member.point}" groupingUsed="true"/>기쁨</td>
											<td>${member.memberImage}</td>
											<td>${member.bankName}</td>
											<td>${member.account}</td>
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