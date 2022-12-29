/*
 Optional Unwrapping
 - Optional Binding
 nil 체크 + 안전하게 값을 추출
 
 - Force Unwrapping
 옵셔널의 값을 강제로 추출
 */

/*
func printName(_ name: String) {
    print(name)
}

var myName: String? = nil
*/

//전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생
//Value of optional type 'String?' must be unwrapped to a value of type 'String'
//printName(myName)


//if-let 방식을 이용하여 Optional Binding을 해주어야 한다.
func printName(_ name: String) {
    print(name)
}

var myName: String! = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

//하나만 바인딩 하는 것이 아닌 여러개도 가능
var meName: String? = "jaeyoung"
var yourName: String? = nil

//yourName이 nil이기 때문에 실행되지 않는다.
if let name = meName, let friend = yourName {
    print("\(name) and \(friend)")
}

yourName = "hana"

//둘 다 nil이 아니므로 값이 출력된다.
if let name = meName, let friend = yourName {
    print("\(name) and \(friend)")
}


//강제 추출 방법
var myNameIs: String? = "jaeyoung"

//느낌표를 붙여주면 옵셔널 타입을 강제로 추출해준다. 추출된 값이 함수로 전달된다.
printName(myNameIs!)

myNameIs = nil

//강제추출시 값이 없으므로 런타임 에러 발생한다. nil일 경우 강제추출 불가능하다.
//print(myNameIs!)

//암시적 추출 옵셔널은 선언할때부터 강제 추출을 가정하고 선언하는 것이다.
var yourNameIs: String! = "hana"

//느낌표를 별도로 붙여주지 않더라도 강제 추출을 통한 전달이 가능하다.
printName(yourNameIs)

