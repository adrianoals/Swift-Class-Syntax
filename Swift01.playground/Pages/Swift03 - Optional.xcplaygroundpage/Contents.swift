// Um dos  tipos  mais  utilizados  em Swift é  o  Optional,  que permite  que determinada variável possa ser nula (ou seja, não contenha valor) ou contenha um valor encapsulado (embrulhado, ou wrapped)

var driverLicense: String?
print(driverLicense)
//Resultado: nil

//Atribuindo valor a variável
driverLicense = "6789877"
print(driverLicense)
//Output: Optional("6789877")

//Decompondo com !
driverLicense = "6789877"
print(driverLicense!) //Desempacotando
//Output: 6789877

//Perceba o erro nesse método
////Decompondo com !
//var driverLicense2: String?
////driverLicense = "6789877"
//print(driverLicense2!) //Desempacotando
////Output: 6789877

//Formas seguras de Desembrular

//Optional Binding
var driverLicense2: String?
//driverLicense2 = "6789877"
if let license = driverLicense2 {
    print("A carteira de motorista é \(license)")
} else {
    print("Esta pessoa não possui carteira de motorista")
}
//Output: Esta pessoa não possui carteira de motorista
//Obs: A variável license criada somente existirá dentro do bloco do If.

//Desembrulhando com o guard
func check(driverLicense: String?) {
    guard let license = driverLicense else {
        print("Esta pessoa não possui carteira de motorista")
        return
    }
    print("A carteira de motorista é (license)")
}

//check(driverLicense: nil)
//Resultado: Esta pessoa não possui carteira de motorista

check(driverLicense: "6789877")
//Resultado: A carteira de motorista é 6789877

//Criando um Optional implicitamente desembrulhado
var alias: String!
//a linha abaixo imprime Meu apelido é nil
print("Meu apelido é \(alias)")
alias = "Pelé"
//Imprime Meu apelido é PELÉ
print("Meu apelido é \(alias.uppercased())")
// Deve-se tomar muito cuidado ao utilizá-la, pois caso esqueçade alimentar a variável com um valor e chamar algum método desse Optional, seu App quebrará. Comente a linha em que o apelido é atribuído à variável e veja que seu código indicará erro.


// Nil-Coalescing Operator(operador de coalescência nula)
var age: Int?
let age2 = age ?? 0
print(age2) //Output: 0
age = 27
let age3 = age ?? 0
print(age3) //Output: 27


//Optional Chaining
// Quando usamos Optionals e desejamos executar algum método dessa variável, a maneira mais segura de fazê-lo  é utilizando a técnica Optional Chaining, que consiste em utilizar ? após o Optional, antes de chamar o método.
var weekDay: String?
print(weekDay?.uppercased())  //Output: nil
weekDay = "Segunda"
print(weekDay?.uppercased())  //Output: Optional("SEGUNDA")

