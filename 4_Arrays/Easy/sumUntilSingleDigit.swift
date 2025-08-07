//https://www.geeksforgeeks.org/dsa/finding-sum-of-digits-of-a-number-until-sum-becomes-single-digit/


func sumUntilSingleDigit(_ num: Int) -> Int {
    var number = num
    while number >= 10 {
        var sum = 0
        while number > 0 {
            sum += number % 10
            number /= 10
        }
        number = sum
    }
    return number
}


func digitalRoot(_ num: Int) -> Int {
    return num == 0 ? 0 : 1 + (num - 1) % 9
}
