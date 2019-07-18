<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>

<h1 align="center">--节目评分--</h1>
<hr>
<form action="ProServlet?cmd=update1" method="post">   		
<!-- <input type="hidden" name="pro_id">		
<input type="hidden" name="pro_name">		
<input type="hidden" name="pro_type">		
<input type="hidden" name="pro_per">		
<input type="hidden" name="pro_dan">		
<input type="hidden" name="pro_num"> -->

<table border="1px" cellspacing="0" align="center" width="600px">
	<tr>
		<td>编号</td>
		<td>节目名</td>
		<td>节目类型</td>
		<td>表演者</td>
		<td>报送单位</td>
		<td>打分</td>
	</tr>
	<c:forEach items="${pro}" var="map">
	<tr>
		<td><c:out value="${map.value.pro_id }"></c:out></td>
		<td><c:out value="${map.value.pro_name }"></c:out></td>
		<td><c:out value="${map.value.pro_type }"></c:out></td>
		<td><c:out value="${map.value.pro_per }"></c:out></td>
		<td><c:out value="${map.value.pro_dan }"></c:out></td>
		<td><c:out value="${map.value.pro_num }"></c:out></td>

		<td>打分
			<select name="pro_num"  >
				<option>5</option>
				<option>10</option>
				<option>15</option>
				<option>20</option>
			</select>
		</td>
<%-- 		<td>
			<a href="ProServlet?cmd=deletePro&pro_id=${map.value.pro_id}" >删除</a>
			<a href="ProServlet?cmd=getProUpdate&pro_id=${map.value.pro_id}">修改</a>
		</td> --%>
	</tr>
	<td><c:set var="pro_num" value="${map.value.pro_num}" scope="request"></c:set></td>
</c:forEach>
</table>
</form>
</body>
</html>