<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/javascript_test5.jsp</title>
<link rel="icon" href="${pageContext.request.contextPath }/images/kim1.png" type="image/x-icon" />
</head>
<body>
<script>
	/*
		javascript 비동기 작업 테스트
	*/
	
	//5초 뒤에 resolve 되는 Promise 객체를 리턴하는 함수
	function readPromise(){
		const p=new Promise(function(resolve){
			//5초 뒤에 호출되는 함수 등록 (5초 뒤에 읽는 작업이 끝난다고 가정)
			setTimeout(function(){
				resolve("결과 data");
			}, 5000);
		});
		return p;
	}
	
	//함수 안에 await 가 있으면 async 예약어를 함수에 붙여줘야 한다.
	async function read(callback){
		/*
			Promise 가 resolve 될 때 까지 기다리는 await 예약어
		*/
		const result=await readPromise();
		console.log("read() 작업을 완료했습니다.");
		console.log("result:"+result);
		//다 읽었을 때 호출하는 콜백 함수를 호출하면서 결과 넣어주기
		callback(result);
	}
	
	read(function(data){
		alert(data);
	});
	
	
	const util={
			readPromise: function(){
				const p=new Promise(function(resolve){
					//5초 뒤에 호출되는 함수 등록 (5초 뒤에 읽는 작업이 끝난다고 가정)
					setTimeout(function(){
						resolve("결과 data");
					}, 5000);
				});
				return p;
			},
			read: async function(callback){
				/*
					Promise 가 resolve 될 때 까지 기다리는 await 예약어
				*/
				const result=await this.readPromise();
				console.log("read() 작업을 완료했습니다.");
				console.log("result:"+result);
				if(this.onload){
					this.onload(result);
				}
			}
	};
	
	util.read();
	util.onload=function(data){
		alert(data);
	};
	
	console.log("페이지 로딩이 완료됩니다.");
</script>
</body>
</html>