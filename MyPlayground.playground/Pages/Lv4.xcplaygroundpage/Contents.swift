// 추상 클래스 AbstractOperation
class AbstractOperation {
    // 추상 메서드 calculate()
    func calculate(_ a: Int, _ b: Int) -> Int {
        // fatalError로 추상 메서드를 호출하면 하위 클래스에서 반드시 구현해야 함
        fatalError("Abstract method must be overridden") // 프로그램을 즉시 중단 후 에러 메시지를 출력하는 역할
    }
}

// 덧셈 클래스
class AddOperation: AbstractOperation {
    // 상위 클래스의 추상 메서드를 오버라이드하여 구체적인 동작을 정의
    override func calculate(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

// 뺄셈 클래스
class SubtractOperation: AbstractOperation {
    override func calculate(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}

// 곱셈 클래스
class MultiplyOperation: AbstractOperation {
    override func calculate(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

// 나눗셈 클래스
class DivideOperation: AbstractOperation {
    override func calculate(_ a: Int, _ b: Int) -> Int {
        guard b != 0 else {
            // 0으로 나눌 경우 에러를 출력하고 0을 반환
            print("Error: Divide by zero")
            return 0
        }
        return a / b
    }
}

// 나머지 클래스
class RemainOperation: AbstractOperation {
    override func calculate(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
}

class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainOperation = RemainOperation()
    
    // 덧셈 연산 함수
    func add(_ a: Int, _ b: Int) -> Int {
        // 덧셈 연산 클래스의 calculate 메서드 호출
        return addOperation.calculate(a, b)
    }
    
    // 뺄셈 연산 함수
    func subtract(_ a: Int, _ b: Int) -> Int {
        return subtractOperation.calculate(a, b)
    }
    
    // 곱셈 연산 함수
    func multiply(_ a: Int, _ b: Int) -> Int {
        return multiplyOperation.calculate(a, b)
    }
    
    // 나눗셈 연산 함수
    func divide(_ a: Int, _ b: Int) -> Int {
        return divideOperation.calculate(a, b)
    }
    
    // 나머지 연산 함수
    func remain(_ a: Int, _ b: Int) -> Int {
        return remainOperation.calculate(a, b)
    }
}

// 인스턴스 생성
let calculator = Calculator()

// 계산 테스트
let result1 = calculator.add(5, 3)
print("5 + 3 =", result1)

let result2 = calculator.subtract(10, 4)
print("10 - 4 =", result2)

let result3 = calculator.multiply(6, 7)
print("6 * 7 =", result3)

let result4 = calculator.divide(20, 5)
print("20 / 5 =", result4)

let result5 = calculator.remain(20, 5)
print("20 % 5 =", result5)
