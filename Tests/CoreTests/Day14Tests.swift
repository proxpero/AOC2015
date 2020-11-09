import AOC
import XCTest

@testable import Core

final class Day14Tests: XCTestCase {

    let day = Event.current.d14!

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}