<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/WebToon/css/layout.css">
<script type="text/javascript" src="/WebToon/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#toLoginBtn").click(function() {
			location.href = '/WebToon/login';
		});
		$("#viewStory").click(function() {
			location.href = '/WebToon/story/viewStory';
		});
		$("#logout").click(function() {
			if(confirm("로그아웃 하시겠습니까?")){
				location.href = '/WebToon/doLogout';
			}
		});
	});
</script>
