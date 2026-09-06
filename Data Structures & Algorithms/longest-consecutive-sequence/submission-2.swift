class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        let sortedArr = Set(nums).sorted()
        
        var currentSequence = 1
        var longestSequence = 1
        
        for i in 1..<sortedArr.count {
            if sortedArr[i] == sortedArr[i-1] + 1 {
                currentSequence += 1
            } else {
                currentSequence = 1
            }
            
            longestSequence = max(currentSequence, longestSequence)
        }
        
        return longestSequence
    }
}