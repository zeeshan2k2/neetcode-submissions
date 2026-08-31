class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var group: [String: [String]] = [:]
        
        for i in strs {
            let key = String(i.sorted())
            
            group[key, default: []].append(i)
        }
        
        return Array(group.values)
    }
}