// Selecionando o database "viagens"db.
use("viagens");

db.usuarios.insertOne({
  nome: "Rafaela Pinheiro",
  idade: 29,
  data_de_nascimento: "1997-03-14",
  endereco: [
    {
      logradouro: "Avenida Marina da Conceição Amicucci Rodrigues",
      numero: 8000,
      bairro: "Bopiranga",
      cidade: "Itanhaém",
      estado: "SP"
    }
  ],
  interesses: ["kart", "culinaria"],
  reservas: [
    {
      data: "2018-12-21",
      status: "Confirmada",
      destino: ObjectId("6562b6d56636c5455aeb53d0") // exemplo
    }
  ]
});