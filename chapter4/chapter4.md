
#### 객체지향 프로그래밍

## 클래스와 객체란?
#### 클래스
 - 변수(데이터, 속성)와 메서드(행위)를 가지고 있는 집합이다.
 - 객체를 생성하기 위한 틀이다.
 - class 키워드로 정의하고, new 연산자를 통해서 인스턴스를 생성한다.
 - 자바는 클래스들의 모임으로 이루어져 있다.
 <br>
 ** 클래스에서 객체를 생성하는 과정을 인스턴스화라고 하며, 생성된 객체를 인스턴스라고 한다. **
 
 <br><br>
 예를 들어 붕어빵을 만들기 위해서는 붕어빵틀이 필요하다.<br>
 여기서 붕어빵틀이 클래스(class)이고 이 붕어빵틀로 만들어진 붕어빵을 객체(object)라고 한다.
 
 ```java
 	public class fishBread { // class 키워드를 사용하여 정의한다(class name)
 		private String ingredient = "beans"; // 클래스 멤버 변수 정의
 		
 		public void makeBread(){ // 클래스 메서드 정의
 			System.out.println("make fishBean using" + ingredient);
 		}

		public static void main(String[] args){ 	
			fishBread fish = new fishBread(); //fish 객체 생성
			fish.makeBread();	//객체 생성 후 해당 클래스에서 정의한 메서드를 사용할 수 있다.
		}
 	}
 
 ```
 
#### 객체
__객체__란 실제로 존재하는 것. 사물 또는 개념이다. 객체가 가지고 있는 기능과 속성에 따라 객체의 용도가 정해지며, 클래스에 정의된 내용대로 메모리에 생성된 것이다.
<br><br>

__인스턴스화__
클래스로부터 객체를 만드는 과정을 말한다.

__인스턴스__
어떤 클래스부터 만들어진 객체를 그 클래스의 인스턴스라고 한다.

__객체의 구성 요소__
- 속성(property)
	멤버변수(member variable), 특성(attribute), 필드(field), 상태(state)

- 기능(function)
	메서드(method), 함수(functino), 행위(behavior)

[img](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F3IrmW%2Fbtq5TrTxCrB%2FNColiheECpA98LbijaT53K%2Fimg.png)

```java
	클래스명 변수명; //클래스의 객체를 참조하기 위한 참조변수를 선언
	변수명 = new 클래스명(); //클래스의 객체를 생성 후, 객체의 주소를 참조변수에 저장
	
	Tv t; //Tv 클래스 타입의 참조변수 t를 선언
	t = new Tv(); // Tv 인스턴스를 생성한 후에,  생성된 Tv 인스턴스의 주소를 t에 저장
```

예)



 
 
 
 
 
 
 
 
 
 
 
 

## 상속이란?

## 인터페이스란?

## 객체지향 프로그래밍이란?

## 객체지향의 장/단점?

## 추상화란?

## 객체지향 3요소 5원칙

## AOP란?

<br>

처음 프로그램밍을 접하면 굉장히 어려운 내용입니다.  
각자 본인만의 정의를 내리고, 예제를 잘 작성하길 바랍니다.
