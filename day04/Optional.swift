/*
 Optional
 값이 있을 수도 있고 없을 수도 있다.
 옵셔널이 아닌 상수에 nil값을 할당하려고 하면 컴파일 오류 발생
 옵셔널은 nil의 가능성을 명시적으로 표현한다.
 
 옵셔널의 장점
 - nil 가능성을 문서화 하지 않아도 코드만으로 충분히 표현 가능하다.
 - 문서, 주석 작성 시간을 절약할 수 있다.
 - 전달받은 값이 옵셔널이 아니라면 nil 여부 체크를 하지 않더라도 안심하고 사용할 수 있다.(어차피 nil일리가 없다.)
 - 효율적인 코딩이 가능하다.
 - 예외 상황을 최소화하는 안전한 코딩이 가능하다.
 */

/*
Optional = enum + general
옵셔널 타입은 열거형이므로 switch 구문으로 case 구분
enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
}
 
 옵셔널 선언 두 가지 방법
 let optionalValue: Optional<Int> = nil
 let optionalValue: Int? = nil
 
*/


/*
 Implicitly Unwrapped Optional(암시적 추출 옵셔널)
 느낌표 사용
 */
var optionalValue: Int! = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//기존 변수처럼 사용 가능
optionalValue = optionalValue + 1

//nil 할당 가능
optionalValue = nil

//nil값인 상태에서 옵셔널 변수에 접근하려고 하여 에러 발생
//optionalValue = optionalValue +1

//Opitonal
//물음표 사용
var optionalValuee: Int? = 100

switch optionalValuee {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

//nil 할당 가능
optionalValuee = nil

//기존 변수처럼 사용 불가 -> 옵셔널과 일반 값은 다른 타입이므로 연산 불가
//optionalValuee = optionalValuee +1

