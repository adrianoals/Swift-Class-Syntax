//ESTRUTURAS CONDICIONAIS E DE REPETIÇÃO

let number = 11

//Operador Ternário
number % 2 == 0 ? print("Ele é par") : print("Ele é impar")


//If, Else
if number % 2 == 0 {
    print("Ele é par")
} else {
    print("Ele é ímpar")
}


// If, Else, Else If
var temperature = 18
var climate = ""
if temperature <= 0 {
    climate = "Muito frio"
} else if temperature < 14 {
    climate = "Frio"
} else if temperature < 21 {
    climate = "Clima agradável"
} else if temperature < 30 {
    climate = "Um pouco quente"
} else {
    climate = "Muuuito quente"
}
print(climate)



//Switch
var numberEvenOrOdd = 7
switch numberEvenOrOdd % 2 {
case 0:
    print("\(numberEvenOrOdd) é par")
default:
    print("\(numberEvenOrOdd) é ímpar")
}

//Exemplo com vários cenários no mesmo case
let letter = "z"
switch letter {
case "a", "e", "i", "o", "u":
    print("vogal")
default:
    print("consoante")
}

//Exemplo com range de letras
switch letter {
case "a"..."f":
    print("Você está na turma 1")
case "g"..."l":
    print("Você está na turma 2")
case "m"..."r":
    print("Você está na turma 3")
default:
    print("Você está na turma 4")
}

//Range de números
let speed = 33.0
switch speed {
case 0.0..<20.0:
    print("Primeira marcha")
case 20.0..<40.0:
    print("Segunda marcha")
case 40.0..<50.0:
    print("Terceira marcha")
case 50.0..<90.0:
    print("Quarta marcha")
default:
    print("Quinta marcha")
}



//While / Repeat While
import Foundation

//Usando while
var life = 10
while life > 0 {
    print("O jogador está com \(life) vidas")
    life -= 1
}

//Usando repeat while
var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(7)) //Essa função pega um número aleatório de a 1 a 6, ou seja (7 -1)
} while diceNumber != 6
print("você tirou 6 após \(tries) tentativas")



//For in
//Mais usada para percorrer coleções ou sequencias

//Percorrendo um Array
let students = [
    "João Francisco",
    "Pedro Henrique",
    "Gustavo Oliveira",
    "Janaina Santos",
    "Francisco José"
]
for student in students {
    print("O aluno \(student) veio na aula de hoje!")
}

//Percorrendo uma sequência (range)
for day in 1...30 {
    print("Estou no dia \(day)")
}

//Note abaixo que uma String também é uma coleção
let name = "Steven Paul Jobs"
for letter in name {
    print(letter)
}

//Vejamos como percorrer um dicionário,
//imprimindo sua chave e valor. Neste dicionário
//a chave é String e o valor é Int
let people = [
    "Paulo": 25,
    "Renata": 18,
    "Kleber": 33,
    "Eric": 39,
    "Carol": 36
]

//A variável person, abaixo, é uma tupla que recebe a chave
//(key) e o valor (value) de cada elemento do dicionário
for person in people {
    print(person.key, person.value)
}

print("")

//Se quisermos, podemos inclusive decompor
//a tupla em variáveis
for (name, age) in people {
    print(name, age)
}

print("")

//Podemos quebrar a execução de um laço usando
//o comando break
let grades = [10.0, 9.0, 8.5, 7.0, 9.5, 5.0, 22.0, 6.5, 10.0]
for grade in grades {
    print(grade)
    if grade < 0.0 || grade > 10.0 {
        print("Nota \(grade) é inválida")
        break
    }
}
