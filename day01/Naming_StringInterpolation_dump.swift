import Swift

/*
 Lower Camel Case: function, method, variable, constant --> 첫 문자가 소문자
 Upper Camel Case: type(class, struct, enum, extension ...) --> 첫 문자가 대문자
 */

let age: Int = 10

/*
 
 String interpolation
 문자열 내의 변수 또는 상수의 실질적인 값을 표현하기 위해 사용
 \(변수 또는 상수)
 
 */
print("안녕하세요 저는 \(age + 15)살 입니다.")
print("---------------------")

class Person{
    var name: String = "jaeyoung"
    var age: Int = 25
}

let Jaeyoung: Person = Person()

//단순 출력
print(Jaeyoung)

print("---------------------")

//인스턴스에 대해 자세히 설명
dump(Jaeyoung)

