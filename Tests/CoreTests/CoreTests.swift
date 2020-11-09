import XCTest
@testable import Core

final class CoreTests: XCTestCase {

}

extension XCTestCase {


}

func log(_ value: String) {
    let result = """

    ┌───────
    │ \(value)
    └───────

    """
    print(result)
}
