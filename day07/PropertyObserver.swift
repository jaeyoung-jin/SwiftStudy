/*
 프로퍼티 감시자
 저장된 값이 변경될 때 호출된다.
 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행할 수 있다.
 */

//정의

struct Money {
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다.")
        }
        
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
    
    var dollar: Double = 0 {
        // willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
        }
    }
    
    //프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없다.
    var won: Double {
        get {
            return dollar * currencyRate
        }
        
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket: Money = Money()

moneyInMyPocket.currencyRate = 1150

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)

/*
 프로퍼티 감시자의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역, 전역 변수에도 모두 사용 가능하다.
 */

var a: Int = 100 {
    willSet {
        print("\(a)에서 \(newValue)로 변경될 예정입니다.")
    }
    
    didSet {
        print("\(oldValue)에서 \(a)로 변경되었습니다.")
    }
}

a = 200
