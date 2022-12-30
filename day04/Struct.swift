/*
 struct 이름 {
    구현부
 }
 
 구조체 안의 상수와 변수: 프로퍼티
 구조체 안의 함수: 메서드
 
 */

struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불편 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

//가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

//불변 인스턴스
let immutable: Sample = Sample()

//mutable.mutableProperty = 200
//mutable.immutableProperty = 200

//타입 프로퍼티 및 메서드
//인스턴스에서는 타입 프로퍼티 및 메서드 사용 불가능
//타입 자체만 사용할 수 있다.
Sample.typeProperty = 300
Sample.typeMethod()

//mutable.typeProperty = 400
//mutable.typeMethod()

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    //타입 메서드와 인스턴스 메서드를 같은 이름으로 구현 가능하다.
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var jaeyoung: Student = Student()
jaeyoung.name = "jaeyoung"
jaeyoung.class = "스위프트"
jaeyoung.selfIntroduce()


//불변 인스턴스 이므로 프로퍼티 값 변경 불가
//컴파일 오류 발생
let jina: Student = Student()
//jina.name = "jina"
//디폴트 값 출력
jina.selfIntroduce()




