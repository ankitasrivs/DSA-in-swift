
// https://leetcode.com/problems/logger-rate-limiter/description/
class Logger {

    private var lastPrinted: [String: Int]

    init() {
        self.lastPrinted = [:]
    }
    
    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        if let lastTime = lastPrinted[message] {
            // Message printed before
            if timestamp - lastTime < 10 {
                return false
            }
        }
        // Update last printed time
        lastPrinted[message] = timestamp
        return true
    }
}
