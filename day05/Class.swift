/*
 클래스는 구조체와 매우 유사하다.
 구조체는 값 타입, 클래스는 참조 타입 이라는 차이점이 있다.
 클래스는 다중상속이 불가능하다.
 
 class 이름 {
    구현부
 }
 */


//프로퍼티 및 메서드

class Sample {
    var mutableProperty: Int = 100
    let immutableProperty: Int = 100
    
    static var typeProperty: Int = 100
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드 -> 2 types(static, class)
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

//클래스 사용

//var로 선언한 인스턴스와 let으로 선언한 인스턴스 모두 mutableProperty 값을 변경 가능하다.

var mutableReference: Sample = Sample()
mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()
immutableReference.mutableProperty = 200
//immutableReference.immutableProperty

//Cannot assign to value: 'immutableReference' is a 'let' constant
//immutableReference = mutableReference

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod()


//Static member 'typeProperty' cannot be used on instance of type 'Sample'
//mutableReference.typeProperty = 400

//Static member 'typeMethod' cannot be used on instance of type 'Sample'
//mutableReference.typeMethod()

//학생 클래스

class Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

//타입 메서드 selfIntroduce()
Student.selfIntroduce()

var jaeyoung: Student = Student()
jaeyoung.name = "jaeyoung"
jaeyoung.class = "스위프트"

//인스턴스 메서드 selfIntroduce()
jaeyoung.selfIntroduce()

let jina: Student = Student()
jina.name = "jina"
jina.selfIntroduce()


