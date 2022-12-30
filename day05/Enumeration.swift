/*
 열거형
 각 case가 고유 값으로 취급된다.
 */

//정의

/*
 enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의한다.
 각 case는 소문자 카멜케이스로 정의한다.
 각 case는 그 자체가 고유의 값이다.
 */

/*
enum 이름 {
    case 이름1
    case 이름2
    case 이름3, 이름4, 이름5
    ...
}
 */

//열거형 사용

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
//tue로 값 변경
day = .tue

print(day)

//모든 케이스를 전부 구현해준다면 default를 구현할 필요 없다.
//하지만 하나라도 빼먹은 케이스가 있다면 반드시 default가 존재해야한다.
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}

/*
 원시값
 C 언어의 enum처럼 정수값을 가질 수도 있다.
 rawValue를 사용하면 된다.
 case별로 각각 다른 값을 가져야한다.
 */

enum Fruit: Int {
    //값은 지정해주지 않아도 자동으로 1씩 증가된다.
    case apple = 0
    case grape = 1
    case peach
//    case mango = 0  -> 0 값은 이미 존재하므로 불가능하다.
}

print("Fruit.peach.rauValue == \(Fruit.peach.rawValue)")

//정수 타입 뿐만 아니라 Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")

/*
 원시값을 통한 초기화
 
 rawValue를 통해 초기화 할 수 있다.
 rawValue가 case에 해당하지 않을 수 있으므로, 즉 해당 rawValue에 대한 case가 존재하지 않을 수 있으므로(nil) 옵셔널 타입으로 지정해주어야 한다.
 rawValue를 통해 초기화한 인스턴스는 옵셔널 타입이다.
 */

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 case는 \(orange)입니다.")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다.")
}


//열거형 메서드

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다.")
        }
    }
}

Month.mar.printMessage()


