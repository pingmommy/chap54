<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	
	
	 function sync(){
 		 btn.disabled = true;

		let xhr = new XMLHttpRequest();
		
		xhr.open('GET', '/alpha', false);
		
		xhr.send();
		let alpha = JSON.parse(xhr.responseText);
		
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
  		 btn.disabled = false;

		
	}
	 btn.onclick = sync;
	 
 	 function async(){
 		 
 		
 		 btn.disabled = true;
 		 
 		 
 
		 let xhr =  new XMLHttpRequest();
		 
		 xhr.onload = function(e){
			 let alpha = JSON.parse(xhr.responseText);
			 console.log(xhr.responseText);
			 let td = surface.rows[alpha.line-1].cells[alpha.column-1];
				td.style.color = alpha.fg;
				td.style.background = alpha.bg;
				td.innerText = alpha.ch;
   		 btn.disabled = false;
		 }
		 
		 
		 xhr.open('GET', '/alpha');
		 xhr.send();
		 
		 
	 } 
	
	
	inter.onclick = function() {
		setInterval(function() {
			let cnt = no.innerText;
			no.innerText = ++cnt;
			let xhr = new XMLHttpRequest();
			xhr.open('GET', '/alpha', false);
			xhr.send();
			let a = JSON.parse(xhr.responseText);
			
			let td = surface.rows[a.line-1].cells[a.column-1];
			td.style.color=a.fg;
			td.style.background=a.bg;
			td.innerText=a.ch;
			
		}, 100);
		
	}
	
	/* setInterval(function() {
		let cnt = no.innerText;
		no.innerText = ++cnt;
	}, 100) */
}

</script>

</head>
<body>
<h1>AlphaGenerator</h1>
<button id="btn">ajax</button>
<button id="inter">INTERVAL</button>

<span id="no">0</span>
<table id="surface">

 <c:forEach var="row" items="${surface}">
  <tr>
  	<c:forEach var="a" items="${row}">
  	 <td style="color:black; background:black" >${a.ch}</td>
  	</c:forEach>
  </tr>
 </c:forEach>

</table>

</body>
</html>