import AOC
import XCTest

@testable import Core

final class Day13Tests: XCTestCase {

    let day = Event.current.d13!

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}