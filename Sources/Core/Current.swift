import AOC
import Foundation

public extension Event {
    static let current: Self = {
        var event = Event(name: 2015)
        event.d1 = Day.d1
        event.d2 = Day.d2
        event.d3 = Day.d3
        event.d4 = Day.d4
        event.d5 = Day.d5
        event.d6 = Day.d6
        event.d7 = Day.d7
        event.d8 = Day.d8
        event.d9 = Day.d9
        event.d10 = Day.d10
        event.d11 = Day.d11
        event.d12 = Day.d12
        event.d13 = Day.d13
        event.d14 = Day.d14
        event.d15 = Day.d15
        event.d16 = Day.d16
        event.d17 = Day.d17
        event.d18 = Day.d18
        event.d19 = Day.d19
        event.d20 = Day.d20
        event.d21 = Day.d21
        event.d22 = Day.d22
        event.d23 = Day.d23
        event.d24 = Day.d24
        event.d25 = Day.d25

        return event
    }()

    func log(_ day: Day, _ part: Part) {
        let input = self.input(day: day, in: .module)
        let start = Date()
        let value = run(day, part, input: input)
        let time = Date().timeIntervalSince(start)
        let result = """
        \(filename(day: day)).\(part) : \(value)
        time: \(time) seconds
        """
        print(result)
    }
}

public extension Day {
    func run(_ part: Part) -> String {
        run(part, Event.current, bundle: .module)
    }
}
