<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box4.jsp</title>
<style type="text/css">
header > div {
	margin: 10px;
 
 	border: 10px solid red;
 	border-width:20px;
 	border-style: dashed;
 	border-color: blue;
 	
 	border-top: 10px solid gray;
 	border-top-color: red;
 	border-top-style: dotted;
 	border-top-width: 20px;
 	
 	border-bottom: 10px solid yellow;
 	border-bottom-color: gray;
 	border-bottom-style: solid;
 	border-bottom-width:20px;	
 
 
 	padding: 10px;	
	
	width :100px;
	height:100px;
	
	
	background: url('/media/fubao2.jpg');


	
}

header {
 border: 1px solid red;
}

header ~ div {
 padding: 0px;
 width: 100px;
 height: 100px;
 background: pink;
 margin: 20px;
}
 

</style>
<script type="text/javascript">
window.onload = function(){
	let divs = document.querySelectorAll("header > div");
	
	divs.forEach(function(div) {
		
		div.onmousedown = function(e) {
			let clientWidth = 0;
			let offsetWidth= 0;
			
			let style = getComputedStyle(div);
//			clientWidth =style.paddingLeft + style.width + style.paddingRight;
			clientWidth =parseInt(style.paddingLeft) +parseInt(style.width) + parseInt(style.paddingRight);
			console.log(`clientWidth = \${clientWidth} : parseInt(style.paddingLeft) +parseInt(style.width) + parseInt(style.paddingRight)`);
			
			
			console.log(`clinentWidth = \${div.clientWidth} : div.clientWidth`);
			
			offsetWidth = parseInt(style.borderLeftWidth) + clientWidth + parseInt(style.borderRightWidth)
			
			console.log(`offsetWidth = \${offsetWidth}`)
			console.log(`offsetWidth = \${div.offsetWidth}`)
			
			e.preventDefault();
			
			//return false;
		}
		
	});
}


header

</script>



</head>
<body>
<header>
<div>box1</div>
<div>box2</div>
<div>box3</div>
</header>
<hr>
<div>box4</div>
<div>box5</div>

</body>
</html>