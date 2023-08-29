//Operadores de Atribuição (=)
var height : Double = 1.75
let pi : Double = 3.14


// Operadores Aritméticos (+, -, *, /, %)
var a = 12
var b = 3

var sum = a + b             //15
var subtract = a - b        //9
var multiplication = a * b  //36
var division = a / b        //4
var módulus = a % b         //Resto da divisão: 0

// Quando utilizamos os sinais de + ou - àfrente de um valor, estamos trabalhando com o operador de forma unária, ou seja, não estamos operando dois valores, mas, sim, alterando o sinal de um valor.

let negativeNumber = -12              //-12
let positiveNumber = +negativeNumber  //12


//Operadores Compostos (+=, -=, *=, /=, %=)
// São a junção dos operadores aritméticos com o operador de atribuição, ou seja, efetuam a operação e atribuem o valor na variável ao mesmo tempo.
a = 2
b = 3
var newValue = 5

newValue += a   //7
newValue -= b   //4
newValue *= a   //8
newValue /= a   //4
newValue %= b   //Resto da divisão: 1


//Operadores Lógicos  (!,&&,||)
var yes = true, no = false

//Operador And
print(yes && no)   //false
//Operador Or
print(yes || no)   //true
//Operadro not
print(!yes)        //false


//Operadores de Comparação (>, <, >=, <=, ==, !=)
a = 12
b = 3
var c = 7
var d = 3
print(a > b)   //true
print(a < b)   //false
print(b >= d)  //true
print(a <= c)  //false
print(b == d)  //true
print(b != d)  //false


//Ternário (condição ? “resultado se true” : “resultado se false” )Este operador é o único que opera em três operandos. Com ele, podemos avaliar uma condição e atribuir um valor, caso a condição seja verdadeira, e outro valor, caso seja falsa
var grade = 7.5
var result = grade > 7.0 ? "aprovado" : "reprovado"
print(result)   //aprovado


//Coalescência nula (??)
//Como  vimos  anteriormente,  este  operador  serve  para  desembrulhar  um Optional e atribuir seu valor a uma variável ou, caso não seja possível, atribuir um valor padrão à variável.
var age: Int?
let myAge = age ?? 0    //0
age = 25
let newAge = age ?? 0   //25


// Closed Range e Half Closed Range (.... e ..<)
//Estes operadores desenvolvem um range, ou seja, um intervalo de valores. O Closed Range cria um intervalo fechado, onde entram o valor inicial e o valor final, o Half Closed Range produz um intervalo entre o valor inicial e o valor imediatamente anterior ao valor final. Usaremos bastante quando trabalharmos com estruturas de repetição (como for, por exemplo)

// Closed Range
let numbers = 1...10
for number in numbers {
    print(number)   //Imprime de 1 a 10
}

//Half Closed Range
let newNumbers = 1..<10
for number in newNumbers {
    print(number)   //Imprime de 1 a 9
}


