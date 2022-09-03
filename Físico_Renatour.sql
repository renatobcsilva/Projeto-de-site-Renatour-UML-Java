CREATE SCHEMA `renatour`;

CREATE TABLE Cliente (
    id_Cliente INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    email VARCHAR(50),
    telefone NUMERIC,
    cidade VARCHAR(50),
    estado VARCHAR(2),
    cep NUMERIC
);


CREATE TABLE Compras (
    id_Compra INTEGER PRIMARY KEY auto_increment,
    numCC INTEGER,
    cvv NUMERIC,
    nomeCC VARCHAR(50),
    validade DATE,
    total decimal (5),
    id_Cliente integer,
    foreign key(id_Cliente) references Cliente(id_Cliente)
);


CREATE TABLE Destinos (
    id_Destino INTEGER PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    preco decimal(5,2)
);


CREATE TABLE ItensCompra (
    quantidade integer,
    valor decimal(5),
    id_Destino integer,
    id_Compra integer,
    foreign key(id_Destino) references Destinos(id_Destino),
    foreign key(id_Compra) references Compras(id_Compra) 
    

);
