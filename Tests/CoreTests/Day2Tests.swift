import AOC
import XCTest

@testable import Core

final class Day2Tests: XCTestCase {

    let day = Event.current.d2!

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}