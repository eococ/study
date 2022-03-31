<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<!-- <script src="TimerJs.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){
	
/* 
기능
	타이머 시작 / 타이머 일시정지 / 타이머 종료 / 알람 등록 이벤트
	알람 발생 이벤트 / 시간 업데이트 이벤트
	https://stickode.tistory.com/230
	https://merrily-code.tistory.com/55 //자동차
	*/
	var time = 0;
	var seconds = 0;
	var minutes = 0;
	var startFlag = true;
	var timer;
	
	$("#startBtn").on("click",function(){
	timer = setInterval(function(){
		time++;
		if(time >= 10){
			seconds++;
			if(time == 10){
				time = 0;
			}
		}
		if(seconds >= 60){
			minutes++;
			if(seconds == 60){
				seconds = 0;
			}
		}
		$(".time-box").html(minutes + ":" + seconds + ":"+ time);	
		
	},100);
	});

	
	//일시정지
	$("#stopBtn").on("click", function(){
		startFlag = false;
		if(startFlag == false ){
			clearInterval(timer);
		}
	});
	
	
	//리셋
	$("#resetBtn").on("click", function(){
		clearInterval(timer);
		time = 0;
		seconds = 0;
		minutes = 0;
		$(".time-box").html(minutes + ":" + seconds + ":"+ time);	
	});
});	


</script>
<div class="time-box">
0:0:0
</div>
<button id="startBtn" >시작</button>
<button id="stopBtn" >일시정지</button>
<button id="resetBtn" >초기화</button>

<select name="setAlarm" id="setAlarm"></select>


 


</body>
</html>