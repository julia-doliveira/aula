class Animal{

    tamanho
    cor
    raca
    especie
    grupo

    constructor(cor,raca,grupo){
      this.cor = cor
      this.raca = raca
      this.grupo = grupo

    }

    andar(){
    console.log("andou!")
    }

}

let gato = new Animal("Marrom","siamês","Felino")
let cachoro = new Animal("Preto","Pinscher","mamifero")

console.log(gato.cor)
console.log(cachorro.cor + " " + cachorro.raca)