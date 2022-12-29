//반복문

var integers = [1, 2, 3]
let people = ["jaeyouhg": 25, "eric": 15, "mike": 12]

//for in
/*
 for item in items {
    code
 }
 */

for integer in integers {
    print(integer)
}

//Dictionary의 item은 key와 value로 구성된 튜플 타입이다.
for (name, age) in people {
    print("\(name): \(age)")
}

//while
/*
 while condition {
    code
 }
 */

//조건문은 반드시 Bool 값
while integers.count > 1 {
    integers.removeLast()
}

//repeat-while
/*
 repeat 구문 먼저 실행 되고, while문으로 조건 판별 후 반복
 repeat {
    code
 } while condition
 */

repeat {
    integers.removeLast()
} while integers.count > 0

