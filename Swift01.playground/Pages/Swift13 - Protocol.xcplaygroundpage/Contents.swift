// PROTOCOL

class File {
    let name: String
    let ext: String
    let size: Double
    init(aName: String, anExt: String, aSize: Double) {
        name = aName
        ext = anExt
        size = aSize
    }
}

protocol Sizeable {
    var width: Int {get set}
    var height: Int {get set}
}

protocol Playable {
    var duration: Double {get set}
    func play()
    func stop()
}


class Gif: File, Sizeable {
    var width: Int
    var height: Int
    var animated: Bool
         init(aName: String, aSize: Double, isAnimated: Bool,
        aWidth: Int, aHeight: Int) {
        
        width = aWidth
        height = aHeight
        animated = isAnimated
        super.init(aName: aName, anExt: "gif", aSize: aSize)
    }
}

class Png: File, Sizeable {
    var width: Int
    var height: Int
    
    init(aName: String, aSize: Double, aWidth: Int,
         aHeight: Int) {
        
        width = aWidth
        height = aHeight
        super.init(aName: aName, anExt: "png", aSize: aSize)
    }
}

class Mov: File, Sizeable, Playable {
    var width: Int
    var height: Int
    var duration: Double
    
    func play() {
        print("Vídeo está tocando")
    }
    
    func stop() {
        print("Vídeo está parado")
    }

    init(aName: String, aSize: Double, aWidth: Int,
         aHeight: Int, aDuration: Double) {
        
        width = aWidth
        height = aHeight
        duration = aDuration
        super.init(aName: aName, anExt: "mov", aSize: aSize)
    }
}

class Mp3: File, Playable {
    var duration: Double
    
    func play() {
        print("O som está tocando")
    }
    
    func stop() {
        print("O som está parado")
    }

    init(aName: String, aSize: Double, aDuration: Double) {
        
        duration = aDuration
        super.init(aName: aName, anExt: "mp3", aSize: aSize)
    }
}


//Criando os arquivos
var pngFile = Png(aName: "foto", aSize: 1.5, aWidth: 2000, aHeight: 1200)
var movFile = Mov(aName: "video", aSize: 250.0, aWidth: 1280, aHeight: 720, aDuration: 600)
var gifFile = Gif(aName: "animado", aSize: 1.0, isAnimated: true, aWidth: 800, aHeight: 600)
var mp3File = Mp3(aName: "musica", aSize: 3.2, aDuration: 240)

//Criando array de File
let files: [File] = [pngFile, movFile, gifFile, mp3File]



//Varrendo o array e verificando se o arquivo é Playable
//Caso seja, itemos rodar o arquivo. Para isso, tratamos
//como Playable e chamamos o método play()
for file in files {
    
    //Abaixo, verificamos se o objeto file é do tipo
    //Playable utilizando a palavra reservada is

    if file is Playable {

        print("Tocando o arquivo \(file.name).\(file.ext)")
        
        //file.play()
        //Não adianta executar da forma acima por que file é
        //do tipo File e este tipo não possui o método
        //play(). Para isso, precisamos tratá-lo como sendo
        //um Playable. O nome desta técnica é Type Casting,
        //ou apenas Cast.
        (file as! Playable).play()
    }
}
