//조건문

//if-else 구문

/*
 if condition {
    statements
 } else if condition {
    statements
 } else {
    statements
 }
 */

let someInteger: Int = 100
if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

/*
 스위프트의 조건에는 항상 Bool 타입이 들어와야 한다.
 someInteger는 Bool 타입이 아닌 Int 타입이기 때문에 컴파일 오류가 발생한다.
 */

//switch문

/*
 switch value {
 case pattern:
    code
 default:
    code
 */

//범위 연산자를 활용하면 더욱 쉽다.

switch someInteger {
case 0:
    print("zero")
    //..은 이상~미만
case 1..<100:
    print("1~99")
case 100:
    print("100")
    //...은 이상~이하
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

//정수 외의 대부분의 기본 타입 사용 가능
switch "jaeyoung" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "jaeyoung":
    print("jaeyoung!!")
//case가 명확히 명시될 수 있는 경우 외에는 무조건 default 작성할 것
default:
    print("unknown")
}

