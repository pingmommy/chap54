<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>anchor.jsp</title>
<style type="text/css">

/*방문한적없는 링크상태*/
a:link {
	color: red;
	font-size: 200%;
   text-decoration: none;
}

/*방문한적이 있는 링크표시(컬러만 변경가능. 다른 건 안 된다. )*/
a:visited {
	color:yellow;
	text-decoration: line-through;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>a href 실습</h1>

<a href="http://www.soen.kr">www.soen.kr</a>
<a href="http://www.naver.com">www.naver.com</a>
<a href="http://www.google.com">www.google.com</a>

</body>
</html>