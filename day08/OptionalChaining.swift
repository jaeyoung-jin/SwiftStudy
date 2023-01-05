/*
 옵셔널 체이닝
 
 옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티로
 또다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있다.
 */

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let jaeyoung: Person? = Person(name: "jaeyoung")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")
// 만약 우리집 경비원의 직업이 궁금하다면?

// 1. 옵셔널 체이닝을 사용하지 않는 경우
func guardJob(owner: Person?) {
    //owner가 존재하는지 확인
    if let owner = owner {
        //집이 있는지 없는지 확인
        if let home = owner.home {
            //경비원이 있는지 없는지 확인
            if let `guard` = home.guard {
                //경비원의 직업이 있는지 없는지 확인
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob) 입니다.")
                } else {
                    print("우리집 경비원은 직업이 없어요.")
                }
            }
        }
    }
}

guardJob(owner: jaeyoung)


// 2. 옵셔널 체이닝을 사용하는 경우
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob) 입니다.")
    } else {
        print("우리집 경비원은 직업이 없어요.")
    }
}

guardJobWithOptionalChaining(owner: jaeyoung)

print(jaeyoung?.home?.guard?.job) //nil

jaeyoung?.home = apart

print(jaeyoung?.home) //Optional(Apartment)
print(jaeyoung?.home?.guard) //nil

print(jaeyoung?.home?.guard?.name)
print(jaeyoung?.home?.guard?.job)
jaeyoung?.home?.guard?.job = "경비원"
                        
                        

print(jaeyoung?.home?.guard)
                        
                        
                        
// nil 병합 연산자
var guardJob: String

guardJob = jaeyoung?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) //경비원

jaeyoung?.home?.guard?.job = nil

guardJob = jaeyoung?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)
                                    
