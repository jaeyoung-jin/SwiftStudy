/*
 프로퍼티
 구조체, 클래스, 열거형 내부에 구현할 수 있다.
 단, 열거형 내부에는 연산 프로퍼티만 구현 가능하다.
 연산 프로퍼티는 var로만 선언할 수 있다.
 타입과 연관된 값들을 표현
 
 저장 프로퍼티(stored property)
 연산 프로퍼티(computed property)
 
 인스턴스 프로퍼티(instance property)
 타입 프로퍼티(type property)
 */

struct Student {
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    //타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    
    //읽기 전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다."
        }
    }
    
    //읽기 전용 타입 연산 프로퍼티
    //읽기 전용 프로퍼티에서는 get을 생략할 수 있다.
    static var selfIntroduction: String {
        return "학생타입입니다."
    }
}

//사용

print(Student.selfIntroduction) //학생타입입니다.

var jaeyoung: Student = Student()
jaeyoung.koreanAge = 26

jaeyoung.name = "jaeyoung"
print(jaeyoung.name) //jaeyoung

print(jaeyoung.selfIntroduction)
//저는 Swift반 jaeyoung입니다.

//koreanAge 와 westernAge는 들어와 있는 값에 따라 자동 변환되고 할당된다.
print("제 한국 나이는 \(jaeyoung.koreanAge)살이고, 미국 나이는 \(jaeyoung.westernAge)살 입니다.")
//제 한국 나이는 26살 이고, 미국 나이는 25살 입니다.

var myWesternAge: Int = 22
jaeyoung.westernAge = myWesternAge
print("한국나이는 \(jaeyoung.koreanAge)")




//응용

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

// won 과 dollar는 들어와 있는 값에 따라 자동 변환되어 할당된다.
var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.dollar) //10

moneyInMyPocket.dollar = 100
print(moneyInMyPocket.won)//110000


/*
 지역변수, 전역변수
 
 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역, 전역 변수에도 모두 사용 가능하다.
 */

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}

print(sum) //300
