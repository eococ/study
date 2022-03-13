<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>prototype</title>
</head>
<body>
	<script type="text/javascript">
	
	/**
			Array.prototype.slice()
			slice() 메서드는 어떤 배열의 begin부터 end까지 (end 미포함)에 대한 얕은 복사본을
			새로운 배열 객체로 반환한다. 원본 배열은 바뀌지 않는다.
		*/
		
		const animals = ['ant','bison','camel','duck','elephant'];
		//output : camel,duck,elephant
		console.log(animals.slice(2));
		//output : camel,duck
		console.log(animals.slice(2,4));
		//output : bison,camel,duck,elephant
		console.log(animals.slice(1,5));
		//output : duck,elephant
		console.log(animals.slice(-2));
		//output : camel, duck
		console.log(animals.slice(2, -1));
		//output : ant,bison, camel, duck, elephant
		console.log(animals.slice());
		
		
		
		/**
			Array.prototype.splice()
			splice() 메서드는 배열의 기존 요소를 삭제 또는 교체하거나 새 요소를 추가하여
			배열의 내용을 변경한다.
		*/
		var mine = [0,1,2,3];
		
		// 배열 요소 추가 - 배열 2번째 위치한 곳에 숫자 5를 추가한다.
		mine.splice(2,0,5);;
		console.log("5추가 : " +mine);
		
		// 배열 요소 추가 - 배열 2번째 위치한 곳에 숫자 5,7을 추가한다.
		mine.splice(2,0,5,7);
		console.log("5,7 추가 : " + mine);
		
		var mine = [0,1,2,3];
		
		// 배열 요소 제거 - 배열 1번째부터 1개를 제거한다.
		mine.splice(1,1);
		console.log("1번쨰 1개 제거 : " + mine);
		
		// 배열 요소 제거 - 배열 1번째부터 2개를 제거한다.
		mine.splice(1,2);
		console.log("1번째 2개 제거 : " + mine);
		
		var mine = [0,1,2,3];
		
		// 배열 요소 교체 - 배열 1번째부터 1개를 제거하고 숫자 5로 추가
		mine.splice(1,1,5);
		console.log("1번째부터 1개 제거하고 숫자 5 추가 : " + mine);
		
		// 배열 요소 교체 - 배열 1번째부터 2개를 제거하고 숫자 5로 추가
		mine.splice(1,2,5);
		console.log("1번째 2개 제거 숫자5추가 : " + mine);
		
		
		
		/**
			Array.prototype.join()
			join() 메서드는 배열의 모든 요소를 연결해 하나의 문자열을 만든다. 
			요소들의 구분은 콤마(,)로 한다. 요소들을 다른 문자로 하려면 () 안에 원하는 문자를 넣는다.
		*/		
		var arr = ['one','two','three'];
		
		console.log(arr.join());
		
		console.log(arr.join('-'));
		console.log(arr.join('ㅎㅎ'));
		console.log(arr.join('**'));
	
		
		
		/**
		Array.prototype.push()
		배열의 마지막에 하나 이상의 새로운 요소를 추가한 후, 변경된 배열의 길이를 반환한다.
		*/		
		var arr = [1,2,3];
		
		arr.push(4);
		console.log("push : " + arr);
		arr.push(5,6,7);
		console.log("push2 : " + arr);
		
		/**
		Array.prototype.pop
		배열에서 마지막 요소를 제거하고 그 요소를 반환합니다.
		*/				
		var arr = [1,2,3,4,5,6,7,8,9];
		arr.pop();
		console.log("pop1 : " + arr);
		arr.pop();
		console.log("poppop : " + arr);

		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>

</body>
</html>
