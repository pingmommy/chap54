<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<style type="text/css">

#box1,#box2,#box3,#box4 {
 font-size: 40px;
}

.box {
	width: 100px;
	height : 100px;
}

.circle {
	border-radius: 50px;
}

.red {
	border: 10px solid red;
}


.blue {
	border: 10px solid blue;
}

.green {
	border: 10px solid green;
}


/* input[value='box'] {
	
} */

</style>
<script type="text/javascript">
window.onload = function() {
	let boxs = document.querySelectorAll("input[value='box']"); // 유사배열로 진짜 배열은 아니다. 
	
	boxs.forEach(function(elt, i, array) {     // (요소, 인덱스, 배열)
		elt.onchange = function(){
		let box1 = elt.parentElement.nextElementSibling;
		
		if(elt.checked){
		box1.classList.add('box');
		}else{
		box1.classList.remove('box');
		}
		
		}
	
	});
	
	
	let circles = document.querySelectorAll("input[value='circle']"); // 유사배열로 진짜 배열은 아니다. 
	
	circles.forEach(function(elt, i, array) {     // (요소, 인덱스, 배열)
		elt.onchange = function(){
		let box1 = elt.parentElement.nextElementSibling;
		
		if(elt.checked){
		box1.classList.add('circle');
		}else{
		box1.classList.remove('circle');
		}
		}
	});
	
	let radios = document.querySelectorAll("input[name*='color']"); // ("input[name ='color1'],input[name ='color2'],input[name ='color3'],input[name ='color4']")
	//let radios = document.querySelectorAll("input[name^='color']"); -> color로 시작하는 다 해당. *은 어느 위치든 color가 들어가기만 하면된다. 
	
	radios.forEach(function(input) {
		input.onchange = function(){
			let box = input.parentElement.nextElementSibling;
			box.classList.remove('red');
			box.classList.remove('blue');
			box.classList.remove('green');
			box.classList.add(input.value);
		}
		
	});
	
}

/*  
     람다식으로 
 
     radios.forEach(input => {
	    input.onchange = e => {
		let box = input.parentElement.nextElementSibling;
		box.classList.remove('red');
		box.classList.remove('blue');
		box.classList.remove('green');
		box.classList.add(input.value);
	}
	
});

*/

</script>



</head>
<body>
<h2>class selector</h2>

<div>
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">

	<label>red</label>
	<input type="radio" name="color1" value="red" >
	<label>blue</label>
	<input type="radio" name="color1" value="blue" >
	<label>green</label>
	<input type="radio" name="color1" value="green" >
</div>
<div id="box1" >box1</div>


<div>
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">

	<label>red</label>
	<input type="radio" name="2color" value="red" >
	<label>blue</label>
	<input type="radio" name="2color" value="blue" >
	<label>green</label>
	<input type="radio" name="2color" value="green" >
</div>
<div id="box2" >box2</div>


<div>
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">

	<label>red</label>
	<input type="radio" name="color3" value="red" >
	<label>blue</label>
	<input type="radio" name="color3" value="blue" >
	<label>green</label>
	<input type="radio" name="color3" value="green" >
</div>
<div id="box3">box3</div>


<div>
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">

	<label>red</label>
	<input type="radio" name="color4" value="red" >
	<label>blue</label>
	<input type="radio" name="color4" value="blue" >
	<label>green</label>
	<input type="radio" name="color4" value="green" >
</div>
<div id="box4">box4</div>

</body>
</html>