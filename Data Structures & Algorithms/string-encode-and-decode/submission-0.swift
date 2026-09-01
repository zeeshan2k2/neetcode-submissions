class Solution {
    
    var decodedStringCount = 0
    var decodedStructure: [Int] = []

    func encode(_ strs: [String]) -> String {
        
        var encodedString = ""
        
        for i in strs {
            for j in i {
                encodedString += String(j)
                decodedStringCount += 1
            }
            decodedStructure.append(decodedStringCount)
            decodedStringCount = 0
        }
        
        print("This is the encodedString: \(encodedString)")
        print("This is the decodedStructure: \(decodedStructure)")
        return encodedString
    }

    func decode(_ str: String) -> [String] {
        
        var decodedString: [String] = []
        var fullString: String = ""
        var arrayStr = Array(str)
        
        for (index, value) in decodedStructure.enumerated() {
            print("This is the value: \(value)")
            for i in 0..<value {
                fullString.append(arrayStr[i])
            }
            
            decodedString.append(fullString)
            arrayStr.removeSubrange(0..<value)
            fullString.removeAll()
        }
        
        print("This is the decodedString: \(decodedString)")
        return decodedString
    }
}