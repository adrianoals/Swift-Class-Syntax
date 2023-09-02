import UIKit

// Comentários de uma Linha

/* Comentários de multplas linhas
    Múltiplas Linhas
    Múltiplas Linhas
 */

var age1 = 20
var age2 = 30


///Soma de age1 com age 2
var sum = age1 + age2
age2 = 50
print(sum)
//Podemos documentar uma propriedade ou um método com comentários, para isso colocaremos os caracteres ///. Feito isso podemos abrir o Quick Help com a tecla de atalho [OPTION] + [CLICK] na propriedade sum e ver o sumário.



//Criando variável com tipo explícito
var name: String = "Steve Jobs"

//Criando variável utilizando inferência de tipo
var name2 = "Steve Wosniak"
//Um detalhe  que  devemos  atentar  em Swift é  que  toda  e  qualquer  variável precisa ter um valor atribuído antes desua utilização.
// O padrão de variável em Swift é o lowerCamelCase

//Usando lowerCamelCase. Cada nova palavra, começa em maiúscula
var firstName = "John"
var lastName = "Appleseed"

// Swift é uma das poucas, senão a única, linguagem a oferecer a possibilidade  de  trabalhar  com  emojis  como  nome  de variáveis
var 🐶 = "Billy"
var 👿 = "capetinha"
var 💩 = "cocô"
print("O meu cachorro se chama", 🐶, "e é um verdadeiro", 👿, "pois faz", 💩, "na casa toda")

//Para utilizar um emoji, aperte as teclas [Command] + [Control] + [Barra de Espaço] para abrir o painel de emojis

//Também é possível produzir diversas variáveis na mesma linha, separando por vírgula cada variável, porém utilizando var somente uma vez
//Criando 3 variáveis em uma única linha
var x = 12, y = "Oi", z = 3.3

//Criando constantes
let pi = 3.141592
let earthGravity = 9.81

//Note que não é possível alterar o valor de uma constante
//earthGravity = 10.01  //ERRO



