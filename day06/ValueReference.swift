/*
 값 타입과 참조 타입
 
 Class
 - 전통적인 OOP 관점에서의 클래스
 - 단일 상속
 - (인스턴스/타입) 메서드
 - (인스턴스/타입) 프로퍼티
 - 참조 타입
 - Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성
 
 Struct
 - C언어 등의 구조체보다 다양한 기능
 - 상속 불가
 - (인스턴스/타입) 메서드
 - (인스턴스/타입) 프로퍼티
 - 값 타입
 - Swift의 대부분의 큰 뼈대는 모두 구조체로 구성
 
 Enum
 - 다른 언어의 열거형과는 많이 다른 존재
 - 상속 불가
 - (인스턴스/타입) 메서드
 - (인스턴스/타입) 연산 프로퍼티
 - 값 타입
 - 열거형 자체가 하나의 데이터 타입
 - 열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급
 
 구조체는 언제 사용할까?
 - 연관된 몇몇의 값들을 모아서 하나의 데이터타입으로 표현하고 싶을 때
 - 다른 객체 또는 함수 등으로 전달될 때, 참조가 아닌 복사를 원할 때
 - 자신을 상속할 필요가 없거나, 자신이 다른 타입을 상속받을 필요가 없을 때
 - Apple 프레임워크에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용
 
 값 타입
 - 데이터를 전달할 때 값을 복사하여 전달
 
 참조 타입
 - 데이터를 전달할 때 값의 메모리 위치를 전달
 */

//Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
//값 타입이기 때문에 똑같은 인스턴스가 복사되어 second struct에 들어간다. 주소는 다르다.
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property: \(firstStructInstance.property)") //1

print("second struct instance property: \(secondStructInstance.property)") //2

let firstClassReference = ReferenceType()
//참조 타입이기 때문에 참조값이 복사되어 second class에 들어간다. 같은 주소를 공유하기 때문에 값도 함께 바뀐다.
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property: \(firstStructInstance.property)") //2

print("second class reference property: \(secondStructInstance.property)") //2

/*
 Data types in Swift
 
 public struct Int
 public struct Double
 public struct String
 public struct Dictionary<Key : Hashable, Value>
 public struct Array<Element>
 public struct Set<Element :  Hashable>
 
 - 스위프트는 클래스보다 구조체와 열거형 사용을 선호한다.
 - Apple 프레임워크는 대부분 클래스 사용
 - Apple 프레임워크 사용시 구조체/클래스 선택은 나의 몫이다.
 */



