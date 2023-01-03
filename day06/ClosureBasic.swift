/*
 클로저
 코드의 블럭
 일급 시만(first-citizen)
 변수, 상수 등으로 저장, 전달 인자로 저장이 가능
 함수: 이름이 있는 클로저!
 
 정의
 { (매개변수 목록) -> 반환타입 in
    실행 코드
 }
 */

//함수 사용의 경우와 클로저 사용의 경우 비교

//함수
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)

print(sumResult)//3

//클로저의 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

sumResult = sum(1, 2)
print(sumResult) //3

//함수는 클로저의 일종이므로 sum 변수에는 당연히 함수도 할당할 수 있다.
sum = sumFunction(a:b:)

sumResult = sum(1, 2)
print(sumResult)

//클로저는 주로 함수의 전달인자로서 많이 사용된다.

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)
print(calculated)

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated)

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated)

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calculated)

