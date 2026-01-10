// Selecionando o database "viagens"
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

db.usuarios.insertMany([
  {
    nome: "Bruno Silva",
    idade: 35,
    data_de_nascimento: "1988-07-22",
    endereco: [
      {
        logradouro: "Rua das Flores",
        numero: 123,
        bairro: "Centro",
        cidade: "São Paulo",
        estado: "SP"
      }
    ],
    interesses: ["futebol", "música"],
    reservas: [
      {
        data: "2020-05-15",
        status: "Confirmada",
        destino: ObjectId("6562b6d56636c5455aeb53d1")
      }
    ]
  },
  {
    nome: "Camila Oliveira",
    idade: 28,
    data_de_nascimento: "1995-11-08",
    endereco: [
      {
        logradouro: "Rua das Palmeiras",
        numero: 456,
        bairro: "Jardim Paulista",
        cidade: "São Paulo",
        estado: "SP"
      }
    ],
    interesses: ["leitura", "arte"],
    reservas: [
      {
        data: "2021-03-10",
        status: "Confirmada",
        destino: ObjectId("6562b6d56636c5455aeb53d2")
      }
    ]
  },
  {
    nome: "Diego Fernandes",
    idade: 42,
    data_de_nascimento: "1982-09-15",
    endereco: [
      {
        logradouro: "Rua das Acácias",
        numero: 789,
        bairro: "Vila Olímpia",
        cidade: "São Paulo",
        estado: "SP"
      }
    ],
    interesses: ["tecnologia", "esportes"],
    reservas: [
      {
        data: "2022-07-20",
        status: "Confirmada",
        destino: ObjectId("6562b6d56636c5455aeb53d3")
      }
    ]
  },
  {
    nome: "Fernanda Costa",
    idade: 31,
    data_de_nascimento: "1992-04-25",
    endereco: [
      {
        logradouro: "Rua das Orquídeas",
        numero: 321,
        bairro: "Pinheiros",
        cidade: "São Paulo",
        estado: "SP"
      }
    ],
    interesses: ["moda", "fotografia"],
    reservas: [
      {
        data: "2023-01-15",
        status: "Confirmada",
        destino: ObjectId("6562b6d56636c5455aeb53d4")
      }
    ]
  },
  {
    nome: "Gabriel Santos",
    idade: 27,
    data_de_nascimento: "1996-08-10",
    endereco: [
      {
        logradouro: "Rua das Acácias",
        numero: 789,
        bairro: "Vila Olímpia",
        cidade: "São Paulo",
        estado: "SP"
      }
    ],
    interesses: ["tecnologia", "esportes"],
    reservas: [
      {
        data: "2022-07-20",
        status: "Confirmada",
        destino: ObjectId("6562b6d56636c5455aeb53d3")
      }
    ]
  }
]);

db.destinos.insertMany([
  {
    nome: "Rio de Janeiro",
    pais: "Brasil",
    descricao: "Cidade maravilhosa conhecida por suas praias, samba e carnaval.",
    imagem: "rio_de_janeiro.jpg"
  },
  {
    nome: "Paris",
    pais: "França",
    descricao: "Cidade da luz, famosa por sua arquitetura, arte e gastronomia.",
    imagem: "paris.jpg"
  },
  {
    nome: "Tóquio",
    pais: "Japão",
    descricao: "Capital do Japão, conhecida por sua cultura única e tecnologia avançada.",
    imagem: "tokyo.jpg"
  },
  {
    nome: "Nova York",
    pais: "Estados Unidos",
    descricao: "Cidade que nunca dorme, famosa por sua diversidade e energia.",
    imagem: "nova_york.jpg"
  },
  {
    nome: "Londres",
    pais: "Reino Unido",
    descricao: "Capital da Inglaterra, rica em história e cultura.",
    imagem: "londres.jpg"
  },
  {
    nome: "São Paulo",
    pais: "Brasil",
    descricao: "Cidade do sul do Brasil, conhecida por sua cultura e diversidade.",
    imagem: "sao_paulo.jpg"
  },
  {
    nome: "Barcelona",
    pais: "Espanha",
    descricao: "Cidade vibrante conhecida por sua arquitetura e praias.",
    imagem: "barcelona.jpg"
  },
  {
    nome: "Sydney",
    pais: "Austrália",
    descricao: "Cidade da Austrália, conhecida por sua cultura e praias.",
    imagem: "sydney.jpg"
  }
]);

db.reservas.insertMany([
  {
    usuario_id: ObjectId("6562b6d56636c5455aeb53cf"),
    destino_id: ObjectId("6562b6d56636c5455aeb53d0"),
    data: "2018-12-21",
    status: "Confirmada"
  },
  {
    usuario_id: ObjectId("6562b6d56636c5455aeb53d1"),
    destino_id: ObjectId("6562b6d56636c5455aeb53d1"),
    data: "2020-05-15",
    status: "Confirmada"
  },
  {
    usuario_id: ObjectId("6562b6d56636c5455aeb53d2"),
    destino_id: ObjectId("6562b6d56636c5455aeb53d2"),
    data: "2021-03-10",
    status: "Confirmada"
  },
  {
    usuario_id: ObjectId("6562b6d56636c5455aeb53d3"),
    destino_id: ObjectId("6562b6d56636c5455aeb53d3"),
    data: "2022-07-20",
    status: "Confirmada"
  },
  {
    usuario_id: ObjectId("6562b6d56636c5455aeb53d4"),
    destino_id: ObjectId("6562b6d56636c5455aeb53d4"),
    data: "2023-01-15",
    status: "Confirmada"
  }
]);

// Consultando dados

db.usuarios.find({"nome": "Rafaela Pinheiro"});

db.destinos.findOne({"nome": "Paris"});

db.usuarios.findOneAndUpdate(
  { "nome": "Bruno Silva" },
  { $set: { "idade": 36 } },
  { returnNewDocument: false }
);

db.reservas.findOneAndDelete(
  { "usuario_id": ObjectId("6562b6d56636c5455aeb53d2") }
);



