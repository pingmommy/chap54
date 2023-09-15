<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo.jsp</title>
<style type="text/css">

input:focus{
	border: 10px solid lightgrey;
}

/* active 클릭하는 순간 */
a:active, input:active{
	border: 10px dotted blue;
	color: blue;
	font-size: 20pt;
}

div{
	width:100px;
	height:100px;
}

/*마우스가 올라가면  */
div:hover{
	border: 10px solid pink;
	background: lightgrey;
}

div:active{
	border-radius: 50px;
}

input:disabled {
	background: coral;
}

input:enabled {
	background: lightGreen;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>

<input disabled="disabled" >
<input disabled="disabled">
<input >
<input >
<div>1</div>
<div>2</div>
<div>3</div>
<a href="">www.naver.com</a>

</body>
</html>