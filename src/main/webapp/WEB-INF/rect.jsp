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
	
	var arr = new Array(20).fill(new Array(40).fill(false));
	
	
	
	console.log(arr)
	
	
			let cnt = no.innerText;
	
	inter.onclick =function() {
			
			
		let id = setInterval(function() {
			let xhr = new XMLHttpRequest();
			xhr.open('GET', '/alpha', false);
			xhr.send();
			no.innerText = cnt;
		
			if(cnt == 100){
			clearInterval(id);
		    }
			
			let a = JSON.parse(xhr.responseText);
			
			let td = surface.rows[a.line-1].cells[a.column-1];
			td.style.color=a.fg;
			td.style.background=a.bg;
			td.innerText=a.ch;
			
			
			for(let i =0; i<20; i++){
				for(let j =0; j<40; j++){
					if(arr[a.line-1][a.column-1] != true){
						arr[a.line-1][a.column-1]=true;
						cnt++;
					}
				} 
			}
		}, 100);
			
			
		
		
	}
	
}
	
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
 		for(let i =0; i<20; i++){
			for(let j =0; j<40; j++){
				if(arr[alpha.line-1][alpha.column-1]==false){
					arr[alpha.line-1][alpha.column-1]=true;
					cnt++;
				}
			} 
		}
 		no.innerText = cnt;
 		console.log(alpha.line-1);
 		console.log(alpha.column-1);
	}
	
	
	


</script>

</head>
<body>
<h1>AlphaGenerator</h1>
<button id="btn">ajax</button>
<button id="inter">INTERVAL</button>

<span id="no">0</span>
<table id="surface">
<tbody>
 <c:forEach var="row" items="${surface}">
  <tr>
  	<c:forEach var="a" items="${row}">
  	 <td style="color:black; background:black" >${a.ch}</td>
  	</c:forEach>
  </tr>
 </c:forEach>
</tbody>
</table>

</body>
</html>