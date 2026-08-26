class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[j] == nums[i] {
                    return true
                }
            }
        }
        return false
    }
}