import Foundation

let startTime = Date.now.timeIntervalSince1970

let totalRuns = 10
let numToIterateTo = 2000

for _ in 1...totalRuns {
    for num in 1...numToIterateTo {
        switch (num % 3 == 0, num % 5 == 0){
        case (true, false): print("FIZZ")
        case (false, true): print("BUZZ")
        case (true, true): print("FIZZBUZZ \(num)")
        default: continue
    }
}
}
let endTime = Date.now.timeIntervalSince1970
print(endTime - startTime)
let totalTime: Double = ((endTime - startTime) / Double(totalRuns))
print("Average time to iterate over \(numToIterateTo) nums: \(totalTime)")
