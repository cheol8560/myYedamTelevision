<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>교환 번호</td>
		<td>보낸 아이디</td>
		<td>받은 아이디</td>
		<td>포인트</td>
		<td>교환 날짜</td>
		<td>비교 </td>
	</tr>
	
	<c:forEach var="list" items="${ translateList}">
			<tr>
				<td>${list.translateId }</td>
				<td>${list.sendMemberId }</td>
				<td>${list.receiveMemberId }</td>
				<td>${list.translatePoint }</td>
				<td>${list.translateDate }</td>
				<td><button type="button" onclick="get(${con.contentCode});">수정</button></td>
			</tr>
	</c:forEach>

</table>
</body>
</html>