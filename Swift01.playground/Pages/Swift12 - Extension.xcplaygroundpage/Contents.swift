//Extensão / Extension
import Foundation

let name = "Steven Paul Jobs"

extension String {
    var initials: String {
        let words = self.components(separatedBy: " ")
        let firstLetters = words.map({String($0.first!)})
        return firstLetters.joined()
    }
    
    func getVowelsCount() -> Int {
        var total: Int = 0
        let characterArray = Array(self)
        for letter in characterArray {
            let lowerLetter = String(letter).lowercased()
            switch lowerLetter {
            case "a", "e", "i", "o", "u":
                total += 1
            default:
                break
            }
        }
        return total
    }
}

print("O nome \(name) tem \(name.getVowelsCount()) vogais")
//O nome Steven Paul Jobs Brito tem 5 vogais

print("As iniciais de \(name) são \(name.initials)")
//As iniciais de Steven Paul Jobs são SPJ
