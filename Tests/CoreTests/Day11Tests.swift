import AOC
import XCTest

@testable import Core

final class Day11Tests: XCTestCase {

    let day = Event.current.d11!

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}