
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

//반환 값이 없는 함수 -> Void 키워드 사용
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//    함수 구현부
//    return
//
//}

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

//매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func maximumIntegerValue() -> Int {
    return Int.max
}

//매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//    함수 구현부
//    return
//}

func hello() -> Void { print("hello") }

// -> Void 생략 가능
//func 함수이름() {
//    함수 구현부
//    return
//}

func bye() { print("bye") }

//함수의 호출
sum(a: 3, b: 5)

printMyName(name: "jaeyoung")

printYourName(name: "hana")

maximumIntegerValue()

hello()

bye()


