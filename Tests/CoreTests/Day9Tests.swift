import AOC
import XCTest

@testable import Core

final class Day9Tests: XCTestCase {

    let day = Event.current.d9!

    let testIntput = """
    London to Dublin = 464
    London to Belfast = 518
    Dublin to Belfast = 141
    """

    func testSimpleMin() {
        let min = day.run(part: .p1, input: testIntput)
        XCTAssertEqual(min, "605")
    }

    func testSimpleMax() {
        let min = day.run(part: .p2, input: testIntput)
        XCTAssertEqual(min, "982")
    }

    func testPartOne() {
        log(day.run(.p1))
    }

    func testPartTwo() {
        log(day.run(.p2))
    }
}
