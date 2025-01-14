
## 콜백
> 콜백 함수는 다른 함수의 매개변수로 함수를 전달하고 특정 이벤트가 발생한 후 매개변수로 <br>
> 전달한 함수가 다시 호출되는 것을 의미한다.
> [콜백 예제](https://github.com/eococ/study/blob/main/WebContent/chapter3_practice.jsp)
	
#### 자바와 자바스크립트의 구현방법 차이
- 자바스크립트의 경우 콜백함수를 function 으로 서술하지만, 자바의 경우 A클래스에서 동작할 수 없고 B클래스에서만 <br>
  동작할 수 있는 메서드를 A클래스에서 인터페이스로 선언하여 B클래스에서 정의하고 A측에서 호출할 수 있도록 구현한다.

- Array.prototype.reverseForeach
  자신의 생각으로 구현해보기  
  현재 순환 인덱스를 반환하기  
  콜백함수의 반환값이 true면, 반복 중단하기
  
<br>


## this
>this는 문맥에 따라서 다양한 값을 가지는데, this가 쓰이는 함수를 어떤 방식으로 실행하느냐에 따라서 그 역할이 구분된다.
> 즉, this를 이용하는 함수를 어떤 방식으로 실행하느냐에 따라서 this의 값이 결정된다는 뜻이다.
 
 
#### 1. 일반 함수 실행 방식
첫 번째로, 일반 함수 실행 방식으로 함수를 실행했을 때 this의 값은 Global Object를 가리킨다. 즉, 브라우저 상에서는 window 객체를 말한다.
일반 함수 실행 방식이란 아래 예제 코드처럼 우리가 함수를 선언한 후, 실행할 때 흔히 사용하는 방식을 말한다.

```javascript
	function foo() {
		console.log(this);
	}
	foo();
```

위 코드에서 foo(); 로 호출하는 방식을 일반 함수 실행 방식이라고 한다. 이 때, foo 함수 안에 있는 this는 글로벌 객체, 브라우저 상에서는 <br>
window 객체를 가리킨다.

```javascript
	var name = 'julia';
	function foo () {
		console.log(this.name); 
	}
```

위 코드에서 전역 변수로 name이란 변수를 만들고 julia이라는 값을 할당하였다. 이 변수는 전역 변수이기 때문에 전역 객체인 window에 속성으로 추가된다.
즉, 우리가 var name='julia';라는 코드를 쓰면 window 객체에 name이라는 key와 julia라는 value가 추가된다.

그리고, 일반 함수 실행 방식으로 foo라는 함수를 실행하였다. 이 때의 this는 window의 객체를 가리키므로 위 코드에서 __console.log(this.name)__; 은 
console.log(window.name);이라고 한 것과 동일하다. 그러므로 위 코드를 실행하면 console 창에는 'julia'가 출력된다.


```javascript
	var age = 100;
	
	function foo () {
		var age = 99;
		bar(age);
	}
	
	function bar(){
		console.log(this.age);
	}
	
	foo();
```

보통 일반 함수 실행 방식에서 this는 window 객체를 가리킨다. 따라서 위 코드에서 bar 함수 내부의 this.age는 window.age를 가리키고, 이는 전역변수로 선언된 age 변수의 값을 말한다. 그러므로 위 코드가 실행하면 99가 아닌 100이 출력된다.


#### 2. 도트 표기법
```javascript
	함수이름.속성명();
```

도트를 사용하여 객체의 속성 값에 접근할 수 있다. 이때 this는 도트 앞에 써있는 개체 자체를 가리킨다.
객체 속성을 ()없이 인스턴스로 만들고 일반 함수 호출 방식으로 부르면 다시 Global Object를 가리키게 된다. 
아래 예제의 마지막 두 번째 줄이 그 예시이다.

```javascript
	function foo(){
		console.log(this.age);
	}
	var age = 100;
	
	var ken = {
		age : 10,
		foo : foo
	}
	
	var foo2 = {
		age : 20,
		foo : foo
	}
	
	ken.foo(); // 10
	foo2.foo(); //20;
	
	
	var fn = foo2.foo;
	fn(); //100
	
	
```

#### 생성자 함수 내부에서 this는 생성자 함수가 생성할 인스턴스와 바인딩 된다.

````javascript
	function person(){
		this.firstName = "jimin",
		this.lastname = "Kim",
		this.start = function(){
			console.log(this.firstName + "drives a car");
		}
	}
	
	var person1 = new person();
	console.log(person1); // jimin drives a car
	
````

<br><br>

#### this 의 특징
- 객체 자신에 대한 참조값을 가진다. (자기 자신을 가리킨다.)
- 메소드 내에서만 사용된다.
- 객체 자신을 메소드에 전달하거나 리턴하기 위해 사용된다.
- 객체 생성자 내에서 사용할 경우, 다른 생성자를 호출한다.
- 매개 변수와 객체 자신이 가지고 있는 변수의 이름이 같은 경우 이를 구분하기 위해 자신의 변수에 this를 사용한다.
- static 메소드에서는 사용할 수 없다.
	

<br><br><br><br>	
	
## 	Function.prototype.call`javascript` / Function.prototype.apply / Function.prototype.bind
`call`과 `apply` 메서드는 기본적으로 함수를 호출하는 역할을 한다. 그렇다면 기존 함수호출과의 차이점은 무엇일까?
그것은 바로, 해당 메서드를 사용해 함수를 '실행'하면 함수의 첫번째 인자로 전달하는 객체에 `this`를 바인딩 할 수 있다는 것이다.
이를 통해서 유사 배열 `arguments` 객체에 배열 메서드를 사용할 수 있다. 반면에 `bind`는 첫 번째 인자를 `this`에 바인딩하지만, 
함수를 실행하지 않으며, 새로운 함수를 반환한다
<br><br>

##### Call

`call`을 사용하면, 함수를 실행하고 함수의 첫 번쨰 인자로 전달하는 값에 this를 바인딩한다.

```javascript
	function logName(a,b,c){
		console.log(this.name);
		console.log(this.nationality);
		console.log(a + b + c );
	}
	
	var person = {
		name : 'jimin',
		nationality : 'south korea'
	}
	
	logName.call(person, 1,2,3); //jimin south korea 6
	
```

##### Apply
`apply`를 사용하면 함수를 실행하고 함수의 첫 번째 인자로 전달하는 값에 `this`를 바인딩한다.
`call`과의 차이점은 인자를 배열의 형태로 전달한다는 것이다. 이 때, 인자로 배열 자체가 전달하는 것이 아니라 배열의
요소들이 값으로 전달된다.


```jsvascript
	var array = ['a','b'];
	var elements = [0,1,2];
	array.push.apply(array, elements);
	console.info(array);
	
```


##### bind
bind() 메소드가 호출되면 새로운 함수를 생성한다. 받게되는 첫 인자의 value로는 `this` 키워드를 설정하고, 다음 인자들은 바인드된 함수의 인수에 제공된다.

```javascript
var module = {
	x : 42,
	getX : function(){
		return this.x;
	}
}

var unboundGetX = module.getX; //undefined

var boundGetX = unboundGetX.bind(module); // 42

```

`bind()`의 가장 간단한 사용법은 호출 방법과 관계없이 특정 `this` 값으로 호출되는 함수를 만드는 것이다. 흔히 발생하는 실수를 예제로 들어보자. 객체로부터 메소드를 추출한 뒤 그 함수를 호출할 때, 원본 객체가 그 함수의 `this`로 사용될 것이다 기대하는 것이다. 그러나 특별한 조치가 없으면 대부분의 경우 원본 객체를 손실된다. 원본 객체가 바인딩 되는 함수를 생성하면 이러한 문제를 해결할 수 있다.

```javascript
	this.x = 9;
	var module = {
		x : 81,
		getX = function(){
			return this.x;
		}
	};
	
	module.getX(); //81
	
	var retrieveX = module.getX;
	retrieveX(); // 9 반환 - 함수가 전역  스코프에서 호출됐음
	
	//module과 바인딩된 'this'가 있는 새로운 함수 생성
	//전역 변수 x와 module의 속성 x 혼동 주의!
	var boundGetX : retrieveX.bind(module);
	boundGetX(); // 81
	
	
	
```




























