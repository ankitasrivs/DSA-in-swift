
// https://leetcode.com/problems/the-users-that-are-eligible-for-discount/description/
func eligibleUsers(_ orders: [[String]], _ products: [[String]], _ discount: [String], _ k: Int) -> [String] {
    // orders[i] corresponds to user names of that order
    // products[i] corresponds to list of products for that order

    // 1. Build map: user -> list of their orders (each as a set)
    var userToOrders = [String: [Set<String>]]()
    let n = orders.count
    for i in 0..<n {
        let user = orders[i][0]
        let prodList = products[i]
        let prodSet = Set(prodList)
        userToOrders[user, default: []].append(prodSet)
    }

    var result = [String]()
    let discountSet = Set(discount)

    // 2. Check each user
    for (user, orderSets) in userToOrders {
        if orderSets.count < k { continue }
        // Take last k orders
        let lastK = orderSets.suffix(k)
        // Union all product sets in last k
        var unionSet = Set<String>()
        for s in lastK {
            unionSet.formUnion(s)
        }
        // If discountSet is subset of unionSet → eligible
        if discountSet.isSubset(of: unionSet) {
            result.append(user)
        }
    }

    // 3. Sort lexicographically
    return result.sorted()
}
