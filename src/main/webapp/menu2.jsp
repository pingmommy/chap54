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
	width: 1500px;
}

li > a{
	text-decoration: none;
		color: gray;
	font-style:normal;
	
}


li{
	
	 padding: 10px;
	 width: 150px;
	 float: left;
	 
}

li:nth-child(2n) {
	background: lavenderblush;
}

li:nth-child(2n+1) {
	background: mistyrose;
}

 ul > :first-child {
	border-radius: 10px 0 0 10px ;
}

ul > :last-child {
	border-radius: 0  10px 10px 0;
}  

p::first-letter {
	font-size: 2em;
	color: purple;
}

li::first-letter {
	font-size: 1.5em;

}

p::first-line {
	text-decoration: overline;
	font-size: 1.5em;
}

p::selection {
	color: red;
	text-decoration: line-through;
	font-size: 2em;
}

li::before {
	content: "♥";
	color: pink;
}

li::after {
	content: "♡"
}

p::after {
	content: url('media/fubao2.jpg')
}

</style>
<script type="text/javascript">

</script>
</head>
<body style=" border: 5px solid pink">
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

<div style="width:100px; height:100px; border : 1px solid red;">box1</div>
<div style="width:100pt; height:100pt; border : 1pt solid red;">box2</div>
<div style="width:100%; height:100%; border : 1pt solid red;">box3</div>  <!-- %의 기준은 속성에 따라 다르지만 width, heght는 부모태그의 크기를 따른다. -->
<div style="width:1em; height:1em; border : 1px solid red; font-size: 100px ">box4</div>  <!-- em의 기준은 폰트(상대적), em은 주로 폰트사이즈에 적용
폰트사이즈는 부모태그의 크기를 따른다.  -->

 <p>
 Hello Alpha!
 Hello java!
 Hello html!
 Hello python!
 Hello CSS!
</p>

 <p>
North Korean leader Kim Jong Un continued his days-long trip to Russia Friday, visiting an aircraft plant in the eastern city of Komsomolsk-on-Amur, according to Russian state media, after the two sides said military cooperation was a possibility.

The facility is the country’s largest aviation manufacturing plant and builds and develops warplanes for the Ministry of Defense, including the Su-35S and Su-57 fighter jets, state media TASS reported. Kim’s late father, Kim Jong Il, also visited the plant in 2002.
</p>
 
</body>
</html>