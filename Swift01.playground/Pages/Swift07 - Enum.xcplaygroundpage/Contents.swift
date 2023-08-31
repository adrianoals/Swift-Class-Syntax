//Enumeradores

//Enumeradores (ou Enums) são tipos criados pelo programador que servem para se definir um tipo comum para um conjunto fechado de valores, permitindo que trabalhe com esses valores de uma maneira segura em seu código. É muito utilizado quando há um cenário no qual deve-se armazenar uma informação baseada em um conjunto limitado de possibilidades. Para criarmos um enum, utilizamos a palavra reservada enum seguida do nome dos enumerados (com inicial maiúscula) e, entre chaves, definimos todosos valores possíveis utilizando case. Abaixo, iremos criar um enum que serve para definir uma bússola, com quatro possíveis valores (norte, sul, leste e oeste):

//Definindo um enum
enum Compass {
    case north
    case east
    case west
    case south
}

//Criando uma variável do tipo Compass
//Como Swift trabalha com inferência de tipo, podemos usar somente .valor, caso o tipo seja definido explicitamente
var direction = Compass.north

//Tipo declarado
var direction2: Compass = .south

print("Minha direção é \(direction)")
//Minha direção é north

//Enums são muito usados com switch para análise do valor
switch direction {
case .north:
    print("Estamos indo para o norte")
case .south:
    print("Estamos indo para o sul")
case .east:
    print("Estamos indo para o leste")
case .west:
    print("Estamos indo para o oeste")
}
//Estamos indo para o norte

//quando imprimimos o valor de um enum, imprime-se o próprio nome do valor (north, no nosso exemplo)

//Quando  validamos  um  enum  usando Switch, se  nosso switch verificar todosos possíveis valores automaticamente, ele é exaurido, ou seja, não precisaremos  mais  utilizar  o  default, pois,  nesse  caso,  todos  os  cenários  foram cobertos, e essa é outra vantagem de usarmos enums.


//Valores Padrões
//Enum que define as posições das poltronas em um avião
//Veja que é possível atribuir um valor padrão a cada uma delas
enum SeatPosition: String {
    case aisle = "corredor"
    case middle = "meio"
    case window = "janela"
}
var passengerSeat = SeatPosition.window

//Para imprimir o valor padrão, usamos a propriedade rawValue
print(passengerSeat.rawValue)   //janela

//Enum de Int com valores padrões
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

var currentMonth: Month = .june
print("Estamos no mês \(currentMonth.rawValue) do ano")


//Enum de Diferentes Tipos
//Criando um enum que representa medidas (Measure) e que
//possui valores associados (Associated Values)
enum Measure {
    case weight(Double) //neste caso, associaremos um Double
    case age(Int)       //aqui, um Int
    case size(width: Double, height: Double) //Uma tupla
}

//Criando uma variável Measure com o valor age (idade)
//e definido seu valor associado
let ageMeasure: Measure = .age(33)

//Agora, uma com o valor weight e associando um Double
let weightMeasure: Measure = .weight(82.3)

//Abaixo, estamos associando uma tupla ao enum do tipo size
let sizeMeasure: Measure = .size(width: 0.6, height: 1.71)


//Para recuperar os valores, precisamos trabalhar
//usando switch, da seguinte forma
switch sizeMeasure {
case .weight(let weight):
    print("O seu peso é \(weight)")
case .age(let age):
    print("A sua idade é \(age)")
case .size(let size):
    print("As medidas são \(size.width)m de largura e \(size.height)m de altura")
}
//As medidas de tamanho são 0.6m de largura e 1.71m de altura
