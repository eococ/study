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

		
		
		/**
		Array.prototype.unshift
		새로운 요소를 배열의 맨 앞쪽에 추가하고, 새로운 길이를 반환한다.
		*/			
		var arr = [1,2,3,4,5];
		arr.unshift(0);
		console.log("unshift : " + arr);
		arr.unshift("지민","연습");
		console.log("unshift2 : " + arr);

		
		
		/**
		Array.prototype.shift
		배열에서 첫 번째 요소를 제거하고, 제거된 요소를 반환한다.
		*/
		var arr2 = ['하나','둘','셋','넷','다섯'];
		arr2.shift();
		console.log("shift : " + arr2);
		arr2.shift();
		console.log("shift2 : " + arr2);
		
		
		
		/**
		Array.prototype.fill
		인수로 전달받은 값을 배열의 처음부터 끝까지 요소로 채운다.
		*/
		var arr = [1,2,3,4,5];
		
		// 인수 0을 배열의 처음부터 끝까지 채운다
		//arr.fill(0);
		console.log("fill : " + arr);
		
		//인수 0을 두번째인자(인덱스1)부터 채운다.
		arr.fill(0,1);
		console.log("fill2 : " + arr);
		
		//인수 3을 두번째인자(인덱스1)부터 세번째인자 이전 인덱스까지 채운다.
		arr.fill(3,1,3);
		console.log("fill3 : " + arr);

		
		
		/**
		Array.prototype.forEach
		배열의 값을 하나씩 받아서 내가 작성한 function을 실행한다.
		 forEach는 제공받은 function을 array의 각 element마다 실행해주기만한다.
		 function의 결과를 return 해주지 않는다. forEach의 return 값은 undefined다.
		 forEach는 throw(예외)를 발생시키지 않으면 중간에 반복을 종료할 수 없다. 
		*/	
		var arr = [1,2,3];
		
		var result = arr.forEach(num => console.log("forEach : " + num));
		
		arr.forEach(function(number){
			console.log("number " + number);
		});
		
		//forEach는 return이 없다. 즉, callback 함수에 의해서 어떤 결과물을 내놓고 싶으면 함수밖의 변수를 사용해야 한다.
		var arr = [1,2,3,4,5,6,7,8];
		var arr2 = [];
		
		arr.forEach(function(num){
			if(num % 2 == 0){
				arr2.push(num);
			}
		});
		console.log("forEach2 : " + arr2);
		


		
		/**
		Array.prototype.find
		주어진 판별 함수를 만족하는 첫번째 요소의 값을 반환한다. 그런 요소가 없으면 undefined 반환
		*/		
		var arr = [1,2,3,4,5,6,7,8];
		var result = arr.find(num => num > 5);
		
		console.log("find : " + result);
		
		var inventory = [
		    {name: 'apples', quantity: 2},
		    {name: 'bananas', quantity: 0},
		    {name: 'cherries', quantity: 5}
		];
		
		var result = inventory.find(fruit => fruit.name == 'apples');
		
		console.log("find2 : " + JSON.stringify(result));
		

		
		/**
		Array.prototype.filter
		주어진 함수의 테스트를 통과하는 모든 요소들을 모아 새로운 배열로 반환한다.
		*/			
		
		var arr = [12, 5, 8, 130, 44];
		var result = arr.filter(num => num > 20);
		console.log("filter : " + result);
		
		//json 형식에서 filter 사용
		var arr = [
		  { id: 15 },
		  { id: -1 },
		  { id: 0 },
		  { id: 3 },
		  { id: 12.2 },
		  { },
		  { id: null },
		  { id: NaN },
		];
		
		function filterId(num){
			return arr.id > 10;
		}
		
		var result = arr.filter(filterId);
		console.log("filter2 : " + result);

	
		
		
		
		
		
		
		
		
		
	</script>

</body>
</html>
