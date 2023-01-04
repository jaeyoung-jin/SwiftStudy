/*
 상속
 
 스위프트의 상속은 클래스, 프로토콜 등에서 가능하다.
 열거형, 구조체는 상속이 불가능하다.
 스위프트는 다중상속을 지원하지 않는다.
 */

//클래스의 상속과 재정의

/*
 class 이름: 상속받을 클래스 이름 {
    구현부
 }
 */

class Person {
    var name: String = ""
    func selfIntroduce() {
        print("저는 \(name)입니다.")
    }
    
    //final 키워드를 사용하여 재정의를 방지할 수 있다.
    final func sayHello() {
        print("hello")
    }
    
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    /*
     재정의 가능한 class 메서드라도 final 키워드를 사용하면 재정의할 수 없다.
     메서드 앞의 static과 final class는 똑같은 역할을 한다.
     */
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

//Person class를 상속받은 class Student
class Student: Person {
    var major: String = ""
    
    //Person의 메서드를 재정의
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다.")
        // 부모 클래스의 메서드 호출
        super.selfIntroduce()
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
        
    //static을 사용한 타입 메서드는 재정의 할 수 없다.
    //final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없다.
}

let jaeyoung: Person = Person()
let hana: Student = Student()

//Person
jaeyoung.name = "jaeyoung"

//Student
hana.name = "hana"
hana.major = "Swift"

jaeyoung.selfIntroduce()

hana.selfIntroduce()

Person.classMethod() //type method - class

Person.typeMethod() //type method - static

Person.finalClassMethod() //type method - final class

Student.classMethod() //overriden type method - class

Student.typeMethod() //type method - static

Student.finalClassMethod() //type method - final class
