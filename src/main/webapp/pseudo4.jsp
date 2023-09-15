<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo4.jsp</title>
<style type="text/css">
:first-of-type {
	border: 2px solid mediumseaGreen;
}

li :first-of-type {
	
}


div > :first-of-type {
	background: lightsalmon;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>구조 선택자: first-of-type last-of -type nth-of-type</h1>
<hr>

<ol>
	<li>java</li>
	<li>python</li>
	<li>c++</li>
	<li>chtml</li>
	<li>css</li>
	<li>javascrpit</li>
	<li>sql</li>
</ol>
<hr>
<div>
	<p>java</p>
	<h1>python</h1>
	<header>c/c++</header>
	<p>html</p>
	<p>css</p>
	<header>javascript</header>
	<h1>sql</h1>
</div>
<hr>
</body>
</html>