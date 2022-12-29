/*
 Swift의 기본 데이터 타입 --> Swift는 타입에 엄격하다.
 Bool, Int, UInt, Float, Double, Character, String
 */

//Bool
var someBool: Bool = true
someBool = false
// 다른 언어와 달리 숫자로 true, false 판단하지 않음
//someBool = 0
//someBool = 1


//Int
var someInt: Int = -100
//실수 할당 불가능
//someInt = 100.1


//UInt
var someUInt: UInt = 100
//음수 할당 불가능
//someUInt = -100
//Int 타입 변수 할당 불가능
//someUInt = someInt

//Float
var someFloat: Float = 3.14
//정수 할당 가능(직접 정수를 대입하는 것은 가능하지만 Int, UInt로 이미 선언되어 있는 변수를 할당하는 것은 불가능하다.)
someFloat = 3
someFloat = -3
print(someFloat)

//Double
var someDouble: Double = 3.14
//정수 할당 가능(직접 정수를 대입하는 것은 가능하지만 Int, UInt로 이미 선언되어 있는 변수를 할당하는 것은 불가능하다.)
someDouble = 3
someDouble = -3
print(someDouble)
//Float와 호환 안됨. Float 타입의 변수를 할당할 수 없음
//someDouble = someFloat


//Character(큰따옴표 사용)
var someCharacter: Character = "⚽️"
//문자가 한개가 아닌 여러개가 들어가면 String 타입이므로 사용 불가능
//someCharacter = "하하하"

var someString: String = "하하하 😄"
someString = someString + "웃으면 복이와요!"
//Character 타입을 String에 할당할 수 없다.
//someString = someCharacter

var characterSum: String
var str1: String = "ab"
var str2: String = "cd"

//var ch1: Character = "a"
//var ch2: Character = "b"

// Binary operator '+' cannot be applied to two 'Character' operands --> Character 타입은 덧셈 연산자 사용 불가능(결과 변수를 String으로 미리 선언해 놓아도 불가능)
//characterSum = ch1 + ch2

//String 타입은 덧셈 연산자로 사용 가능
characterSum = str1 + str2
print(characterSum)


