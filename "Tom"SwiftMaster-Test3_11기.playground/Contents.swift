import UIKit

/*:
# 앨런 - Swift 마스터 스쿨 11기
*/
/*:
## 세번째 테스트 (4주차)
---
*/
/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 그동안 배운 내용의 복습 및 약간의 응용이 들어가 있을 뿐입니다. 이 문제를 잘 풀 수 있다고
 좋은 개발자가 될 수 있는 것도 아니고, 실망하거나 좌절할 필요도 없습니다.
 우린 이제 시작일 뿐입니다. 😄
 가장 중요한 것은 포기하지 않고, 꾸준함을 유지하는 것일뿐!
 안풀리면, 다음 문제로 넘어가면되고, 이번에 못풀면 잘 공부해서, 다음 번에 똑같은 문제를 잘 풀면됩니다.
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/

// 서술형의 경우, 주석처리를 하고 작성하면 됩니다.
// (시간이 약간 모자랄 수도 있을 것 같긴한데, 되는 대로 풀어서, 슬랙 DM으로 전달해 주세요!)

// 꼭 정해진 시간 이외에도 풀어보시는대로 전달해 주시면,
// 제가 대략적으로 실력을 파악하는데 도움이 됩니다. (조언도 드릴 수 있고요!)




/**==================================================================
 [1번 문제]
  - 함수 만들어 보기: 정수값을 한개 받아, 해당 정수가 짝수인지 여부를 판단하는 함수를
                  구현해 보세요. (힌트: 짝수 -> 참 / 홀수 -> 거짓)
 
    (함수 실행 예시)
    isEvenNumber(num: 3)    // 거짓
    isEvenNumber(num: 4)    // 참
 ===================================================================**/

// 함수 정의 (구현)


func isEvenNumber(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

// 함수 실행 (아래 주석 제거하고 실행해보기)

print("1번문제 결과 (1):", isEvenNumber(num: 3))
print("1번문제 결과 (2):", isEvenNumber(num: 4))





/**==================================================================
 [2번 문제]
  - Array(배열), Dictionary(딕셔너리), Set(집합)의 각각의 중요 특징과 차이점에 대해
    서술하고 간단한 예시 코드를 작성해 보세요.
 ===================================================================**/

// 1) 배열(Array)
// 중복이 가능하다 딕셔너리와 셋트에 비해 느리다
//




// 2) 딕셔너리(Dictionary)
// 키와 값으로 이루어져 있고 순서가 없다
// 키값은 유일해야하며 Hashable한 타입이다




// 3) 집합(Set)
// 수학적인 집합 개념이다 중복이 없다








/**==================================================================
 [3번 문제]
  - 아래의 personName변수에 들어있는 값을 if let 바인딩으로 언래핑해서 이름을
    출력해 보세요.
 ===================================================================**/

class Person {
    var name: String? = "홍길동"
}

var personName = Person().name


// 옵셔널 바인딩 코드 작성

if let unwrapPersonName = personName {
    print(unwrapPersonName)
}








/**==================================================================
 [4번 문제]
  - 아래의 a상수의 옵셔널 값을 switch문으로 이용해서 꺼내서 출력해 보세요.
    (힌트. some과, none 그리고, 연관값을 꺼내는 방법을 이용해 보세요.)
 ===================================================================**/


let a: Int? = 7


// (주석 해제하고) 나머지 전부 구현

switch a {
case .some(a):
    print(a)
case .none:
    print(a)
default:
    break
}





/**==================================================================
 [5번 문제]
  - 클래스나 구조체에서 initializer(생성자)의 역할이 무엇인가요? 간단하게 서술하세요.
 ===================================================================**/

// 저장속성의 값을 초기화 하는 역할을 한다










/**==================================================================
 [6번 문제]
  - 구조체의 멤버와이즈 이니셜라이저(생성자)가 무엇인가요? 개념에 대해 간단하게
    서술하고, (자유롭게) 예제 코드를 만들어 설명해주세요.
    (힌트. Memberwise (멤버에 관한))
 ===================================================================**/

// 구조체경우 저장속성을 생성자에서 초기화 하는 코드가 없어도 컴퓨터가 저장속성의 값의 생성자를 자동으로 생성해 준다












/**==================================================================
 [7번 문제]
  - 클래스와 구조체의 근본적인 메모리 구조의 차이점에 대해서, 간단하게 설명해주세요.
    (힌트. Heap(힙)과 Stack(스택)을 참고적으로)
 ===================================================================**/

// 클래스는 참조타입 이고 구조체는 값타입 이다
// 클래스 객체의 데이터는 Heap영역에 저장되고 스택에 객체의 데이터가 답긴 힙 영역의 메모리 주소가 저장되고 객체의 변수는 힙영역의 메모리 주소를 가르키고 있다, 메서드형태들은 데이터영역에 저장되고 객체의 힙메모리영역에서 데이터메모리영역을 참조하고 있다
// 구조체는 인스턴스를 생성할때 메모리의 데이터 영역에서 저장속성을 스택영역에 복사하여 사용하고 메서드 경우 메모리의 데이터영역을 참조한다









/**==================================================================
 [8번 문제]
  - 클래스(또는 구조체)에서 계산 속성의 의미가 뭔가요?
  - 아래의 Person2 구조체에서 bmi라는 계산 속성을 구현해서, 쉽게 사람의 BMI를 계산하고
    값을 얻을 수 있게 구현해 보세요.
    (읽기/ 쓰기 속성을 모두 구현해 보세요)
 
    BMI지수 = 몸무게 / 키 x 키         (몸무게를 키의 제곱으로 나눈 값이 BMI)
            (kg기준) (키는 미터 기준)
 
 ===================================================================**/

struct Person2 {
    var name: String = "사람"
    var height: Double = 160.0
    var weight: Double = 60.0
    
    //bmi 계산 속성 구현해서 완성
    var bmi: Double {
        get {
            let result = weight / (height * height) * 10000
            return result
        }
        set {
            weight = newValue * height * height / 10000
        }
    }
}

var personTom = Person2()
personTom.bmi = 30
personTom.weight
// (계산 속성에 대한) 간단한 서술
// (계산속성의 의미, 역할, 필요한 이유 등을 간단하게)

// 계산속성은 코드를 더욱 명확하게 한다
// get / set 으로 이루어져 있다








/**==================================================================
 [9번 문제]
  - 클래스(또는 구조체)에서 속성 감시자의 의미가 뭔가요?
  - 아래의 Profile 클래스에서 message의 변수(속성)에 didSet 속성감시자를 구현해보세요.
    (didSet에서 아래의 메세지를 출력해 보세요.)
 
    print("메세지 - \(여기에뭘써야하죠)에서 \(message)로 변경됨")
 
    위의 문장을 복사해서 사용하세요.
 ===================================================================**/

// 저장속성이 변하는 순간 해당메서드가 실행된다

class Profile {
    var message: String = "기본메세지"  {
        didSet {
            print("메서지 - \(oldValue)에서 \(message)로 변경됨")
        }
    }  // 속성 감시자 구현

}




var p1 = Profile()

p1.message
p1.message = "행복하다"
p1.message




/**==================================================================
 [10번 문제]
  - 값타입(Value Type)과 참조타입(Reference Type)에 대해 아는대로 서술하고
    차이점에 대해서 설명해 보세요.
 ===================================================================**/


// 1) 값타입(Value Type)
// 값을 복사해서 사용하는 방식이다
// 스위프트에서 제공하는 기본타입 및 구조체 프로토콜 열거형 등이 있다



// 2) 참조타입(Reference Type)
// 메모리주소를 복사해서 참조(가리키는) 타입이다
// 클로저와 클래스가 있다
// 메모리의 힙영역에 데이터가 저장되기에 오래 남는다
// 값타입 보다 속도가 느리다
// 스위프트에서 제공하는 ARC로 메모리 관리가 필요하다






/**==================================================================
 [11번 문제]
  - 객체지향 프로그래밍(OOP)의 4대 특징에 대해 나열하고, 간단하게 서술하세요.
 ===================================================================**/


// 추상화 - 공통적인 특징을 뽑아서 하나의 분류로 사용하는 것
// 캡슐화 - 연관된 속성과 메서드를 하나의 타입으로 묶어서 사용한다
// 다형성 - 하나의 객체가 다양한 타입으로 할당해 사용할수 있다
// 상속성 - 재사용 / 확장 을 해서 사용한다
//














/**==================================================================
 [12번 문제]
  - 아래의 코드 예제에서, Bclass는 Aclass를 상속하고 있습니다. Bclass의 저장속성인
    z를 고려해서, Bclass의 지정생성자를 한개이상 구현하고, 상위(Aclass)의 지정생성자
    (init(x: Int, y: Int))를 편의생성자로 재정의 해보세요.
    (자유롭게 구현해보세요.)
 ===================================================================**/


class Aclass {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    convenience init() {
        self.init(x: 0, y: 0)
    }
}



// 아래의 주석을 제거하고 코드를 구현

class Bclass: Aclass {

    var z: Int
    
    // 이 부분에 지정생성자 및 편의 생성자(상위의 지정생성자를 재정의해서) 구현
    init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    override convenience init(x: Int, y: Int) {
        self.init(x: x, y: y)
    }


}

var b: Bclass = Bclass(x: 3, y: 3)
b.x
b.y


/**==================================================================
 [13번 문제]
  - Singleton패턴이 무엇인가요? 아는 대로 간단하게 서술하고, (자유롭게) 간단한 예제 코드를
    작성해 보세요.
 ===================================================================**/


// 클래스의 객체가 오직 하나인 개념

class SingleTonPatten {
    static let single = SingleTonPatten()
    private init(){}
}

var single = SingleTonPatten.single







/**==================================================================
 [14번 문제]
  - 클래스의 타입 메서드의 구현에서, static 키워드와 class 키워드의 차이는 뭔가요?
    간단하게 서술하세요.
 ===================================================================**/


// static은 재정의가 안되고 class 키워드를 붙이면 하위 클래스에서 재정의가 가능하다











/**==================================================================
 [15번 문제]
  - mutating키워드가 뭔가요? 언제 사용했었죠? mutating키워드에 대해서 아는 대로
    간단하게 서술해 보세요.
 ===================================================================**/


// 값타임에서 mutating키워드를 붙여야 값타임의 저장속성을 직접적으로 메서드안에서 변경할수 있다












/**==================================================================
 [16번 문제]
  - 아래에서, SomeSuperclass를 상속한 SomeSubclass에서.. 상위 클래스의
    aValue속성을 계산속성으로 자유롭게 재정의 해보세요.
    (계산 속성으로 재정의시 내부 구현은 자유입니다.)
 ===================================================================**/


class SomeSuperclass {
    var aValue = 0
}



class SomeSubclass: SomeSuperclass {

    // 계산속성으로 재정의 구현
    override var aValue: Int {
        get {
            super.aValue
        }
        set {
            aValue = newValue
        }
    }

}










/**>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 수고 하셨습니다. 😄
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>**/
