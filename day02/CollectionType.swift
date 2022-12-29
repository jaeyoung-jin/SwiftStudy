/*
 Array: 순서가 있는 리스트 컬렉션
 Dictionary: 키와 값의 쌍으로 이루어진 컬렉션
 Set: 순서가 없고, 멤버가 유일한 컬렉션
 */

//빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//Int 외의 다른 타입은 불가능
//integers.append(123.45)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

//빈 Double Array 생성
var doubles: Array<Double> = [Double]()

//빈 String Array 생성
var strings: [String] = [String]()

//빈 Character Array 생성
//[]는 새로운 빈 Array
var characters: [Character] = []

//let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//immutableArray.append(4)
//immutableArray.removeAll()

//Dictionary
//key가 String 타입이고 value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

//딕셔너리에서 값을 삭제하는 두 가지 방법
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
anyDictionary

//let으로 선언된 딕셔너리의 값 역시 변경 불가능
let emptyDictionary: [String: String] = [:]
let initializedDictionary: [String: String] = ["name": "jaeyoung", "gender": "female"]

//딕셔너리의 값을 새로운 변수에 할당해주는 경우
//해당 딕셔너리의 키에 해당되는 값이 있을 수도 있고 없을 수도 있기 때문에 에러 발생(불확실성)
//let someValue: String = initializedDictionary["name"]

//Set
//빈 Int Set 생성(Set은 축약 문법 없음)
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
//Set는 중복되지 않기 때문에 99는 단 한번만 추가된다.
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet

integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

//A와 B의 합집합
let union: Set<Int> = setA.union(setB)

//집합 상태는 정렬도 안되고 인덱스 값도 없기 때문에 배열로 변환하여 정렬 가능
let sortedUnion: [Int] = union.sorted()

//A와 B의 교집합
let intersection: Set<Int> = setA.intersection(setB)

//A와 B의 차집합(A - B)
let subtracting: Set<Int> = setA.subtracting(setB)
