<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo2.jsp</title>
<style type="text/css">

/* input 의 nextsibling인 div에 효과를 적용하기 위해 연산자를 (+)로 선택  */
/* input:checked + div{
	width:100px;
	height:100px;
	border: 10px solid pink;
	background: lightgrey;
} */

/* input과 div 사이에 hr 태그를 추가하여 연산자를 (+) -> (~)로 변경  */
input:checked ~ div{
	width:100px;
	height:100px;
	border: 10px solid pink;
	background: lightgrey;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>상태 선택자 checked</h1>
<hr>
<input type="checkbox" > 
<hr>
<div>box</div>


</body>
</html>