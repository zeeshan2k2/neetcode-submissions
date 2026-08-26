class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var frequency: [Character: Int] = [:] // optional

        for i in s {
            frequency[i, default: 0] += 1
        }

        for j in t {
            frequency[j, default: 0] -= 1

            if frequency[j]! < 0 {
                return false
            }
        }

        return true
    }
}
