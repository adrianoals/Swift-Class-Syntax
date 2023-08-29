//Criando um Array de Strings vazio
var emptyArray: [String] = []

//Criando um Array de Strings e alimentando valores na criação
var shoppingList: [String] = ["Leite", "Pão", "Manteiga", "Açúcar"]

//Usando inferência
var inferredShoppingList = ["Leite", "Pão", "Manteiga", "Açúcar"]

//Testando se um Array está vazio
if shoppingList.isEmpty {
    print("A lista de compras está vazia")
} else {
    print("A lista de compras NÃO está vazia")
}

//Recuperando o total de elementos do Array
print("Nossa lista de compras possui \(shoppingList.count) itens")
//Output: Nossa lista de compras possui 4 itens

//Recuperando/Acessando algum elemento de um Array.
//Criando um Array de Strings e alimentando valores na criação
var shoppingList2: [String] = ["Leite", "Pão", "Manteiga", "Açúcar"]
print(shoppingList2[1])


//Inserindo Itens no Array
//Criando um Array de Strings e alimentando valores na criação
var shoppingList3 : [String] = ["Leite", "Pão", "Manteiga", "Açúcar"]

//Adicionando novos elementos utilizando append
shoppingList3.append("Arroz")
shoppingList3.append("Feijão")
//["Leite", "Pão", "Manteiga", "Açúcar", "Arroz", "Feijão"]

//Utilizando operador + para somar dois Arrays
var secondShoppingList : [String] = ["Ovos", "Suco"]
var finalShoppingList : [String] = shoppingList + secondShoppingList
//["Leite", "Pão", "Manteiga", "Açúcar", "Arroz", "Feijão", "Ovos”, "Suco"]

//Inserindo um novo item no índice 2
finalShoppingList.insert("Chocolate", at: 2)
//["Leite", "Pão", "Chocolate", "Manteiga", "Açúcar", "Arroz", "Feijão", "Ovos”, "Suco"]

//Removendo Itens no Array
var buyList : [String] = ["Leite", "Pão", "Chocolate", "Banana", "Manteiga", "Açúcar", "Arroz", "Feijão", "Ovos", "Suco" ]

//Removendo o elemento na posição 3 e atribuindo a uma variável
let banana = buyList.remove(at: 3)
print(banana)
print(buyList)

//Removendo o primeiro e o último elementos
let milk = buyList.removeFirst()
let juice = buyList.removeLast()
print(milk, juice)
print(buyList)

//Removendo os 2 últimos e os 2 primeiros
buyList.removeLast(2)
buyList.removeFirst(2)
print(buyList)
//["Manteiga", "Açúcar", "Arroz"]

//Verificando se a lista contém um elemento
print(buyList.contains("Café"))    //false
print(buyList.contains("Arroz"))    //true

//Pesquisando o índice de um elemento
//Note que o retorno desse método é um Int?, ou seja
//Para trabalharmos com este índice, precisamos desembrulhá-lo
if let sugarIndex = buyList.index(of: "Açúcar") {
    print("O índice do Açúcar no Array é \(sugarIndex)")
}
if let coffeeIndex = buyList.firstIndex(of: "Café") {
    print("O índice do Café no Array é \(coffeeIndex)")
}




// Dicionários / Dictionary

//Criando um dicionário cuja chave é uma String
//e os valores (elementos) são String também
var states : [String: String] = ["PA" : "Pará", "BA" : "Bahia",
"SP" : "São Paulo", "RJ" : "Rio de Janeiro"]
print(states)

//Criando um dicionário vazio
var emptyStates : [String: String] = [:]

//Verificando se o dicionário está vazio
if states.isEmpty {
    print("O dicionário está vazio")
}
if emptyStates.isEmpty {
    print("O dicionário está vazio")
}

//Recuperando o valor atribuído a uma chave
let rj = states["RJ"]
print(rj)   //OutPut: Optional("Rio de Janeiro")

//Um dicionário sempre devolve Optional, por isso
//precisamos desembrulhar seu conteúdo para utilizar
if let rj = states["RJ"] {
    print(rj)   //Output: Rio de Janeiro
}

//Inserindo elementos
states["MS"] = "Mato Grosso do Sul"
//Verificando se um elemento está presente no dicionário
if states["MS"] != nil {
    print("Existe Mato Grosso do Sul no dicionário")
}
//Duas formas de remover elementos
states["RJ"] = nil
states.removeValue(forKey: "BA")

print(states)




//Criando um Set de Strings
var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De Volta para o Futuro",
]

//Crianto um set vazio
var movies2 = Set<String>()

//Inserindo elementos
movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count) //Output: 5

//Perceba que o código abaixo não altera a quantidade
//de itens do Set pois ele não aceita itens repetidos.
movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count) //Output: 5

//Podemos saber se o item foi ou não inserido se atribuirmos
//a operação de inclusão a uma variável e verificarmos se
//a propriedade inserted é true
let result = movies.insert("Homem-Aranha: De Volta para o Lar")
print(result.inserted) //Output: false

//Removendo elementos
movies.remove("Homem-Aranha: De Volta para o Lar")
print(movies)
// Output: ["Vingadores", "De Volta para o Futuro", "Matrix", "Jurassic Park"]

//Pecorrendo um Set
for movie in movies {
    print(movie)
}

//Verificando se determinado elemento está contido no Set
if movies.contains("Matrix") {
    print("Matrix está na minha lista de filmes favoritos!!")
}

//Vamos criar um novo Set para realizarmos algumas operações
var myWifeMovies: Set<String> = [
    "De Repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De Volta para o Futuro",
    "Jurassic Park"
]

//Abaixo, estamos criando um novo Set (filmes favoritos)
//que será composto pela intersecção dos filmes presentes em
//movies com os presentes em myWifeMovies
let favoriteMovies = movies.intersection(myWifeMovies)
print(favoriteMovies)
//Output: ["De Volta para o Futuro", "Jurassic Park"]

//Criando um Set com todos os filmes
let allMovies = movies.union(myWifeMovies)
print(allMovies)
//Output: ["De Repente 30", "Mensagem para você", "Vingadores", "De Volta para o Futuro", "Jurassic Park", "Sintonia de Amor", "Matrix"]

//Removendo um Set de outro
movies = movies.subtracting(myWifeMovies)
print(movies)
//Output: ["Vingadores", "Matrix"]
