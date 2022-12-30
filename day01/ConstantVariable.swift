let constant: String = "차후에 변경이 불가능한 상수 선언은 let"
var variable: String = "차후에 변경이 가능한 변수 선언은 var"

variable = "변수에는 이렇게 다른 값을 할당해 줄 수 있다."
//constant = "상수의 값을 변경하려고 하면 에러가 발생한다."

/*
 상수나 변수를 먼저 선언한 후 나중에 값을 할당하고 싶다면
 타입을 반드시 명시해주어야 한다.
 */

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 상수 sum 선언 후 처음으로 값을 할당. 이후에는 변경 불가능
sum = inputA + inputB
print("sum = \(sum)")

var nickName: String

// 변수 nickName 선언 후 처음으로 값을 할당. 변수는 이후에 변경 가능
nickName = "Jaeyoung"
print("before change: \(nickName)")

// 변수 값 변경
nickName = "Jaeyoung-Jin"
print("after change: \(nickName)")


