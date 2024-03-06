import UIKit

// Calculator 클래스 정의
class Calculator {
    // 덧셈 함수
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    // 뺄셈 함수
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }

    // 곱셈 함수
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }

    // 나눗셈 함수
    func divide(_ a: Int, _ b: Int) -> Int {
        guard b != 0 else {
            print("Error: Divide by zero")
            return 0
        }
        return a / b
    }

    // Lv2
    // 나머지 함수
    func remain(_ a: Int, _ b: Int) -> Int {
        return a % b
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

let result5 = calculator.remain(14, 7)
print("12 % 5 =", result5)

