<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeWritePro_jsp</title>
</head>
<body>
<c:if test="${result > 0 }">
	<script type="text/javascript">
		alert("작성 완료");  
		location.href="manNoticeList.do?pageNum=${pageNum}";
	</script>
</c:if>
<c:if test="${result == 0 }">  
	<script type="text/javascript">
		alert("오류가 발생했습니다.");  
		location.href="manNoticeWriteForm.do?notice_code=${notice_code}&pageNum=${pageNum}";
	</script>
</c:if>
</body>
</html>