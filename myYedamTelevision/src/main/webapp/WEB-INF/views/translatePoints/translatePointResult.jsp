<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

// 

 

</script>
</head>
보내기 성공
<hr>
<body>
	<table> 
		<tr>
			<td>상대방 아이디 :</td>
			<td>${result.receiveMemberId }</td>

		</tr>
		<tr>
			<td>보낸 포인트</td>
			<td>${result.translatePoint }</td>
		</tr>
		<tr>
			<td>거래일시</td>
			<td>${result.translateDate }</td>
		</tr>
		<tr>
			<td>남은 나의 보유포인트</td>
			<td>${result.point }</td>
		</tr>
		<tr>
			<td colspan="2"><button onclick="close();">확인</button></td>
		</tr>
	</table>
	</form>
</body>
</html>