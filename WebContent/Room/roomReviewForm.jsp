<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../Main/headerPage.jsp"%>

<%
	String member_id = request.getParameter("member_id");
String roomCode = request.getParameter("roomCode");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	border-size: boxsizing;
}

h2 {
	text-align: center;
}

.tour-Review-Box {
	position: relative;
	left: 50%;
	transform: translateX(-50%);
	width: 500px;
	height: 650px;
	border: 1px solid black;
}

.tour-Reiew-Header {
	width: 100%;
	height: 100px;
	border: 1px solid black;
}
</style>


</head>
<body>

	<h2>리뷰 등록 페이지 입니다.</h2>

	<form action='<%=request.getContextPath()%>/RoomReviewInsert.do' method="get">
		<input hidden value="<%=roomCode%>" name="roomCode"> <input hidden value="<%=member_id%>" name="member_id">
		<div class="tour-Review-Box">
			<div class="tour-Reiew-Header">
				작성자<input type="text" value="<%=member_id%>">
			</div>


			내용
			<textarea rows="5" cols="50" name="tour_Review_content"></textarea>

			별점
			<div>
				<input type="radio" name="star" value="1">★ <input type="radio" name="star" value="2">★★ <input type="radio" name="star" value="3">★★★ <input type="radio" name="star" value="4">★★★★ <input type="radio" name="star" value="5" checked>★★★★★
			</div>



			<input type="submit" value="등록하기"> <input type="button" value="돌아가기" onclick="location.href='<%=request.getContextPath()%>/Room/roomdetail.jsp?room_code=<%=roomCode%>'">

		</div>

	</form>

<%@ include file="../Main/footer.jsp" %>

</body>
</html>