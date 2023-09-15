<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style type="text/css">

ul {
	list-style: none;
	text-align: center;
	color: gray;
}

li > a{
	text-decoration: none;
		color: gray;
	font-style:normal;
	
}


li{
	 border: 2px solid lightgray;
	 padding: 10px;
	 width: 100px;
	 
}

li:nth-child(2n) {
	background: lavenderblush;
}

li:nth-child(2n+1) {
	background: mistyrose;
}

ul > :first-child {
	border-radius: 10px 10px 0 0 ;
}

ul > :last-child {
	border-radius: 0 0 10px 10px ;
} 


</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>MENU</h1>
<hr>
<ul>
	 <li><a href="/alpha/generator">ALPHA</a></li>
	 <li><a href="/alpha/rect">RECT</a></li>
	 <li><a href="/dept/list">DEPT</a></li>
	 <li><a href="/emp/list">EMP</a></li>
	 <li><a href="/salgrade/list">SALGRADE</a></li>
	 <li><a href="/city/list">CITY</a></li>
	 <li><a href="/country/list">COUNTRY</a></li>
	 <li><a href="/language/list">LANGUAGE</a></li>
</ul>


<hr>
</body>
</html>