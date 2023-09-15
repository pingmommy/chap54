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
	
	var arr = new Array(20);
	
	for(var i =0; i< arr.length; i++){
	    arr[i] = new Array(40);
	};
	
	for(var i =0; i< arr.length; i++){
	    for(var j = 0; j<arr[i].length; j++){
	        arr[i][j]=false;
	    }
	}
	
	let cnt = no.innerText;
	let forecnt = foreno.innerText;
	let id = null;
	
	inter.onclick =function() {
			
			
		 id = setInterval(function() {
			let xhr = new XMLHttpRequest();
			xhr.open('GET', '/alpha',false);
			xhr.send();
			foreno.innerText = forecnt;
			no.innerText = cnt;
	
			if(cnt == 200){
			clearInterval(id);
		    }
			
			let a = JSON.parse(xhr.responseText);
			console.log("a",a);
			let td = surface.rows[a.line-1].cells[a.column-1];
			td.style.color=a.fg;
			td.style.background=a.bg;
			td.innerText=a.ch;
			forecnt++;
			console.log("inside",arr[a.line-1][a.column-1]);
			console.log(a.line-1);
			console.log(a.column-1);
			
			
					
					if(arr[a.line-1][a.column-1] == false){
						arr[a.line-1][a.column-1] = true;
						cnt++;
						console.log(cnt);
						console.log(arr);
					}
				 
			
		}, 1000);			

	}
	
	clear.onclick= function() {clearInterval(id); }
	
	btn.onclick = sync;
	
	function sync(){
		 btn.disabled = true;

		let xhr = new XMLHttpRequest();
		
		xhr.open('GET', '/alpha',false);
		
		xhr.send();
		let alpha = JSON.parse(xhr.responseText);
		
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
 		 btn.disabled = false;
 		
 		 if(arr[alpha.line-1][alpha.column-1]==false){
 			arr[alpha.line-1][alpha.column-1]= true;
 			cnt++;
 		 }
					console.log(cnt);
					console.log(arr);
 		no.innerText = cnt;
 		console.log(alpha.line-1);
 		console.log(alpha.column-1);
	}
	
}
	
	


</script>

</head>
<body>
<h1>AlphaGenerator</h1>
<button id="btn">ajax</button>
<button id="inter">INTERVAL</button>
<button id="clear">clearINTERVAL</button>

<span id="no">0</span>
<span id="foreno">0</span>
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