
// Lv1 ~Lv2

//import UIKit
//
//// 계산기 클래스 정의
//class Calculator {
//    // 덧셈 함수
//    func add(_ a: Int, _ b: Int) -> Int {
//        return a + b
//    }
//    
//    // 뺄셈 함수
//    func subtract(_ a: Int, _ b: Int) -> Int {
//        return a - b
//    }
//    
//    // 곱셈 함수
//    func multiply(_ a: Int, _ b: Int) -> Int {
//        return a * b
//    }
//    
//    // 나눗셈 함수
//    func divide(_ a: Int, _ b: Int) -> Int {
//        guard b != 0 else {
//            print("Error: Divide by zero")
//            return 0
//        }
//        return a / b
//    }
//    
//    // 나머지 함수
//    func remain(_ a: Int, _ b: Int) -> Int {
//        return a % b
//    }
//}

// 계산기 인스턴스 생성
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

let result5 = calculator.remain(14, 7)
print("12 % 5 =", result5)






// Lv3

// 연산 프로토콜 정의
protocol Operation {
    func calculate(_ a: Int, _ b: Int) -> Int
}

// 덧셈 클래스
class AddOperation: Operation {
    func calculate(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

// 뺄셈 클래스
class SubtractOperation: Operation {
    func calculate(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
}

// 곱셈 클래스
class MultiplyOperation: Operation {
    func calculate(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

// 나눗셈 클래스
class DivideOperation: Operation {
    func calculate(_ a: Int, _ b: Int) -> Int {
        guard b != 0 else {
            print("Error: Divide by zero")
            return 0
        }
        return a / b
    }
}

// 나머지 클래스
class RemainOperation: Operation {
    func calculate(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
}

// 계산기 클래스 정의
class Calculator {
    // 연산 프로토콜을 준수하는 연산자들
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainOperation = RemainOperation()

    // 덧셈 연산 함수
    func add(_ a: Int, _ b: Int) -> Int {
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
    
    // 나누기 함수
    func remain(_ a: Int, _ b: Int) -> Int {
        return remainOperation.calculate(a, b)
    }
}

// 계산기 인스턴스 생성
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

let result5 = calculator.remain(12, 5)
print("20 / 5 =", result5)
