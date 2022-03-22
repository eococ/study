
## 콜백
> 콜백 함수는 다른 함수의 매개변수로 함수를 전달하고 특정 이벤트가 발생한 후 매개변수로 <br>
> 전달한 함수가 다시 호출되는 것을 의미한다.
> [콜백 예제](https://github.com/eococ/study/blob/main/WebContent/chapter3_practice.jsp)
	
### 자바와 자바스크립트의 구현방법 차이
- 자바스크립트의 경우 콜백함수를 function 으로 서술하지만, 자바의 경우 A클래스에서 동작할 수 없고 B클래스에서만 <br>
  동작할 수 있는 메서드를 A클래스에서 인터페이스로 선언하여 B클래스에서 정의하고 A측에서 호출할 수 있도록 구현한다.

- Array.prototype.reverseForeach
  자신의 생각으로 구현해보기  
  현재 순환 인덱스를 반환하기  
  콜백함수의 반환값이 true면, 반복 중단하기
  
<br>


## this
>this는 문맥에 따라서 다양한 값을 가지는데, this가 쓰이는 함수를 어떤 방식으로 실행하느냐에 따라서 그 역할이 구분된다.
>this의 값들은 크게 4가지 정도로 나눌 수 있다. 즉, this를 이용하는 함수를 4가지 방식 중에서 어떤 방식으로 실행하느냐에 따라서
>this의 값이 결정된다는 뜻이다.
 
 
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

그리고, 일반 함수 실행 방식으로 foo라는 함수를 실행하였다. 이 때의 this는 window의 객체를 가리키므로 위 코드에서 __console.log(this.name)__; 은 <br>
console.log(window.name);이라고 한 것과 동일하다. 그러므로 위 코드를 실행하면 console 창에는 'julia'가 출력된다.






#### this 의 특징
- 객체 자신에 대한 참조값을 가진다. (자기 자신을 가리킨다.)
- 메소드 내에서만 사용된다.
- 객체 자신을 메소드에 전달하거나 리턴하기 위해 사용된다.
- 객체 생성자 내에서 사용할 경우, 다른 생성자를 호출한다.
- 매개 변수와 객체 자신이 가지고 있는 변수의 이름이 같은 경우 이를 구분하기 위해 자신의 변수에 this를 사용한다.
- static 메소드에서는 사용할 수 없다.
	

	
	
## 	Function.prototype.call`javascript`
## Function.prototype.apply
## Function.prototype.bind

<br>
