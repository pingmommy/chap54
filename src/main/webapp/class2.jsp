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

</head>
<body>
<h2>class selector</h2>
<hr>
<div id="box1" >box1</div>
<hr>
<div>
<fieldset>
   <legend>SHAPE</legend>	
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">
</fieldset>	

<fieldset>
  <legend>COLOR</legend>
	<label>red</label>
	<input type="radio" name="color" value="red" >
	<label>blue</label>
	<input type="radio" name="color" value="blue" >
	<label>green</label>
	<input type="radio" name="color" value="green" >
</fieldset>	
</div>
<hr>

<div id="box2" >box2</div>
<hr>
<div>
<fieldset>
   <legend>SHAPE</legend>	
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">
</fieldset>	

<fieldset>
  <legend>COLOR</legend>
	<label>red</label>
	<input type="radio" name="color" value="red" >
	<label>blue</label>
	<input type="radio" name="color" value="blue" >
	<label>green</label>
	<input type="radio" name="color" value="green" >
</fieldset>	
</div>
<hr>
<div id="box3">box3</div>
<hr>
<div>
<fieldset>
   <legend>SHAPE</legend>	
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">
</fieldset>	

<fieldset>
  <legend>COLOR</legend>
	<label>red</label>
	<input type="radio" name="color" value="red" >
	<label>blue</label>
	<input type="radio" name="color" value="blue" >
	<label>green</label>
	<input type="radio" name="color" value="green" >
</fieldset>	
</div>
<hr>
<div id="box4">box4</div>
<hr>
<div>
<fieldset>
   <legend>SHAPE</legend>	
	<label>box</label>
	<input type="checkbox" value="box">
	<label>circle</label>
	<input type="checkbox" value="circle">
</fieldset>	
<fieldset>
  <legend>COLOR</legend>
	<label>red</label>
	<input type="radio" name="color" value="red" >
	<label>blue</label>
	<input type="radio" name="color" value="blue" >
	<label>green</label>
	<input type="radio" name="color" value="green" >
</fieldset>	
</div>

</body>
</html>