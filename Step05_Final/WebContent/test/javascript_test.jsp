<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/javascript_test.jsp</title>
</head>
<body>
<script>
	const counter={
			start : function(){
				for(let i=0; i<10; i++){
					console.log(i);
				}
				return "start 함수가 리턴됨";
			}
	};
	
	let result=counter.start();
	
	console.log("end");
	
	
</script>
</body>
</html>