//매개변수 기본값

//기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func greeting(friend: String, me: String = "jaeyoung") {
    print("Hello \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생략할 수 있다.
greeting(friend: "hana")
greeting(friend: "john", me: "eric")

/*
 전달인자 레이블
 전달인자 레이블은 함수를 호출할 때
 매개변수의 역할을 좀 더 명확하게 하거나, 함수 사용자의 입장에서 표현하고자 할 때 사용한다.
 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용한다.
 
 func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    함수 구현부
    return
 }
 */

//위에서 정의한 greeting 함수와는 다른 함수로 인식됨
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "hana", from: "jaeyoung")


/*
 가변 매개변수
 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다.
 가변 매개변수는 함수당 하나만 가질 수 있다.
 가변 매개변수는 맨 뒤에 위치시키는 것이 좋다.
 func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
    함수 구현부
    return
 }
 */

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}

//가변 매개변수 friends: 를 빈칸으로 두거나 nil 값을 주면 에러 발생
print(sayHelloToFriends(me: "jaeyoung", friends: "hana", "eric", "wing"))
//빈 값을 주고싶다면 아예 생략을 하면됨
print(sayHelloToFriends(me: "jaeyoung"))

/*
 Swift는 함수형 프로그래밍 패러다임을 갖고 있는 다중 패러다임 언어이기 때문에
 Swift에서 함수는 1급 객체이다. 변수나 상수에 저장 될 수 있고 매개변수로도 전달될 수 있다.
 */

//함수의 타입 표현
//반환 타입을 생략할 수 없다.
//(매개변수1타입, 매개변수2타입 ...) -> 반환티입

//String 타입의 두 개의 매개변수를 갖는, 반환값이 없는 함수가 이 변수에 들어갈 것이다.
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "jaeyoung")

//매개변수 타입이 똑같은 다른 함수를 할당해 줄 수 있다.
someFunction = greeting(friend:me:)
someFunction("eric", "jaeyoung")

//타입이 다른 함수는 할당할 수 없다.
//가변 매개변수를 가져서 불가능하다.
//someFunction = sayHelloToFriends(me: friends:)

//함수 타입을 매개변수 타입으로 지정해주는 경우
func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

//함수 이름을 통해 매개변수 넘겨주기
runAnother(function: greeting(friend:me:))

//함수를 담고있는 변수를 통해 매개변수 넘겨주기
runAnother(function: someFunction)

