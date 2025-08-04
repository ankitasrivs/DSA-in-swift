func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var merged: [Int] = []
    merged.reserveCapacity(left.count + right.count)

    var i = 0, j = 0

    while i < left.count && j < right.count {
        if left[i] < right[j] {
            merged.append(left[i])
            i += 1
        } else {
            merged.append(right[j])
            j += 1
        }
    }

    // Append remaining elements
    merged.append(contentsOf: left[i...])
    merged.append(contentsOf: right[j...])

    return merged
}

func mergeSort(_ list: [Int]) -> [Int] {
    guard list.count > 1 else { return list }

    let mid = list.count / 2
    let leftSorted = mergeSort(Array(list[..<mid]))
    let rightSorted = mergeSort(Array(list[mid...]))

    return merge(leftSorted, rightSorted)
}

print(mergeSort([1,134,2,4,2]))

