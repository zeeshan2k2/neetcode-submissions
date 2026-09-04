class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var myDict: [Int: Int] = [:]
        var freqArr: [Int] = []
        var numberArr: [Int] = []
        var finalFreqArr: [Int] = []
        var finalAnsArr: Set<Int> = []
        
        for num in nums {
            myDict[num, default: 0] += 1
        }
        
        for (num, frequency) in myDict {
            numberArr.append(num)
            freqArr.append(frequency)
        }

        for i in 0..<k {
            finalFreqArr.append(freqArr.sorted(by: >)[i])
            for j in 0..<freqArr.count {
                if freqArr[j] == finalFreqArr[i] {
                    finalAnsArr.insert(numberArr[j])
                }
            }
        }
        
        print("This is the final answer array \(finalAnsArr)")
        return Array(finalAnsArr)
    }
}