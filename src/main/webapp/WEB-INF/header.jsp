<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function() {
		var yh_mch = getMyCookie("yh_nch");
		$("#show_name").text(decodeURIComponent(yh_mch));
	});

	function getMyCookie(key) {
		var val = "";

		// 对cookie操作
		var cookies = document.cookie;
		cookies = cookies.replace(/\s/, "");
		var cookie_array = cookies.split(";");
		for (i = 0; i < cookie_array.length; i++) {
			// yh_mch=lilei
			var cookie = cookie_array[i];
			var array = cookie.split("=");
			if (array[0] == key) {
				val = array[1];
			}
		}

		return val;
	}
</script>
<title>gmall</title>
</head>
<body>
	<div class="top">
		<div class="top_text">
			<c:if test="${empty user}">
				<a href="goto_login.do">User login: ${yh_mch}<span id="show_name" style="color: red"></span></a>
				<a href="">User register</a>
			</c:if>
			<c:if test="${not empty user}">
				<a href="">User name: ${user.yh_mch}</a>
				<a href="">User order</a>
			</c:if>
		</div>
	</div>
</body>
</html>