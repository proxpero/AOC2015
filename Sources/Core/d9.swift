import AOC
import Algorithms

public extension Day {

    static let d9 = Day(
        name: 9,
        part1: minimumDistance(input:),
        part2: maximumDistance(input:)
    )
}

fileprivate extension Day {

    typealias City = String
    typealias Cities = Set<City>
    typealias Lookup = [City: [City: Int]]

    static func parseInput(_ input: String) -> (Cities, Lookup) {

    

        var result: [(String, String, Int)] = []
        let lines = input.split(separator: "\n")
        for line in lines {
            let items = line.split(separator: " ")
            result.append((String(items[0]), String(items[2]), Int(items[4])!))
        }

        func trips(parsedInput: [(String, String, Int)]) -> [City: [City: Int]] {
            struct Leg: Hashable {
                let origin: City
                let destination: City
                let distance: Int
            }

            let legs = parsedInput.map(Leg.init)
            let trips: Lookup = legs.reduce(into: Lookup()) { dict, value in
                dict[value.origin, default: [:]][value.destination] = value.distance
                dict[value.destination, default: [:]][value.origin] = value.distance
            }
            return trips
        }

        func cities(parsedInput: [(String, String, Int)]) -> Set<City> {
            parsedInput.reduce(into: Set<City>()) { result, value in
                result.insert(value.0)
                result.insert(value.1)
            }
        }

        return (cities(parsedInput: result), trips(parsedInput: result))
    }

    static func distance(for cityRoute: [String], trips: Lookup) -> Int {
        var route = cityRoute
        var dist = 0
        var origin = route.removeFirst()
        while !route.isEmpty {
            let dest = route.removeFirst()
            let result = trips[origin]?[dest] ?? 0
            dist += result
            origin = dest
        }
        return dist
    }

    static func minimumDistance(input: String) -> String {

        let (cities, lookup) = parseInput(input)

        var min = Int.max
        for route in cities.permutations() {
            let dist = distance(for: route, trips: lookup)
            if dist < min {
                min = dist
            }
        }
        return String(describing: min)
    }

    static func maximumDistance(input: String) -> String {
        let (cities, lookup) = parseInput(input)

        var max = Int.min
        for route in cities.permutations() {
            let dist = distance(for: route, trips: lookup)
            if dist > max {
                max = dist
            }
        }
        return String(describing: max)
    }
}
