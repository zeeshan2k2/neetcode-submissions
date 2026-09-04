class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var myDict = [Int: Int]()
        for num in nums {
            myDict[num, default: 0] += 1
        }
        
        var firstArr = [(Int, Int)]()
        for (num, count) in myDict {
            firstArr.append((count, num))
        }
        
        firstArr.sort { $0.0 < $1.0 }
                
        var finalAnsArr = [Int]()
        while finalAnsArr.count < k {
            finalAnsArr.append(firstArr.removeLast().1)
        }
        
        print("This is the final answer: \(finalAnsArr)")
        return finalAnsArr
    }
}