// didn't read the machine constraint earlier 🫩
class Solution {

    func encode(_ strs: [String]) -> String {
        
        var encodedString = ""
        
        for i in strs {
            encodedString += String(i.count) + "#"
            for j in i {
                encodedString += String(j)
            }
        }
        
        print("This is the encodedString: \(encodedString)")
        return encodedString
    }

    func decode(_ str: String) -> [String] {

        var decodedString: [String] = []
        var fullString: String = ""
        let arrayStr = Array(str)

        var i = 0

        while i < arrayStr.count {
            var j = i
            while arrayStr[j] != "#" {
                j += 1
            }
            let decodedStringCount = Int(String(arrayStr[i..<j]))!
            for k in 0..<decodedStringCount {
                fullString += String(arrayStr[j + 1 + k])
            }
            decodedString.append(fullString)
            fullString.removeAll()
            i = j + 1 + decodedStringCount
        }

        return decodedString
    }
}