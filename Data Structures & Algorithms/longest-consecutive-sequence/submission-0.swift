class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var sortedNums = Set(nums).sorted()
        var longestSequence = 0
        var longestSequenceArr: [Int] = []
        var prevNum = 0
        
//        print(sortedNums)
        
        if nums.isEmpty {
//            print("This is the longest sequence: \(0)")
            return 0
        }
        
        if nums.count == 1 {
//            print("This is the longest sequence: \(1)")
            return 1
        }
        
        for i in 0..<sortedNums.count {
            
            if sortedNums[i] == prevNum + 1 {
                longestSequence += 1
            } else if sortedNums[i] != prevNum + 1 {
                longestSequenceArr.append(longestSequence)
                longestSequence = 0
            }
            prevNum = sortedNums[i]
        }
        
        longestSequenceArr.append(longestSequence)
        longestSequence = longestSequenceArr.sorted(by: >)[0]
        
        if sortedNums[0] == 1 {
            let firstSequence = longestSequenceArr[0]
            let laterLongest = longestSequenceArr.dropFirst().max() ?? 0

            longestSequence = max(firstSequence, laterLongest + 1)
        } else {
            longestSequence += 1
        }
        
//        print("This is the longest sequence: \(longestSequence)")
        return longestSequence
    }
}