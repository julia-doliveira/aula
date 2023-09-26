const app = require('../../startup.js')
const PersonagemModel = require('../models/PersonagemModel.js')

app.get("/getAllPersons", (req, res) => {
    res.setHeader("Access-Control-Allow-Origin","*")

    const pokemon = new Personagem("Charmander","Fogo","Masculino")
    const powerRanger = new Personagem("Preto","Mamute","Masculino")
    const cavaleiroZodiaco = new Personagem("Seya","Meteoro","Não binarie")

    res.json([
        pokemon.pegarInformacoes(),
        powerRanger.pegarInformacoes(),
        cavaleiroZodiaco.pegarInformacoes()
    ])
})
