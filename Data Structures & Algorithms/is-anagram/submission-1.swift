class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var answer = s.sorted() == t.sorted() ? true : false 
        return answer
    }
}
