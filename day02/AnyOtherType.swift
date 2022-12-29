/*
 Any: Swift의 모든 타입을 지칭하는 키워드
 AnyObject: 모든 클래스 타입을 지칭하는 프로토콜
 nil: 없음을 의미하는 키워드
 */

//Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다."
someAny = 123.12

//하지만 다른 타입의 변수에 Any 타입을 할당해 주는 것은 불가능하다.
//let someDouble: Double = someAny

//AnyObject
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
//Double 타입 할당 불가능
//someAnyObject = 123.12

//nil
//모든 타입을 할당 가능한 경우에도 빈 값은 들어올 수 없다.
//someAny = nil
//someAnyObject = nil
