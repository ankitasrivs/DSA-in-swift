func bucketSort(_ arr: [Float]) -> [Float] {
    guard arr.count > 0 else {
        return []
    }
    let numberOfBuckets = 10

    var buckets: [[Float]] = Array(repeating: [], count: numberOfBuckets)

    for value in arr {
        let index = Int(value * Float(numberOfBuckets))
        buckets[min(index, numberOfBuckets - 1)].append(value)
    }

    for i in 0..<numberOfBuckets {
        buckets[i].sort()

    }
    return buckets.flatMap{$0}
}
let input: [Float] = [0.78, 0.17, 0.39, 0.26, 0.72, 0.94, 0.21, 0.12, 0.23, 0.68]
let sorted = bucketSort(input)
print(sorted)
