import AOC
import XCTest

@testable import Core

final class Day21Tests: XCTestCase {

    let day = Event.current.d21!

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}