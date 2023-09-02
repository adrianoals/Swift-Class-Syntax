//Inteiros

/*
 O Swift por inferência utiliza o tipo Int
 
 Variações do tipo Int:
 Int8 (8 Bits), Int16 (16 Bits), Int32 (32 Bits) eInt64 (64 Bits)
 
 Inteiros Unsigne / Inteiros que não aceitam valores negativos:
 UInt8, UInt16, UInt32 e UInt64
 
 */

var value1 = 500 //Aqui, a inferência é para Int
//Analisando o tipo da variável
print(type(of: value1)) // Outra forma de ver o tipo é clicando com o opntion pressionado em cima da variável

var value2: Int = 500     //Idêntico à linha acima
var myAge: UInt8 = 39   //Somente valores positivos

//Forma de mostrar o valor máximo aceito pelo tipo
//Válido para todos os tipos de Int (Int8, Int16, Int32, UInt8, etc)
print(Int.max)

//Forma de mostrar o valor mínimo aceito pelo tipo
print(Int.min)



//Números com casas decimais (Double e Float)

//Utilizamos Double (tipo inferido automaticamente ou o Float.
//Double ocupa 64 bits e o Float ocupa 32 bits

var balance = 1500.75           //Double inferido automaticamente
var sallary: Double = 1200.50   //Double explícito

//Para usarmos Float, precisamos explicitar o tipo
var temperature: Float = 35.9

print("")


//Blocos de texto: String ou Character

//  Utilizamos o tipo String(tipo inferido automaticamente ou o Chracter quando declaramos se a variável possuir apenas um caracter.

var module: String = "Introdução ao Swift"
var schoolName = "FIAP"

//Note que letter, na linha abaixo, é uma String
//Devido à inferência de tipo
var letter = "A"

//Para usarmos Character, precisamos definir explicitamente
var gender: Character = "M"

// O caractere\ serve para permitir usar carcteres reservados numa String por exemplo o "" e o caracter \n serve para pular linha

var text = "Este texto \"será quebrado\" em \nduas linhas"
//Resultado:
//Este texto "será quebrado" em
//duas linhas

//O \t gera uma tabulação
var text2 = "Nota:\t 10"
//Resultado:
//Nota:     10

//Interpolação de Strings
let studentGrade = 8.5
let studentName = "João"
let result = "aprovado"

let message = "O aluno \(studentName) tirou \(studentGrade) e está \(result)"
print(message)
//Resultado:
//O aluno João tirou 8.5 e está aprovado
print("")

//Multiline String Literal / String  Com  Múltiplas Linhas
let nationalAnthem = """
Ouviram do Ipiranga as margens plácidas
De um povo heroico o brado retumbante.

   Joaquim Osório Duque-Estrada
"""
print(nationalAnthem)
//O resultado impresso será idêntico a String criada.
print("")


//  Bool (Booleanos)Booleanos são tipos simples, que ocupam apenas 1 bit de memória e aceitam apenas 2 estados, 0 ou 1.
// Em Swift,booleanos são definidos pelo tipo Bool e aceitam true (verdadeiro) ou false (falso)
var isApproved = true //Boolean inferido automaticamente
var firstTime : Bool = false  //Boolean explícito



//Tupla, que é um tipo composto formado por dois ou mais tipos distintos
// Veja o exemplo abaixo, criamos uma variável String que contém o nome da rua, o número e o CEP de um endereço
let address = "Av. Paulista, 1106, 01311-000"

//Criando Tupla
let addressTupla: (String, Int, String) = ("Av. Paulista", 1106, "01311-000")
print("""
  Logradouro: \(addressTupla.0)
  Número: \(addressTupla.1)
  CEP: \(addressTupla.2)
""")

print("")

//Tupla Nomeada
let addressNomeado: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")
print("""
  Logradouro\(addressNomeado.street)
  Número:\(addressNomeado.number)
  CEP:\(addressNomeado.zipCode)
""")

print("")

//Decompondo  tupla em  outras variáveis.
let addressDecompor: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")

let streetName = addressDecompor.street
let streetNumber = addressDecompor.number

//Decomposição de Tupla - Essa é a forma mais prática de fazer a decomposição
let address2: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")

let (streetName2, streetNumber2, _) = address2
print("O número da rua é \(streetNumber2)")
/*
 Note que a linguagem sabe que variável atribui cada valor da tupla com base na sua posição. Dessa forma, a primeira variável (streetName) receberá o primeiro elemento da tupla e a segunda variável (streetNumber) receberá o segundo elemento da tupla.Como não queremos produzir uma terceira variável, utilizamos o caractere_, que é usado quando desejamos indicar à linguagem que não queremos elaborar uma variável para aquele caso. É importante ressaltar que sempre se deve utilizar a mesma quantidade dos elementos que a tupla contém, usando o _ nos casos em que não deseja que a variável seja criada.
*/

let address3: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")

let (streetName3, _, zipCode3) = address3
print("O CEP é \(zipCode3)")



//Typealias
//Se tivermos diversas variáveis que representam um elemento só, podemos criar um Type alias.
// código anterior omitido

typealias Estudante = String

var aluno1: Estudante = "João"
var aluno2: Estudante = "Ana"

//Ao executar o código, notaremos que não ocorre nenhum erro. Pressionando a tecla "Option" e clicando sobre a variável aluno1, verificamos que ela é do tipo Estudante:




