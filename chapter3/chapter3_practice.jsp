<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<title>callback / this</title>
</head>
<body>
<script type="text/javascript">


function whatYourName(name, callback){
	console.log('name : ', name);
	callback();
} 	
function finishFunc(){
	console.log('finish function');
}
whatYourName('jimin',finishFunc);


//전역변수, 지역변수 콜백함수의 파라미터로 전달 가능
var fruit = 'apple';

function callbackFun(callback){
	var vegetable = 'tomato';
	callback(vegetable);
}

function eat(vegetable){
//	console.log(`fruit : ${fruit} / vegetable : ${vegetable}`);
	console.log("fruit : " + fruit + " / vegetable :" +  vegetable);
}

callbackFun(eat);


/**
 * Array.prototype.reverseForeach
 */
 
 console.log("========================= Array.prototype.reverseForeach[1] =============================================");
var array1 = ['one','two','three'];
console.log("[...array1].reverse() : " + [...array1].reverse());
console.log("원본배열 확인 : " + array1);
console.log("reverse() " + array1.reverse());


var array2 = ['1','2','3','4'];
array2.reverse().forEach(x => console.log(x));

var arr3 = ['하나','둘','셋','넷','다섯'];

arr3.slice().reverse().forEach(function(currentValue, index, arr3){
	console.log("index -> " + index);
	console.log("currentvalue -> " + currentValue);
});

var arr3 = ['A','둘','셋','넷','다섯'];
arr3 = [];
arr3.forEach(function(currentValue, index, arr3){
	console.log("index -> " + index);
	console.log("currentvalue -> " + currentValue);
	
	console.log("arr3 -> " + arr3[0]);
});

//
var array3 = ['one','two','three','four'];
array3.slice().reverse().forEach(function(x){
	console.log("x -> " + x);
});


console.log("========================= Array.prototype.reverseForeach[2] =============================================");

// Array.prototype.reverseForeach
var array4 = ['하나','둘','셋','넷','다섯'];
Array.prototype.reverseForEach2 = function(callback){
	for(var i = this.length -1; i >= 0; i--){
		callback(this[i], i);
	}
};

array4.reverseForEach2(function(val, index){
	console.log("value : ", val, ", index :" , index);
});

console.log("========================= Array.prototype.reverseForeach[3] =============================================");
var array5 = ['하나','둘','셋','넷','다섯'];
Array.prototype.reverseForEach3 = function(callback){
    array5.reverse().forEach(function(currentvalue, index){
        callback(currentvalue, index);
    })
};

array5.reverseForEach3(function(val, idx){
    console.log("value2 : " +  val + " , idx2 : " + idx);
}); 



</script>
	<h1>callback();</h2>
</body>
</html>
