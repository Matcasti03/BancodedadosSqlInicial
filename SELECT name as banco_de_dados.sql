SELECT name as banco_de_dados
from sys.databases
Order by name;

USE DbMatCastilho;
GO
SELECT name From sys.tables
GO

CREATE TABLE Estudante(
    IdEstudante INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Turma Varchar (50) NOT NULL,
    Apelido Varchar(30) NOT NULL,

);

CREATE TABLE Videos(
    IdVideo INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Descricao VARCHAR(225) NOT NULL,
    data_publicacao DATE NOT NULL,
    Duracao TIME NOT NULL,
    matricula_estudante INT NOT NULL,
FOREIGN KEY (matricula_estudante) REFERENCES Estudante(IdEstudante)
);

INSERT INTO Estudante (IdEstudante, Nome, Turma, Apelido)
VALUES
(1, 'Perter Parker', '2A', 'Homem-Aranha'),
(2, 'Mary Jane', '2A', 'MJ'),
(3, 'Tony STARK', '3b', 'Homem de Ferro'),
(4, 'Natsha Romanoff', '2B', 'Viuva negra'),
(5, 'Thor Odinson', '2B', 'Thor'),
(6, 'Beuce Wayne', '2B', 'Batman'),
(7, 'Clark Kent', '2C', 'SuperMan'),
(8, 'Diana Prince', '2C', 'Mulher Maravilha'),
(9, 'Barry Allen', '2C', 'Flash'),
(10, 'Arthut Curry', '2A', 'Aquaman');

Select * from Estudante;


INSERT INTO Videos (IdVideo, Titulo, Descricao, data_publicacao, Duracao, matricula_estudante)
VALUES
(1, 'Teia de Dados','Homem-Aranha I', '2023-01-15', '00:45:00', 1),
(2, 'Amor e Ação','Mary Jane II', '2023-02-20', '00:50:00', 2),
(3, 'Homem de Ferro: Ascensão','Tony Stark III', '2023-03-10', '01:30:00', 3),
(4, 'Agente Secreta','Natasha Romanoff IV', '2023-04-05', '01:15:00', 4),
(5, 'Deus do Trovão','Thor Odinson V', '2023-05-12', '01:20:00', 5),
(6, 'Cavaleiro das Trevas','Bruce Wayne VI', '2023-06-18', '01:40:00', 6),
(7, 'O Homem de Aço','Clark Kent VII', '2023-07-22', '01:25:00', 7),
(8, 'A Princesa Guerreira','Diana Prince VIII', '2023-08-30', '01:35:00', 8),
(9, 'Velocidade Extrema','Barry Allen IX', '2023-09-14', '01:10:00', 9),
(10, 'Rei dos Mares','Arthur Curry X', '2023-10-05', '01:50:00', 10);


Select * from Videos;

UPDATE Estudante 
SET Apelido = 'Aranha'
    WHERE IdEstudante = 1;

    SELECT
    v.Titulo,
    e.Nome AS autor,
    e.Apelido AS Heroi,
    v.Duracao,
    FROM Videos AS VALUE
    INNER JOIN Estudante AS e
    ON v.matricula_estudante = e.IdEstudante;