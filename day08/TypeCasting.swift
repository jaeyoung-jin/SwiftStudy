/*
 타입 캐스팅
 
 스위프트의 타입 캐스팅은 인스턴스의 타입을 확인하는 용도 또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인하는 용도로 사용한다.
 is, as를 사용한다.
 */

/*
 다른 언어와 달리 Swift에서는 이런 경우를 타입캐스팅이라고 하지 않는다.
 Double 타입 인스턴스를 하나 더 생성하는 것이다.
 */

let someInt: Int = 100
let someDouble: Double = Double(someInt)


// 타입캐스팅을 위한 클래스의 정의
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다.")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다.")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}

var jaeyoung: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()

//타입 확인 -> is를 사용하여 타입을 확인한다.

var result: Bool

result = jaeyoung is Person //true
result = jaeyoung is Student //false
result = jaeyoung is UniversityStudent //false

result = hana is Person //true
result = hana is Student //true
result = hana is UniversityStudent //false

result = jason is Person //true
result = jason is Student //true
result = jason is UniversityStudent //true

if jaeyoung is UniversityStudent {
    print("jaeyoung은 대학생입니다.")
} else if jaeyoung is Student {
    print("jaeyoung은 학생입니다.")
} else if jaeyoung is Person {
    print("jaeyoung은 사람입니다.")
} //jaeyoung은 사람입니다.

switch jason {
case is Person:
    print("jason은 사람입니다.")
case is Student:
    print("jason은 학생입니다.")
case is UniversityStudent:
    print("jason은 대학생입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} //jason은 사람입니다.

switch jason {
case is UniversityStudent:
    print("jason은 대학생입니다.")
case is Student:
    print("jason은 학생입니다.")
case is Person:
    print("jason은 사람입니다.")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다.")
} //jason은 대학생입니다.


/*
 업 캐스팅
 
 as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 타입 정보를 전환해준다.
 Any 혹은 AnyObject로도 타입정보를 변환할 수 있다.
 암시적으로 처리되므로 생략해도 무방하다.
 */

var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
//var jina: UniversityStudent = Person() as UniversityStudent 컴파일 오류
var jina: Any = Person() //as Any 생략 가능

/*
 다운 캐스팅
 
 as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록 컴파일러에게 인스턴스의 타입 정보를 전환해준다.
 */

//조건부 다운 캐스팅 -> 실패 가능성이 있으므로 결과값은 옵셔널로 반환된다.
//as?

var optionalCasted: Student?

//mike는 Person 타입으로 선언되었으나 실질적으로 할당된 인스턴스는 UniversityStudent이다. 캐스팅이 될 수 있다.
optionalCasted = mike as? UniversityStudent

//jenny와 jina는 각각 Student와 Person이기 때문에 캐스팅 될 수 없다.
optionalCasted = jenny as? UniversityStudent //nil
optionalCasted = jina as? UniversityStudent //nil
optionalCasted = jina as? Student //nil

//강제 다운 캐스팅
//as!

var forcedCasted: Student

optionalCasted = mike as! UniversityStudent

//optionalCasted = jenny as! UniversityStudent //런타임 오류
//optionalCasted = jina as! UniversityStudent //런타임 오류
//optionalCasted = jina as! Student //런타임 오류


func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}


