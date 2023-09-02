//Sintaxe para criação de funções
/*
 func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
    //Códigos
    return TipoDeRetorno
 }
*/

//Exemplo de uma função simples, sem parâmetros e sem retorno
func printHello() {
    print("Hello!!!!")
}
printHello()    //Hello!!!

//Função que aceita parâmetro
func say(message: String) {
    print(message)
}
say(message: "Vamos criar funções em Swift")

//Função que aceita mais de um parâmetro e que retorna algo
func sumNumbers(a: Int, b: Int) -> Int {
    return a + b
}
var result = sumNumbers(a: 10, b: 15)
print(result)   //15



//A função abaixo serve para darmos uma mensagem de boas vindas:
func say(welcome message: String, to person: String) {
    print("(message) (person)!")
}

//Chamando a função e mudando o nome dos parâmetros
say(welcome: "Seja bem-vindo", to: "aluno")
//Seja bem-vindo aluno!

//Removendo o nome externo do primeiro parâmetro
func say(_ message: String, to person: String) {
    print("(message) (person)!")
}
say("Olá", to: "Fabiana")
//Olá Fabiana!

//Removendo todos os parâmetros externos
func sumNumbers(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}
print(sumNumbers(3, 7)) //10


func sum(_ a: Int, _ b: Int) -> Int {
  return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int {
  return a - b
}
func divide(_ a: Int, _ b: Int) -> Int {
  return a / b
}
func multiply(_ a: Int, _ b: Int) -> Int {
  return a * b
}



//A função abaixo utiliza outra função como parâmetro
func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  return operation(a, b)
}

let result2 = applyOperation(10, 20, operation: multiply)
print(result2)   //200


//Criando um "apelido" para (Int, Int) -> Int
typealias Op = (Int, Int) -> Int

//Método que retorna outro método
func getOperation(_ operation: String) -> Op {
    switch operation {
    case "soma":
        return sum
    case "subtração":
        return subtract
    case "multiplicação":
        return multiply
    default:
        return divide
    }
}

//Abaixo, a variável operation receberá a função
//retornara pelo método getOperation
var operation = getOperation("subtração")
operation(30, 15)

