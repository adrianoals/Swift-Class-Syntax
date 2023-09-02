//CLOSURES

//Sintaxe de uma função
/*
 func nomeDaFuncao(parâmetro: Tipo) -> TipoDeRetorno {
    //Códigos
    return TipoDeRetorno
 }
 */

//Sintaxe de uma closure
/*
  {(parâmetro: Tipo) -> TipoDeRetorno in
    //Códigos
    return TipoDeRetorno
 }
 */

//Função
func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
  return operation(a, b)
}

//Implementando uma closure que realiza a operação
//de módulo
var closure1 = applyOperation(14, 5, operation: {(x: Int, y: Int) -> Int in
  return x % y
})
print(closure1)

//Forma simplificada1 - Ocultando tipo do parãmetro operation
applyOperation(14, 5, operation: {x, y -> Int in
  return x % y
})

//Forma simplificada2 - Ocultando tipo de retorno
applyOperation(14, 5, operation: {x, y in
  return x % y
})

//Forma simplificada3 - Ocultando os parãmetros de operation
applyOperation(14, 5, operation: {
  return $0 % $1
})

//Forma simplificada4 - Forma final
applyOperation(14, 5, operation: {$0 % $1})



//MAP
let names = ["João", "Paulo", "Henrique", "Ana", "Beatriz", "Carla", "Caroline"]

//Aplicando map em names
let uppercasedNames = names.map({$0.uppercased()})
print(uppercasedNames)
//["JOÃO", "PAULO", "HENRIQUE", "ANA", "BEATRIZ", "CARLA", "CAROLINE"]



//FILTER
//Aplicando filter em names
let filteredNames = names.filter({$0.count < 6})
print(filteredNames)
//["João", "Paulo", "Ana", "Carla"]



//REDUCE
//Utilizando Reduce
var transactions = [500.0, -45.0, -70.0, -25.80, -321.72, 190.0, -35.15, -100]

//Sintaxe do reduce
//func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Double) throws -> Result) rethrows -> Result

let balance = transactions.reduce(0.0, {$0 + $1})
print("Seu saldo é R$ \(balance)")
//Seu saldo é R$ 92.33



GENERICS
func swapInts(_ a: inout Int, _ b: inout Int) {
  let tempA = a
  a = b
  b = tempA
}
var int1 = 20
var int2 = 30
swapInts(&int1, &int2)
print(int1, int2)   //30, 20

//In out, permite que uma função altere o valor de uma variável que foi passada como argumento, em vez de trabalhar apenas com uma cópia da variável.


//Método genérico
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}
var name1 = "Jaqueline"
var name2 = "Carlos"
swapValues(&name1, &name2)
print(name1, name2) //Carlos Jaqueline

var value1: Double = 55.7
var value2: Double = 28.9
swapValues(&value1, &value2)
print(value1, value2) //28.9 55.7
