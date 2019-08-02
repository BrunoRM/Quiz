CREATE DATABASE QUIZ;

USE QUIZ;

CREATE TABLE player(
	id INT IDENTITY NOT NULL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	username VARCHAR(15) NOT  NULL UNIQUE,
	password VARCHAR(255) NOT NULL
);

CREATE TABLE question (
	id INT IDENTITY NOT NULL PRIMARY KEY,
	description VARCHAR(150) NOT NULL,
	dificult_level INT NOT NULL DEFAULT 1
);

CREATE TABLE answer (
	question_id INT FOREIGN KEY REFERENCES question(id),
	number INT NOT NULL,
	description VARCHAR(60) NOT NULL,
	is_correct bit DEFAULT 0,
	PRIMARY KEY(question_id, number)
);

CREATE TABLE scoreboard (
	id INT IDENTITY NOT NULL PRIMARY KEY,
	player_id INT FOREIGN KEY REFERENCES player(id),
	points INT NOT NULL DEFAULT 0,
	generated_date DATETIME NOT NULL DEFAULT GETDATE()
);

INSERT INTO question (description, dificult_level) VALUES ('Em que estado brasileiro nasceu a apresentadora Xuxa?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (1, 1, 'RIO DE JANEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (1, 2, 'RIO GRANDE DO SUL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (1, 3, 'SANTA CATARINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (1, 4, 'GOIÁS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome dado ao estado da água em forma de gelo?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (2, 1, 'LÍQUIDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (2, 2, 'SÓLIDO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (2, 3, 'GASOSO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (2, 4, 'VAPOROSO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual era o apelido da cantora Elis Regina?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (3, 1, 'GAUCHINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (3, 2, 'PAULISTINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (3, 3, 'PIMENTINHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (3, 4, 'ANDORINHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem é a namorada do Mickey?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (4, 1, 'MARGARIDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (4, 2, 'MINNIE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (4, 3, 'A PEQUENA SEREIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (4, 4, 'OLÍVIA PALITO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o personagem do folclore brasileiro que tem uma perna só?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (5, 1, 'CUCA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (5, 2, 'NEGRINHO DO PASTOREIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (5, 3, 'BOITATÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (5, 4, 'SACI-PERERÊ', 1);

INSERT INTO question (description, dificult_level) VALUES ('Fidel Castro nasceu em que país?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (6, 1, 'JAMAICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (6, 2, 'CUBA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (6, 3, 'EL SALVADOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (6, 4, 'MÉXICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem proclamou a república no Brasil em 1889?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (7, 1, 'DUQUE DE CAXIAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (7, 2, 'MARECHAL RONDON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (7, 3, 'DOM PEDRO II', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (7, 4, 'MARECHAL DEODORO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem é o patrono do exército brasileiro?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (8, 1, 'MARECHAL DEODORO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (8, 2, 'BARÃO DE MAUÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (8, 3, 'DUQUE DE CAXIAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (8, 4, 'MARQUÊS DE POMBAL', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem era o apresentador que reprovava os calouros tocando uma buzina?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (9, 1, 'RAUL GIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (9, 2, 'BOLINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (9, 3, 'FLÁVIO CAVALCANTI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (9, 4, 'CHACRINHA', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que era Frankenstein, de Mary Shelley?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (10, 1, 'MONSTRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (10, 2, 'GORILA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (10, 3, 'PRÍNCIPE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (10, 4, 'SAPO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o signo do zodíaco de quem nasce no dia do ano-novo?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (11, 1, 'VIRGEM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (11, 2, 'AQUÁRIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (11, 3, 'CAPRICÓRNIO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (11, 4, 'ÁRIES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem fundou a fábrica de automóveis Ford?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (12, 1, 'HARRISON FORD', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (12, 2, 'GERALD FORD', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (12, 3, 'HENRY FORD', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (12, 4, 'ANNA FORD', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a cor que se associa com os grupos ecológicos?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (13, 1, 'PRETA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (13, 2, 'VERMELHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (13, 3, 'AZUL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (13, 4, 'VERDE', 1);

INSERT INTO question (description, dificult_level) VALUES ('A água ferve a quantos graus centígrados?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (14, 1, '200', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (14, 2, '100', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (14, 3, '170', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (14, 4, '220', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quando é comemorado o dia da independência do Brasil?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (15, 1, '21 DE ABRIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (15, 2, '12 DE OUTUBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (15, 3, '7 DE SETEMBRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (15, 4, '25 DE DEZEMBRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual lugar é também chamado de Santa Sé?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (16, 1, 'VENEZA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (16, 2, 'VITÓRIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (16, 3, 'VANCOUVER', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (16, 4, 'VATICANO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem tem por lema a frase: “Sempre alerta”?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (17, 1, 'MÉDICOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (17, 2, 'ESCOTEIROS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (17, 3, 'BOMBEIROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (17, 4, 'POLICIAIS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi o grande amor de Julieta?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (18, 1, 'ROMEU', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (18, 2, 'ORFEU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (18, 3, 'HAMLET', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (18, 4, 'IAGO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos signos formam o zodíaco?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (19, 1, 'NOVE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (19, 2, 'DEZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (19, 3, 'ONZE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (19, 4, 'DOZE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Vatapá é uma comida típica de qual estado?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (20, 1, 'PARANÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (20, 2, 'SANTA CATARINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (20, 3, 'SÃO PAULO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (20, 4, 'BAHIA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Como se chama o lugar onde são armazenadas as balas de um revólver?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (21, 1, 'CANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (21, 2, 'TAMBOR', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (21, 3, 'AGULHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (21, 4, 'GATILHO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual personagem da turma da Mônica tem apenas cinco fios de cabelo?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (22, 1, 'MÔNICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (22, 2, 'CEBOLINHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (22, 3, 'CASCÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (22, 4, 'MAGALI', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual cantora tinha o apelido de “Ternurinha” na época da jovem guarda?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (23, 1, 'SILVINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (23, 2, 'WANDERLÉIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (23, 3, 'GRETCHEN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (23, 4, 'MARTINHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O churrasco é considerado uma comida típica de qual estado?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (24, 1, 'CEARÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (24, 2, 'RIO GRANDE DO SUL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (24, 3, 'PARÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (24, 4, 'MARANHÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual cantor é o pai da dupla Sandy e Júnior?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (25, 1, 'LEONARDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (25, 2, 'XORORÓ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (25, 3, 'ZEZÉ DI CAMARGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (25, 4, 'CHITÃOZINHO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi o criador dos personagens Pedrinho, Narizinho e Emília?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (26, 1, 'MAURÍCIO DE SOUSA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (26, 2, 'ZIRALDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (26, 3, 'MONTEIRO LOBATO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (26, 4, 'MACHADO DE ASSIS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem fundou a Microsoft?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (27, 1, 'SULTÃO DE BRUNEI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (27, 2, 'AKIO MORITA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (27, 3, 'BILL GATES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (27, 4, 'PRÍNCIPE CHARLES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome dado ao pneu reserva do carro?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (28, 1, 'CALOTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (28, 2, 'ESTEPE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (28, 3, 'MACACO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (28, 4, 'CHAVE DE RODA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome do cachorro medroso do Salsicha, dos desenhos animados?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (29, 1, 'FLOQUINHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (29, 2, 'RIN-TIN-TIN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (29, 3, 'LASSIE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (29, 4, 'SCOOBY-DOO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quantas dentições naturais tem o ser humano durante a vida?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (30, 1, 'UMA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (30, 2, 'DUAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (30, 3, 'TRÊS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (30, 4, 'QUATRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Edinho, filho de Pelé, jogou no Santos em que posição?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (31, 1, 'ZAGUEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (31, 2, 'GOLEIRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (31, 3, 'ATACANTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (31, 4, 'ARMADOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a pedra preciosa mais dura encontrada na natureza?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (32, 1, 'ESMERALDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (32, 2, 'RUBI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (32, 3, 'PÉROLA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (32, 4, 'DIAMANTE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Como se chama o lugar onde se guardam vinhos?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (33, 1, 'ADEGA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (33, 2, 'BIBLIOTECA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (33, 3, 'SÓTÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (33, 4, 'SALA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual cantor ficou conhecido como “o rei do rock”?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (34, 1, 'FRANK SINATRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (34, 2, 'LITTLE RICHARD', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (34, 3, 'ELVIS PRESLEY', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (34, 4, 'RICHIE VALENS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem é o inimigo do Piu-Piu nos desenhos animados?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (35, 1, 'FÉLIX', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (35, 2, 'TOM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (35, 3, 'FRAJOLA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (35, 4, 'MINGAU', 0);

INSERT INTO question (description, dificult_level) VALUES ('Joana Prado é o nome verdadeiro de qual artista?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (36, 1, 'TIAZINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (36, 2, 'FEITICEIRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (36, 3, 'LADY LU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (36, 4, 'SHEILA MELLO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos dias tem um ano bissexto?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (37, 1, '364', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (37, 2, '365', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (37, 3, '366', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (37, 4, '367', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o réptil que muda de cor conforme o lugar em que está?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (38, 1, 'SAPO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (38, 2, 'CAMALEÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (38, 3, 'LAGARTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (38, 4, 'JACARÉ', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a duração de cada tempo de uma partida de futebol?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (39, 1, '45 MINUTOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (39, 2, '90 MINUTOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (39, 3, '120 MINUTOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (39, 4, '150 MINUTOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Onde fica o centro da indústria cinematográfica nos EUA?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (40, 1, 'NOVA YORK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (40, 2, 'LAS VEGAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (40, 3, 'NEW ORLEANS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (40, 4, 'HOLLYWOOD', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual era o código da identidade secreta de James Bond?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (41, 1, '7O7', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (41, 2, '9O7', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (41, 3, 'OO8', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (41, 4, 'OO7', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a fruta associada com a cidade de Laranjal?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (42, 1, 'MELANCIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (42, 2, 'LARANJA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (42, 3, 'MAÇÃ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (42, 4, 'UVA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos centavos equivalem a um real?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (43, 1, 'DEZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (43, 2, 'MIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (43, 3, 'CEM', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (43, 4, 'CINQÜENTA', 0);

INSERT INTO question (description, dificult_level) VALUES ('De acordo com a Bíblia, qual era o “fruto proibido”?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (44, 1, 'MAMÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (44, 2, 'MAÇÃ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (44, 3, 'UVA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (44, 4, 'ABACAXI', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é conhecida a ponte que liga Rio de Janeiro a Niterói?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (45, 1, 'GOLDEN GATE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (45, 2, 'RIO-NITERÓI', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (45, 3, 'RIO SÃO FRANCISCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (45, 4, 'BROOKLIN', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que ano os portugueses descobriram o Brasil?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (46, 1, '1450', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (46, 2, '1500', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (46, 3, '1550', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (46, 4, '1400', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que é medido por um termômetro?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (47, 1, 'LONGITUDE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (47, 2, 'UMIDADE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (47, 3, 'TEMPERATURA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (47, 4, 'LATITUDE', 0);

INSERT INTO question (description, dificult_level) VALUES ('O rio Amazonas pertence a qual continente?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (48, 1, 'AMERICANO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (48, 2, 'AFRICANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (48, 3, 'EUROPEU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (48, 4, 'ASIÁTICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem esculpiu o boneco Pinóquio, no conto de Carlo Lorenzini?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (49, 1, 'GEPETO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (49, 2, 'FADA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (49, 3, 'BRUXA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (49, 4, 'GIGANTE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a moeda oficial dos Estados Unidos?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (50, 1, 'ESCUDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (50, 2, 'COROA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (50, 3, 'DÓLAR', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (50, 4, 'LIBRA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o placar no final da Copa de 98, quando o Brasil perdeu para a França?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (51, 1, 'DOIS A ZERO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (51, 2, 'TRÊS A ZERO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (51, 3, 'QUATRO A ZERO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (51, 4, 'CINCO A ZERO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantas folhas tem um trevo da sorte?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (52, 1, 'TRÊS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (52, 2, 'QUATRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (52, 3, 'CINCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (52, 4, 'SEIS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a cidade conhecida como “terra da garoa”?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (53, 1, 'RIO DE JANEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (53, 2, 'PORTO ALEGRE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (53, 3, 'PIRACICABA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (53, 4, 'SÃO PAULO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual ator do cinema brasileiro é conhecido por ter unhas enormes?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (54, 1, 'PENADINHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (54, 2, 'ZÉ DO CAIXÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (54, 3, 'ZÉ DO CASARÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (54, 4, 'TONINHO DO DIABO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O violoncelo é um tipo de instrumento de?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (55, 1, 'SOPRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (55, 2, 'CORDAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (55, 3, 'PERCUSSÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (55, 4, 'REPERCUSSÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Com que fruta a Branca de Neve foi envenenada?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (56, 1, 'MAÇÃ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (56, 2, 'PÊRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (56, 3, 'MELÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (56, 4, 'LARANJA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi técnico da Seleção brasileira de futebol na Copa de 98?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (57, 1, 'ZAGALLO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (57, 2, 'SCOLARI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (57, 3, 'LUXEMBURGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (57, 4, 'CARPEGIANNI', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que cidade é realizada a corrida de São Silvestre?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (58, 1, 'BELO HORIZONTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (58, 2, 'RIO DE JANEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (58, 3, 'SÃO PAULO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (58, 4, 'SALVADOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a área da medicina que trata de crianças?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (59, 1, 'GERIATRIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (59, 2, 'PEDIATRIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (59, 3, 'INFANTOLOGIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (59, 4, 'BIOLOGIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O saquê é uma bebida típica de qual país?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (60, 1, 'ESTADOS UNIDOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (60, 2, 'JAPÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (60, 3, 'CORÉIA DO SUL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (60, 4, 'CHINA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O dromedário tem quantas corcovas?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (61, 1, 'UMA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (61, 2, 'DUAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (61, 3, 'TRÊS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (61, 4, 'QUATRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Um adulto sadio tem quantos dentes na boca?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (62, 1, '18', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (62, 2, '24', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (62, 3, '32', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (62, 4, '36', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual dos sete anões usa óculos?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (63, 1, 'DUNGA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (63, 2, 'ZANGADO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (63, 3, 'DENGOSO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (63, 4, 'MESTRE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem é o Homem de Aço das histórias em quadrinhos?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (64, 1, 'BATMAN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (64, 2, 'HUCK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (64, 3, 'HE-MAN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (64, 4, 'SUPER-HOMEM', 1);

INSERT INTO question (description, dificult_level) VALUES ('Cavalo, rainha e torre são peças de qual jogo?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (65, 1, 'DAMAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (65, 2, 'XADREZ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (65, 3, 'LUDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (65, 4, 'DOMINÓ', 0);

INSERT INTO question (description, dificult_level) VALUES ('Turmalina é uma espécie de quê?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (66, 1, 'FLOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (66, 2, 'FRUTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (66, 3, 'PEDRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (66, 4, 'VERDURA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o santo casamenteiro?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (67, 1, 'SÃO PEDRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (67, 2, 'SÃO PAULO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (67, 3, 'SÃO JOÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (67, 4, 'SANTO ANTÔNIO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem ocupou o cargo de Ministro da Saúde do Brasil no ano de 2000?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (68, 1, 'ADIB JATENE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (68, 2, 'JOSÉ SERRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (68, 3, 'CIRO GOMES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (68, 4, 'PEDRO MALAN', 0);

INSERT INTO question (description, dificult_level) VALUES ('Segundo a Bíblia, quem foi morto por Caim?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (69, 1, 'ADÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (69, 2, 'ISAAC', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (69, 3, 'ABEL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (69, 4, 'ABRAÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o livro dividido em Velho Testamento e Novo Testamento?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (70, 1, 'BÍBLIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (70, 2, 'ENCICLOPÉDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (70, 3, 'DICIONÁRIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (70, 4, 'ATLAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual objeto é usado como arma pelo Pingüim do Batman?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (71, 1, 'GUARDA-CHUVA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (71, 2, 'CHAPÉU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (71, 3, 'GALOCHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (71, 4, 'CAPA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual ser mitológico possui o corpo metade mulher e metade peixe?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (72, 1, 'SEREIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (72, 2, 'MEDUSA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (72, 3, 'CLEÓPATRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (72, 4, 'SERENA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o nome dado ao movimento liderado por Tiradentes?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (73, 1, 'REVOLUÇÃO FRANCESA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (73, 2, 'GUERRA DOS EMBOABAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (73, 3, 'INCONFIDÊNCIA MINEIRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (73, 4, 'SEGUNDA GUERRA MUNDIAL', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o país de origem do vinho champanha?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (74, 1, 'AMÉRICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (74, 2, 'HOLANDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (74, 3, 'FRANÇA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (74, 4, 'SUÉCIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual destes elementos se forma dentro das  ostras?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (75, 1, 'DIAMANTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (75, 2, 'PÉROLA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (75, 3, 'RUBI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (75, 4, 'ESMERALDA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quando é comemorado o dia da mentira no Brasil?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (76, 1, '26 DE DEZEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (76, 2, '7 DE SETEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (76, 3, '1 DE ABRIL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (76, 4, '15 DE NOVEMBRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que estado nasceu a cantora Elba Ramalho?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (77, 1, 'PARAÍBA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (77, 2, 'CEARÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (77, 3, 'BAHIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (77, 4, 'ALAGOAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quando é comemorado o dia da criança?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (78, 1, '12 DE OUTUBRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (78, 2, '1 DE ABRIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (78, 3, '13 DE MAIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (78, 4, '9 DE JULHO', 0);

INSERT INTO question (description, dificult_level) VALUES ('De qual lugar o personagem Tarzan era considerado rei?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (79, 1, 'A SELVA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (79, 2, 'A NOITE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (79, 3, 'DA TASMÂNIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (79, 4, 'DAS MULHERES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem é a mulher do Tarzan?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (80, 1, 'DIANA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (80, 2, 'LOUIS LAINE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (80, 3, 'JANE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (80, 4, 'CHITA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o animal que puxa o trenó do Papai Noel?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (81, 1, 'CAVALO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (81, 2, 'RENA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (81, 3, 'TOURO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (81, 4, 'JUMENTO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Capixaba é quem nasce em qual estado brasileiro?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (82, 1, 'ESPÍRITO SANTO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (82, 2, 'RIO GRANDE DO NORTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (82, 3, 'SANTA CATARINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (82, 4, 'PARANÁ', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos titulares possui uma equipe de vôlei?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (83, 1, 'CINCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (83, 2, 'SEIS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (83, 3, 'SETE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (83, 4, 'OITO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o profissional que conduz o elevador?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (84, 1, 'CONDUTOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (84, 2, 'OPERADOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (84, 3, 'ASCENSORISTA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (84, 4, 'RECEPCIONISTA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Segundo a Bíblia, quantos apóstolos tinha Jesus Cristo?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (85, 1, 'DEZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (85, 2, 'ONZE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (85, 3, 'DOZE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (85, 4, 'TREZE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em qual país surgiu a máfia?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (86, 1, 'ESTADOS UNIDOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (86, 2, 'INGLATERRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (86, 3, 'ITÁLIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (86, 4, 'ESPANHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o profissional que usa o estetoscópio?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (87, 1, 'ENGENHEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (87, 2, 'MECÂNICO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (87, 3, 'MÉDICO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (87, 4, 'AVIADOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Fernando Henrique Cardoso é formado em que área?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (88, 1, 'ADMINISTRAÇÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (88, 2, 'ECONOMIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (88, 3, 'DIREITO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (88, 4, 'SOCIOLOGIA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual destes é considerado o mês das noivas?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (89, 1, 'TEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (89, 2, 'NHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (89, 3, 'IO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (89, 4, 'VEMBRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem inventou o telefone?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (90, 1, 'GRAHAM BELL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (90, 2, 'GEORGE WASHINGTON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (90, 3, 'THOMAS EDISON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (90, 4, 'MARCONI', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o esporte praticado com pequenos aviões de controle remoto?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (91, 1, 'AUTOMOBILISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (91, 2, 'IATISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (91, 3, 'AEROMODELISMO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (91, 4, 'ATLETISMO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o significado da frase inglesa “I love you”?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (92, 1, 'BOM-DIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (92, 2, 'ATÉ LOGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (92, 3, 'EU AMO VOCÊ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (92, 4, 'ESTOU COM FOME', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual personagem lidera o bando da floresta de Sherwood?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (93, 1, 'ROBIN COOK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (93, 2, 'ROBIN BANKS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (93, 3, 'ROBIN HOOD', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (93, 4, 'ROBIN DAYS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a cor da pedra  rubi?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (94, 1, 'AZUL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (94, 2, 'VERDE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (94, 3, 'AMARELA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (94, 4, 'VERMELHA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a planta que fortalece o marinheiro Popeye?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (95, 1, 'ALFACE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (95, 2, 'ESPINAFRE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (95, 3, 'CENOURA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (95, 4, 'REPOLHO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quando é comemorado o dia de Santo Antônio?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (96, 1, '12 DE AGOSTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (96, 2, '11 DE JANEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (96, 3, '7 DE SETEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (96, 4, '13 DE JUNHO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual era a profissão exercida por Lula, antes de ele ser presidente do PT?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (97, 1, 'ENGRAXATE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (97, 2, 'PEDREIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (97, 3, 'FEIRANTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (97, 4, 'METALÚRGICO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi o amor do imperador Marco Antônio?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (98, 1, 'SHERAZADE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (98, 2, 'LADY GODIVA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (98, 3, 'CLEÓPATRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (98, 4, 'JULIETA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual estação do ano fica entre o verão e o inverno?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (99, 1, 'VERÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (99, 2, 'OUTONO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (99, 3, 'INVERNO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (99, 4, 'PRIMAVERA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como Joana d`Arc foi morta?', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (100, 1, 'ENFORCADA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (100, 2, 'AFOGADA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (100, 3, 'QUEIMADA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (100, 4, 'ASFIXIADA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos jogadores um jogo de vôlei reúne na quadra?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (101, 1, 'SEIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (101, 2, 'OITO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (101, 3, 'DEZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (101, 4, 'DOZE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o país do tango?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (102, 1, 'URUGUAI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (102, 2, 'ARGENTINA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (102, 3, 'PARAGUAI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (102, 4, 'ESPANHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que imperador pôs fogo em Roma?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (103, 1, 'TRAJANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (103, 2, 'NERO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (103, 3, 'BRUTUS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (103, 4, 'CALÍGULA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A cidade de Pompéia, que foi soterrada por um vulcão fica em qual desses países?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (104, 1, 'JAPÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (104, 2, 'MÉXICO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (104, 3, 'ITÁLIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (104, 4, 'ESTADOS UNIDOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamado quem nasce em Milão, na Itália?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (105, 1, 'MILANENSE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (105, 2, 'MILANOSO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (105, 3, 'MILISTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (105, 4, 'MILANÊS', 1);

INSERT INTO question (description, dificult_level) VALUES ('Que profissional usa uma ferramenta chamada formão?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (106, 1, 'CARPINTEIRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (106, 2, 'RELOJOEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (106, 3, 'CONFEITEIRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (106, 4, 'BOMBEIRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em qual estádio Pelé marcou seu milésimo gol?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (107, 1, 'MORUMBI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (107, 2, 'PACAEMBU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (107, 3, 'MARACANÃ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (107, 4, 'MINEIRÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que é um oboé?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (108, 1, 'VULCÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (108, 2, 'COMIDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (108, 3, 'INSTRUMENTO MUSICAL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (108, 4, 'TRIBO INDÍGENA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como eram chamados os pilotos suicidas da Segunda Guerra?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (109, 1, 'CAMICASES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (109, 2, 'SASHIMIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (109, 3, 'HARAQUIRIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (109, 4, 'SUMÔS', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que é gôndola?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (110, 1, 'EMBARCAÇÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (110, 2, 'BRINQUEDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (110, 3, 'MÚSICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (110, 4, 'SÍMBOLO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Sashimi é um prato originário de qual país?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (111, 1, 'JAPÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (111, 2, 'CHINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (111, 3, 'ÍNDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (111, 4, 'INDONÉSIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamada a cantora que representa o papel principal em uma ópera?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (112, 1, 'PRIMEIRA DAMA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (112, 2, 'DONA-PRIMA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (112, 3, 'PRIMA-DONA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (112, 4, 'OBRA-PRIMA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Peroba é uma espécie de?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (113, 1, 'INSETO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (113, 2, 'ÁRVORE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (113, 3, 'VERME', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (113, 4, 'VERDURA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O alpinismo é praticado em que lugar?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (114, 1, 'MAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (114, 2, 'MONTANHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (114, 3, 'RIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (114, 4, 'PRAIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O Coliseu é um monumento histórico de que cidade européia?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (115, 1, 'PARIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (115, 2, 'COPENHAGUE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (115, 3, 'ROMA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (115, 4, 'LONDRES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o ponto mais alto da Terra?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (116, 1, 'EVEREST', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (116, 2, 'MONTE SINAI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (116, 3, 'MONTE CASTELO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (116, 4, 'MONT BLANC', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que rio corta a cidade de Londres, na Inglaterra?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (117, 1, 'TÂMISA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (117, 2, 'SENA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (117, 3, 'RENO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (117, 4, 'AUBE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a raça do personagem principal do filme “Beethoven”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (118, 1, 'FILA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (118, 2, 'PASTOR ALEMÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (118, 3, 'POODLE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (118, 4, 'SÃO-BERNARDO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi eleito presidente da África do Sul em 1994?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (119, 1, 'NELSON PIQUET', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (119, 2, 'NELSON MANDELA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (119, 3, 'NELSON NED', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (119, 4, 'JOHN NELSON', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual cantor ficou conhecido como “O rei da voz”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (120, 1, 'ORLANDO SILVA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (120, 2, 'VICENTE CELESTINO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (120, 3, 'FRANCISCO ALVES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (120, 4, 'CARLOS GALHARDO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quantos quilates tem o ouro puro?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (121, 1, '18', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (121, 2, '20', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (121, 3, '24', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (121, 4, '30', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a sigla da Organização das Nações Unidas?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (122, 1, 'ONU', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (122, 2, 'FMI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (122, 3, 'CIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (122, 4, 'OTAN', 0);

INSERT INTO question (description, dificult_level) VALUES ('De quantos em quantos anos aparece o cometa Halley?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (123, 1, '57 ANOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (123, 2, '67 ANOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (123, 3, '76 ANOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (123, 4, '79 ANOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Segundo a crença popular, a mula-sem-cabeça é mulher de quem?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (124, 1, 'DO COROINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (124, 2, 'DO PADRE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (124, 3, 'DO SACRISTÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (124, 4, 'DO BISPO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que atriz protagonizou o filme “Titanic”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (125, 1, 'CAMERON DIAZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (125, 2, 'KATE WINSLET', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (125, 3, 'BRIDGET FONDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (125, 4, 'CATHERINE ZETTA JONES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamada a doença que causa perda desigual da melanina?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (126, 1, 'ASTIGMATISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (126, 2, 'TENDINITE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (126, 3, 'VITILIGO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (126, 4, 'VITINGA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem realizou a primeira cirurgia de ponte de safena no Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (127, 1, 'DR. ZERBINI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (127, 2, 'DR. FRITZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (127, 3, 'DR. JATENE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (127, 4, 'DR. CALLIGARI', 0);

INSERT INTO question (description, dificult_level) VALUES ('No filme, quem era parceiro de crimes da Bonnie?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (128, 1, 'BILL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (128, 2, 'CLYDE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (128, 3, 'JAMES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (128, 4, 'BUTCH', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a moeda oficial da Alemanha?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (129, 1, 'LIRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (129, 2, 'MARCO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (129, 3, 'FRANCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (129, 4, 'LIBRA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi o assassino de Lee Harvey Oswald?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (130, 1, 'JACK RUBY', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (130, 2, 'JOHN WILKES BOOTH', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (130, 3, 'PAT GARRET', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (130, 4, 'CHARLOTTE CORDAY', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem é o parceiro de aventuras de Dom Quixote?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (131, 1, 'SANCHO PANÇA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (131, 2, 'GUILHERME TELL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (131, 3, 'SIGMUND FREUD', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (131, 4, 'LANCELOT', 0);

INSERT INTO question (description, dificult_level) VALUES ('Nas histórias do Snoopy, qual é o nome do passarinho?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (132, 1, 'PIU-PIU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (132, 2, 'WOODSTOCK', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (132, 3, 'CANARINHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (132, 4, 'ROUXINOL', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que metal avermelhado cria uma camada esverdeada em contato com a umidade?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (133, 1, 'FERRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (133, 2, 'COBRE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (133, 3, 'MERCÚRIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (133, 4, 'AÇO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que planta era usada para fabricação de papel no antigo Egito?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (134, 1, 'PAPIRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (134, 2, 'EUCALIPTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (134, 3, 'OLIVEIRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (134, 4, 'MILHO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que país europeu tem como atração a tourada?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (135, 1, 'ESPANHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (135, 2, 'ITÁLIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (135, 3, 'FRANÇA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (135, 4, 'ALEMANHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que humorista, falecido em 1999, foi baterista de Raul Seixas?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (136, 1, 'LILICO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (136, 2, 'RONI CÓCEGAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (136, 3, 'GRANDE OTELO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (136, 4, 'MAZZAROPI', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que os filatelistas colecionam?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (137, 1, 'QUADROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (137, 2, 'MOEDAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (137, 3, 'SELOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (137, 4, 'FIGURINHAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem pintou o quadro “La Gioconda”, conhecido como “Mona Lisa”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (138, 1, 'LEONARDO DA VINCI', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (138, 2, 'TICIANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (138, 3, 'RAFAEL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (138, 4, 'MICHELÂNGELO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que cidade está situada a famosa Praça Vermelha?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (139, 1, 'MOSCOU', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (139, 2, 'BERLIM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (139, 3, 'PARIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (139, 4, 'ROMA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome do vulcão que sepultou cidades na Itália no ano de 79?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (140, 1, 'VÊNUS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (140, 2, 'VESÚVIO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (140, 3, 'VARSÓVIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (140, 4, 'VENEZA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quando começou e terminou a Primeira Guerra Mundial?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (141, 1, '1914-1919', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (141, 2, '1939-1945', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (141, 3, '1921-1932', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (141, 4, '1912-1915', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a letra do alfabeto que simboliza o número dez em algarismo romano?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (142, 1, 'V', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (142, 2, 'D', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (142, 3, 'L', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (142, 4, 'X', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a história que Francis Ford Coppola dirigiu em três partes?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (143, 1, 'TITANIC', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (143, 2, 'SEXTA-FEIRA TREZE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (143, 3, 'O PODEROSO CHEFÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (143, 4, 'GUERRA NAS ESTRELAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que animais são criados nas pocilgas?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (144, 1, 'CAMELOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (144, 2, 'BÚFALOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (144, 3, 'CARNEIROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (144, 4, 'PORCOS', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi o diretor do filme “A lista de Schindler?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (145, 1, 'CLINT EASTWOOD', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (145, 2, 'STEVEN SPIELBERG', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (145, 3, 'STANLEY KUBRICK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (145, 4, 'PEDRO ALMODÓVAR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o alimento produzido pela moagem dos grãos de cacau?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (146, 1, 'PARAFINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (146, 2, 'AÇÚCAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (146, 3, 'CHOCOLATE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (146, 4, 'CAFÉ', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem introduziu o futebol no Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (147, 1, 'PELÉ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (147, 2, 'JOÃO HAVELANGE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (147, 3, 'CHARLES MILLER', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (147, 4, 'PAULO MACHADO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que continente se situa o rio Nilo?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (148, 1, 'AFRICANO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (148, 2, 'EUROPEU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (148, 3, 'AMERICANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (148, 4, 'ASIÁTICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que colônia britânica foi devolvida à China em 1997?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (149, 1, 'PEQUIM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (149, 2, 'HANÓI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (149, 3, 'HIROSHIMA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (149, 4, 'HONG KONG', 1);

INSERT INTO question (description, dificult_level) VALUES ('Nova Delhi é a capital de que país?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (150, 1, 'ÍNDIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (150, 2, 'ISLÂNDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (150, 3, 'PAQUISTÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (150, 4, 'MÉXICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que leva o sangue do coração para o corpo?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (151, 1, 'VEIAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (151, 2, 'MÚSCULOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (151, 3, 'ARTÉRIAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (151, 4, 'OSSOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamado o objeto falsificado vendido como original?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (152, 1, 'PIRARUCU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (152, 2, 'PERNETA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (152, 3, 'PIRATA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (152, 4, 'PAPAGAIO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que matéria estuda-se álgebra na escola?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (153, 1, 'MATEMÁTICA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (153, 2, 'BIOLOGIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (153, 3, 'QUÍMICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (153, 4, 'FÍSICA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome original do filme “O médico e o monstro”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (154, 1, 'MASTERS E JOHNSON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (154, 2, 'DR. JEKYLL E MR. HYDE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (154, 3, 'BONNIE E CLYDE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (154, 4, 'D. QUIXOTE E SANCHO PANÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que atriz casou com Joe Dimaggio e Arthur Miller?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (155, 1, 'GLENDA JACKSON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (155, 2, 'MARGARET BECKET', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (155, 3, 'MARILYN MONROE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (155, 4, 'ELIZABETH TAYLOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem disse a frase: “Vim, vi e venci”?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (156, 1, 'JÚLIO CÉSAR', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (156, 2, 'CALÍGULA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (156, 3, 'NERO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (156, 4, 'MARCO ANTÔNIO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que nome se dá à volta dos cardumes de peixes para a nascente do rio?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (157, 1, 'POROROCA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (157, 2, 'PERERECA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (157, 3, 'PIRAPORA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (157, 4, 'PIRACEMA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o país que participou de todas as copas do mundo de futebol, até 1998?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (158, 1, 'ITÁLIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (158, 2, 'URUGUAI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (158, 3, 'ARGENTINA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (158, 4, 'BRASIL', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quais são os naipes vermelhos do baralho?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (159, 1, 'OUROS E COPAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (159, 2, 'COPAS E PAUS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (159, 3, 'PAUS  E OUROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (159, 4, 'ESPADAS E PAUS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome verdadeiro do Batman?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (160, 1, 'BRUCE WAYNE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (160, 2, 'DEXTER', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (160, 3, 'CLARK KENT', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (160, 4, 'LEX LUTOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Beirute é a capital de que país?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (161, 1, 'SÍRIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (161, 2, 'NEPAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (161, 3, 'MONGÓLIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (161, 4, 'LÍBANO', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que é um contratorpedeiro?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (162, 1, 'TANQUE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (162, 2, 'NAVIO DE GUERRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (162, 3, 'DIRIGÍVEL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (162, 4, 'AVIÃO DE CAÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Às margens de que riacho foi proclamada a Independência do Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (163, 1, 'CAMBUCI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (163, 2, 'SACOMÃ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (163, 3, 'IPIRANGA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (163, 4, 'SÃO FRANCISCO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O “super bowl” faz parte de qual esporte?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (164, 1, 'BASEBALL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (164, 2, 'BASQUETE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (164, 3, 'FUTEBOL AMERICANO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (164, 4, 'GOLF', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome da embarcação típica do litoral nordestino brasileiro?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (165, 1, 'SUBMARINO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (165, 2, 'JET SKI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (165, 3, 'JANGADA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (165, 4, 'LANCHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que estado norte-americano fica a cidade de Miami?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (166, 1, 'ALASCA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (166, 2, 'NOVA YORK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (166, 3, 'FLÓRIDA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (166, 4, 'CALIFÓRNIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a capital do Iraque?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (167, 1, 'BELÉM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (167, 2, 'BAGDÁ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (167, 3, 'BEIRUTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (167, 4, 'BUDAPESTE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como se chama a máquina usada para compactar o asfalto?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (168, 1, 'ROLO COMPRESSOR', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (168, 2, 'ESCAVADEIRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (168, 3, 'TRATOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (168, 4, 'LIXADEIRA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em 1991, que esportista americano se afastou do basquete por ser HIV positivo?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (169, 1, 'MICHAEL JORDAN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (169, 2, 'MAGIC JOHNSON', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (169, 3, 'DENNIS RODMAN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (169, 4, 'MIKE TYSON', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome do cachorro de Charlie Brown?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (170, 1, 'PLUTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (170, 2, 'FLOQUINHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (170, 3, 'BALEIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (170, 4, 'SNOOPY', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual presidente dos Estados Unidos foi ator de cinema?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (171, 1, 'RONALD REAGAN', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (171, 2, 'GEORGE BUSH', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (171, 3, 'RICHARD NIXON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (171, 4, 'BILL CLINTON', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamado o templo sagrado dos judeus?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (172, 1, 'IGREJA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (172, 2, 'CAPELA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (172, 3, 'SINAGOGA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (172, 4, 'CATEDRAL', 0);

INSERT INTO question (description, dificult_level) VALUES ('A que categoria pertence o cavalo-marinho?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (173, 1, 'MOLUSCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (173, 2, 'CRUSTÁCEO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (173, 3, 'PEIXE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (173, 4, 'MAMÍFERO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O FBI é a polícia federal de qual país?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (174, 1, 'INGLATERRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (174, 2, 'ESTADOS UNIDOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (174, 3, 'CANADÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (174, 4, 'FRANÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que cidade brasileira fica o Instituto Tecnológico de Aeronáutica?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (175, 1, 'SÃO JOSÉ DO RIO PRETO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (175, 2, 'SÃO JOSÉ DOS PINHAIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (175, 3, 'SÃO JOSÉ DOS CAMPOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (175, 4, 'SÃO JOSÉ DOS SANTOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que cidade foram realizados os jogos olímpicos de 2000?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (176, 1, 'MUNIQUE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (176, 2, 'SIDNEY', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (176, 3, 'TÓQUIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (176, 4, 'ATLANTA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que país fica a grande muralha com cerca de 6.400 quilômetros?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (177, 1, 'JAPÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (177, 2, 'CHINA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (177, 3, 'AFEGANISTÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (177, 4, 'ÍNDIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome do Patriarca da Independência do Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (178, 1, 'TIRADENTES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (178, 2, 'JOSÉ BONIFÁCIO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (178, 3, 'DOM PEDRO II', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (178, 4, 'VASCO DA GAMA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O nome América foi associado a qual desses nomes?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (179, 1, 'AMÉRICO DOS REIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (179, 2, 'AMÉRICO BRASILIENSE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (179, 3, 'AMÉRICO VESPÚCIO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (179, 4, 'JOSÉ AMÉRICO DA SILVA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o médico que mais utiliza o eletrocardiograma?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (180, 1, 'ORTOPEDISTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (180, 2, 'CARDIOLOGISTA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (180, 3, 'DERMATOLOGISTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (180, 4, 'ACUPUNTURISTA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual o significado da sigla “AI”, no AI-5?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (181, 1, 'ATO INTENCIONAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (181, 2, 'ATO INSTITUCIONAL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (181, 3, 'ATO INSPIRADOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (181, 4, 'ATO IDEALIZADOR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual personagem bíblico dividiu as águas do Mar Vermelho?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (182, 1, 'ABRAÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (182, 2, 'MOISÉS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (182, 3, 'JOSUÉ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (182, 4, 'ELIAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual dessas cobras não é venenosa?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (183, 1, 'URUTU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (183, 2, 'CASCAVEL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (183, 3, 'JARARACA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (183, 4, 'PÍTON', 1);

INSERT INTO question (description, dificult_level) VALUES ('Que animal é usado no jogo de pólo?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (184, 1, 'CAMELO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (184, 2, 'CAVALO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (184, 3, 'MACACO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (184, 4, 'CACHORRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que ano ocorreu o incêndio do edifício Joelma, na cidade de São Paulo?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (185, 1, '1971', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (185, 2, '1972', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (185, 3, '1973', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (185, 4, '1974', 1);

INSERT INTO question (description, dificult_level) VALUES ('Teresina é a capital de qual estado brasileiro?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (186, 1, 'TOCANTINS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (186, 2, 'PIAUÍ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (186, 3, 'ACRE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (186, 4, 'PARANÁ', 0);

INSERT INTO question (description, dificult_level) VALUES ('Sobre qual cidade do Japão foi lançada a primeira bomba atômica?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (187, 1, 'TÓQUIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (187, 2, 'NAGASAKI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (187, 3, 'OSAKA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (187, 4, 'HIROXIMA', 1);

INSERT INTO question (description, dificult_level) VALUES ('O daltônico é deficiente em?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (188, 1, 'SENTIR DOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (188, 2, 'SENTIR PALADAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (188, 3, 'DIFERENCIAR CORES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (188, 4, 'SENTIR CHEIRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o dia da Padroeira do Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (189, 1, '12 DE OUTUBRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (189, 2, '12 DE NOVEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (189, 3, '11 DE DEZEMBRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (189, 4, '1 DE JANEIRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a capital do Estado de Mato Grosso do Sul?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (190, 1, 'CUIABÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (190, 2, 'VÁRZEA GRANDE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (190, 3, 'RONDONÓPOLIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (190, 4, 'CAMPO GRANDE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quantos são os continentes?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (191, 1, 'CINCO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (191, 2, 'SETE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (191, 3, 'TRÊS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (191, 4, 'QUATRO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Por que nome são conhecidas as pessoas do Pólo Ártico?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (192, 1, 'SULISTAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (192, 2, 'ESQUIMÓS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (192, 3, 'NORTISTAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (192, 4, 'POLARES', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a fórmula química da água?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (193, 1, 'NACL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (193, 2, 'H2', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (193, 3, 'H2O', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (193, 4, 'CO2', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual era a profissão de Cecília Meirelles?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (194, 1, 'CANTORA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (194, 2, 'ESCRITORA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (194, 3, 'ARQUITETA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (194, 4, 'PIANISTA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que cidade fica a sede da rede de TV BBC?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (195, 1, 'LONDRES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (195, 2, 'NOVA YORK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (195, 3, 'MONTREAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (195, 4, 'CALIFÓRNIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Camillo é o sobrenome de qual cantor nascido em Brotas?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (196, 1, 'LEONARDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (196, 2, 'CHITÃOZINHO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (196, 3, 'DANIEL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (196, 4, 'VINNY', 0);

INSERT INTO question (description, dificult_level) VALUES ('Por quantos integrantes era formado o grupo Beatles?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (197, 1, 'TRÊS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (197, 2, 'QUATRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (197, 3, 'CINCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (197, 4, 'SEIS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o último imperador do Brasil?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (198, 1, 'D.PEDRO II', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (198, 2, 'D.PEDRO  I', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (198, 3, 'D.JOÃO VI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (198, 4, 'DEODORO DA FONSECA', 0);

INSERT INTO question (description, dificult_level) VALUES ('"Quem dirigiu o filme ""Central do Brasil""?"', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (199, 1, 'BRUNO BARRETO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (199, 2, 'HÉCTOR BABENCO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (199, 3, 'ARNALDO JABOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (199, 4, 'WALTER SALLES JÚNIOR', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que significa a expressão e-mail?', 2);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (200, 1, 'CORREIO RÁPIDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (200, 2, 'CORREIO ELETRÔNICO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (200, 3, 'CORREIO ELEGANTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (200, 4, 'CORREIO MÁQUINA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em qual espécie o macho choca os ovos e a fêmea procura alimento?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (201, 1, 'ANDORINHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (201, 2, 'PATO SELVAGEM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (201, 3, 'PINGUIM', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (201, 4, 'MARRECO', 0);

INSERT INTO question (description, dificult_level) VALUES ('"Em qual país está localizado o ""Muro das lamentações""?"', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (202, 1, 'ALEMANHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (202, 2, 'BRASIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (202, 3, 'VENEZUELA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (202, 4, 'ISRAEL', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual desses países não fica na Ásia?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (203, 1, 'PAQUISTÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (203, 2, 'JAPÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (203, 3, 'TAILÂNDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (203, 4, 'EGITO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual desses astros de filmes de ação é belga?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (204, 1, 'ARNOLD SCHWARZENEGGER', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (204, 2, 'SYLVESTER STALLONE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (204, 3, 'STEVEN SEAGAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (204, 4, 'JEAN CLAUDE VAN DAMME', 1);

INSERT INTO question (description, dificult_level) VALUES ('Onde foi conduzida a vitória das forças aliadas na Segunda Guerra Mundial?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (205, 1, 'CANNES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (205, 2, 'NORMANDIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (205, 3, 'CAPRI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (205, 4, 'MARSELHA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Onde nasceu Van Gogh, o grande pintor impressionista?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (206, 1, 'POLÔNIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (206, 2, 'FRANÇA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (206, 3, 'ITÁLIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (206, 4, 'HOLANDA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a primeira letra do alfabeto grego?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (207, 1, 'DELTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (207, 2, 'BETA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (207, 3, 'ALFA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (207, 4, 'GAMA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual presidente brasileiro instituiu o AI-5?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (208, 1, 'COSTA E SILVA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (208, 2, 'ERNESTO GEISEL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (208, 3, 'JOÃO FIGUEIREDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (208, 4, 'ITAMAR FRANCO', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que significa literalmente Perestroika?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (209, 1, 'CONVERSÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (209, 2, 'INVOLUÇÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (209, 3, 'REESTRUTURAÇÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (209, 4, 'REGRESSÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual desses quatro pesos é o mais leve?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (210, 1, '10 ONÇAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (210, 2, '10 GRAMAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (210, 3, '10 QUILOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (210, 4, '10 LIBRAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Brahma é o deus de que religião?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (211, 1, 'HINDUÍSMO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (211, 2, 'XINTOÍSMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (211, 3, 'BUDISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (211, 4, 'ISLAMISMO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Os nazistas foram julgados em:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (212, 1, 'BERLIM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (212, 2, 'NUREMBERGUE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (212, 3, 'MUNIQUE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (212, 4, 'PARIS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que ramo da pecuária ocupa- se de bodes e cabras?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (213, 1, 'ASININO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (213, 2, 'CAPRINO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (213, 3, 'BUFALINO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (213, 4, 'MUAR', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual oceano tem o maior volume de água?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (214, 1, 'ATLÂNTICO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (214, 2, 'PACÍFICO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (214, 3, 'ÍNDICO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (214, 4, 'ÁRTICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o último presidente militar do Brasil?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (215, 1, 'FERNANDO COLLOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (215, 2, 'JOÃO FIGUEIREDO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (215, 3, 'TANCREDO NEVES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (215, 4, 'JOÃO GOULART', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que conflito ideológico envolveu os EUA e a União Soviética?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (216, 1, 'GUERRA FRIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (216, 2, 'GUERRA DO VIETNÃ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (216, 3, 'GUERRA NAS ESTRELAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (216, 4, 'GUERRA DA CORÉIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O trapézio é um músculo que está situado:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (217, 1, 'NO PESCOÇO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (217, 2, 'NO OMBRO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (217, 3, 'NA CABEÇA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (217, 4, 'NO BRAÇO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem escreveu o livro “A sangue frio” em 1966?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (218, 1, 'TRUMAN CAPOTE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (218, 2, 'HENRY JAMES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (218, 3, 'JOHN STEINBECK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (218, 4, 'TONI MORRISON', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem escreveu “Ulisses” em 1922?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (219, 1, 'ERNEST HEMINGWAY', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (219, 2, 'MARCEL PROUST', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (219, 3, 'T.S. ELLIOT', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (219, 4, 'JAMES JOYCE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual o símbolo químico do radônio?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (220, 1, 'Rr', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (220, 2, 'Rd', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (220, 3, 'Rn', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (220, 4, 'Ro', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que são meninges?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (221, 1, 'CÉLULAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (221, 2, 'NERVOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (221, 3, 'MEMBRANAS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (221, 4, 'MÚSCULOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual produto gerou guerras e conflitos no século XX?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (222, 1, 'ÁLCOOL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (222, 2, 'PETRÓLEO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (222, 3, 'OURO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (222, 4, 'ALUMÍNIO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamada a bola de gelo e poeira que orbita em torno do sol?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (223, 1, 'COMETA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (223, 2, 'METEORITO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (223, 3, 'CAMADA DE OZÔNIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (223, 4, 'ESTRELA D’ALVA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O confucionismo é  uma filosofia de qual nacionalidade?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (224, 1, 'INDIANA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (224, 2, 'JAPONESA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (224, 3, 'CHINESA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (224, 4, 'COREANA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual a ciência que estuda a distribuição dos animais?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (225, 1, 'ZOOTERAPIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (225, 2, 'ZOOGEOGRAFIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (225, 3, 'ZODÍACO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (225, 4, 'ZOOMETRIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A eletrônica é parte de qual ciência?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (226, 1, 'FÍSICA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (226, 2, 'BIOLOGIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (226, 3, 'QUÍMICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (226, 4, 'BOTÂNICA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A Bélgica é:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (227, 1, 'UMA REPÚBLICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (227, 2, 'UMA MONARQUIA CONSTITUCIONAL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (227, 3, 'UM EMIRADO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (227, 4, 'UM PRINCIPADO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que parte do corpo humano é infectada pela cólera?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (228, 1, 'GARGANTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (228, 2, 'INTESTINO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (228, 3, 'PULMÕES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (228, 4, 'RINS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que figura mitológica é conhecida por sua força extraordinária?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (229, 1, 'ÁTILA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (229, 2, 'MINOTAURO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (229, 3, 'PERSEU', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (229, 4, 'HÉRCULES', 1);

INSERT INTO question (description, dificult_level) VALUES ('A união do espermatozóide com o óvulo origina uma célula chamada:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (230, 1, 'ZIGOTO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (230, 2, 'BIGOTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (230, 3, 'FETO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (230, 4, 'GAROTO', 0);

INSERT INTO question (description, dificult_level) VALUES ('A que país pertence a ilha de Terra Nova?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (231, 1, 'ESTADOS UNIDOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (231, 2, 'DINAMARCA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (231, 3, 'CANADÁ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (231, 4, 'FRANÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que país você pode gastar rublos?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (232, 1, 'HOLANDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (232, 2, 'RÚSSIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (232, 3, 'ESPANHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (232, 4, 'ÁFRICA DO SUL', 0);

INSERT INTO question (description, dificult_level) VALUES ('Na criação do Estado do Tocantins, que estado teve o território reduzido?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (233, 1, 'GOIÁS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (233, 2, 'MATO GROSSO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (233, 3, 'PARÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (233, 4, 'MARANHÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('De quem é este verso: “A praça é do povo, como o céu é do condor”?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (234, 1, 'TOBIAS BARRETO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (234, 2, 'DORIVAL CAIMI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (234, 3, 'MACHADO DE ASSIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (234, 4, 'CASTRO ALVES', 1);

INSERT INTO question (description, dificult_level) VALUES ('Que nome recebe a foz de um rio que se abre para o mar?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (235, 1, 'ALAGADO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (235, 2, 'MANGUEZAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (235, 3, 'PÂNTANO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (235, 4, 'ESTUÁRIO', 1);

INSERT INTO question (description, dificult_level) VALUES ('“Arábica” e “robusta” são tipos de quê?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (236, 1, 'UVA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (236, 2, 'CAFÉ', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (236, 3, 'MELÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (236, 4, 'LARANJA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que ano Ayrton Senna venceu o primeiro campeonato de Fórmula 1?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (237, 1, '1987', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (237, 2, '1990', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (237, 3, '1985', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (237, 4, '1988', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a menor República do mundo?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (238, 1, 'MÔNACO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (238, 2, 'SAN MARINO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (238, 3, 'NOVA ZELÂNDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (238, 4, 'CHINA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que símbolo está desenhado no centro da bandeira Argentina?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (239, 1, 'SOL', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (239, 2, 'LUA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (239, 3, 'ESTRELA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (239, 4, 'FOICE E MARTELO', 0);

INSERT INTO question (description, dificult_level) VALUES ('De quem é a frase ”Penso, logo existo”?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (240, 1, 'PLATÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (240, 2, 'JÚLIO VERNE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (240, 3, 'ARISTÓTELES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (240, 4, 'RENÉ DESCARTES', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem construiu o primeiro telescópio astronômico completo?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (241, 1, 'CYRUS MCCORMICK', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (241, 2, 'THOMAS EDISON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (241, 3, 'MICHELANGELO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (241, 4, 'GALILEU GALILEI', 1);

INSERT INTO question (description, dificult_level) VALUES ('Em que parte do nosso corpo está o úmero?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (242, 1, 'BRAÇO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (242, 2, 'PERNA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (242, 3, 'QUADRIL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (242, 4, 'COLUNA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A quem se atribui a frase “Eu sou o Estado”?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (243, 1, 'LUIZ XIV', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (243, 2, 'LUIZ XV', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (243, 3, 'LUIZ XVI', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (243, 4, 'NAPOLEÃO BONAPARTE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual o nome verdadeiro do jogador de futebol conhecido com Zico?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (244, 1, 'ARTHUR ANTUNES COIMBRA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (244, 2, 'ARTHUR ALVES PINTO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (244, 3, 'ARTHUR DA TÁVOLA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (244, 4, 'ARTHUR DOS SANTOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que significa deprecar?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (245, 1, 'RENEGAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (245, 2, 'SUJEITAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (245, 3, 'DESMAIAR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (245, 4, 'PEDIR', 1);

INSERT INTO question (description, dificult_level) VALUES ('Que cidade foi capital do Império Inca?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (246, 1, 'LA PAZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (246, 2, 'BUENOS AIRES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (246, 3, 'BOGOTÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (246, 4, 'CUZCO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Com que outro nome é conhecido o Cabo Canaveral?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (247, 1, 'CABO JEFFERSON', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (247, 2, 'CABO LINCOLN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (247, 3, 'CABO KENNEDY', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (247, 4, 'CABO REAGAN', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que significa o prefixo exo?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (248, 1, 'DENTRO DE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (248, 2, 'DEBAIXO DE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (248, 3, 'FORA DE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (248, 4, 'ATRÁS DE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Bill Clinton nasceu em que cidade?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (249, 1, 'LOS ANGELES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (249, 2, 'CHICAGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (249, 3, 'HOPE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (249, 4, 'DALLAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o material utilizado na construção do Partenon de Atenas?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (250, 1, 'MÁRMORE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (250, 2, 'GRANITO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (250, 3, 'GESSO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (250, 4, 'QUARTZO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Que trópico atravessa o Saara?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (251, 1, 'CAPRICÓRNIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (251, 2, 'VIRGEM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (251, 3, 'CÂNCER', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (251, 4, 'LEÃO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi aluno de Platão e tutor de Alexandre, o Grande?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (252, 1, 'PITÁGORAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (252, 2, 'DIDEROT', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (252, 3, 'ARISTÓTELES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (252, 4, 'GALILEU GALILEI', 0);

INSERT INTO question (description, dificult_level) VALUES ('“Guernica” é uma tela de qual pintor?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (253, 1, 'MONET', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (253, 2, 'RENOIR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (253, 3, 'PICASSO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (253, 4, 'LEONARDO DA VINCI', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que ano foi inaugurada a estátua do Cristo Redentor no Rio de Janeiro?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (254, 1, '1921', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (254, 2, '1931', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (254, 3, '1941', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (254, 4, '1951', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a religião majoritária da Turquia?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (255, 1, 'BUDISTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (255, 2, 'ISLÂMICA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (255, 3, 'CATÓLICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (255, 4, 'PROTESTANTE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Onde estão os sepulcros de Michelangelo, Maquiavel e Galileu?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (256, 1, 'MILÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (256, 2, 'FLORENÇA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (256, 3, 'VENEZA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (256, 4, 'GÊNOVA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A que país deve-se viajar para subir o Monte Parnaso?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (257, 1, 'ITÁLIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (257, 2, 'FRANÇA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (257, 3, 'GRÉCIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (257, 4, 'TURQUIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A que letra do nosso alfabeto corresponde a letra grega tau?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (258, 1, 'F', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (258, 2, 'H', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (258, 3, 'J', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (258, 4, 'T', 1);

INSERT INTO question (description, dificult_level) VALUES ('Em qual guerra lutou Paul Newman pela marinha americana?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (259, 1, 'PRIMEIRA GUERRA MUNDIAL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (259, 2, 'GUERRA DO VIETNÃ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (259, 3, 'GUERRA DA CORÉIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (259, 4, 'SEGUNDA GUERRA MUNDIAL', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que é talude?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (260, 1, 'AVALANCHE DE NEVE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (260, 2, 'FUNGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (260, 3, 'INCLINAÇÃO DE TERRENO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (260, 4, 'RITO ISLÂMICO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual destas palavras é sinônimo de cabal?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (261, 1, 'BAIXO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (261, 2, 'PERFEITO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (261, 3, 'ATREVIDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (261, 4, 'ENFERMO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual desses poetas foi indicado para o prêmio Nobel de literatura?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (262, 1, 'MÁRIO QUINTANA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (262, 2, 'MANUEL BANDEIRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (262, 3, 'VINÍCIUS DE MORAIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (262, 4, 'CARLOS DRUMMOND DE ANDRADE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi a locomotiva a vapor que trafegou na Estrada de Ferro Mauá em 1854?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (263, 1, 'SANTA-FÉ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (263, 2, 'LOCO-BREQUE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (263, 3, 'AMERICAN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (263, 4, 'BARONESA', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que é palato?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (264, 1, 'BARRIGA DA PERNA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (264, 2, 'MENINA DOS OLHOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (264, 3, 'LÍNGUA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (264, 4, 'CÉU DA BOCA', 1);

INSERT INTO question (description, dificult_level) VALUES ('O que construía Stradivarius?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (265, 1, 'CASAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (265, 2, 'VIOLINOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (265, 3, 'ARMAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (265, 4, 'ESTRADAS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual atleta foi desclassificado por uso de doping nas Olimpíadas de 1988?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (266, 1, 'MIKE POWELL', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (266, 2, 'BEN JOHNSON', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (266, 3, 'CARL LEWIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (266, 4, 'LINFORD CHRISTIE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o exame que emite ondas sonoras para visualizar os órgãos?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (267, 1, 'XEROGRAFIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (267, 2, 'ULTRA-SONOGRAFIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (267, 3, 'FOTOGRAFIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (267, 4, 'RADIOGRAFIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a especialidade dos profissionais que analisam os sulcos e marcas de uma bala?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (268, 1, 'BALEAGEM', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (268, 2, 'BALÍSTICA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (268, 3, 'LOGÍSTICA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (268, 4, 'IMPRESSÃO DIGITAL', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual metal possui o símbolo Hg?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (269, 1, 'FERRO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (269, 2, 'AÇO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (269, 3, 'MERCÚRIO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (269, 4, 'OURO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o nome dado a um conjunto de sinos?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (270, 1, 'CORRIMÃO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (270, 2, 'CARRILHÃO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (270, 3, 'BADALADA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (270, 4, 'CORSELETE', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a altura oficial do aro na cesta no basquete?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (271, 1, '3,05 METROS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (271, 2, '2,97 METROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (271, 3, '3,10 METROS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (271, 4, '3,00 METROS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o apelido do time da Ponte Preta?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (272, 1, 'FEITICEIRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (272, 2, 'RAPOSA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (272, 3, 'BRUXA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (272, 4, 'MACACA', 1);

INSERT INTO question (description, dificult_level) VALUES ('Quem foi chamado de Águia de Haia?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (273, 1, 'JORGE AMADO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (273, 2, 'EÇA DE QUEIROZ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (273, 3, 'RUI BARBOSA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (273, 4, 'RAIMUNDO CORRÊA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem escreveu “Dom Quixote”?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (274, 1, 'ESPINOZA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (274, 2, 'MIGUEL DE CERVANTES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (274, 3, 'CARLOS CONTE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (274, 4, 'ANGEL MORITA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual a origem da palavra folclore?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (275, 1, 'HOLANDESA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (275, 2, 'INGLESA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (275, 3, 'FRANCESA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (275, 4, 'BRASILEIRA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Quem ganhou a 1ª medalha de ouro olímpico para o Brasil?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (276, 1, 'AFRANIO ANTONIO COSTA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (276, 2, 'GUILHERME PARAENSE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (276, 3, 'FERNANDO SOLEDADE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (276, 4, 'SEBASTIÃO WOLF', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o quarto planeta do sistema solar?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (277, 1, 'JÚPITER', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (277, 2, 'VÊNUS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (277, 3, 'TERRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (277, 4, 'MARTE', 1);

INSERT INTO question (description, dificult_level) VALUES ('Que pintor francês consagrou a mulher taitiana em suas telas?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (278, 1, 'RENOIR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (278, 2, 'GAUGUIN', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (278, 3, 'CÉZANNE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (278, 4, 'MONET', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que é glicose?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (279, 1, 'AMINOÁCIDO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (279, 2, 'HIDRATO DE CARBONO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (279, 3, 'LIPÍDIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (279, 4, 'PROTEÍNA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual destas seleções nunca jogou uma final de copa?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (280, 1, 'ESPANHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (280, 2, 'SUÉCIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (280, 3, 'HUNGRIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (280, 4, 'FRANÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi a primeira mulher a entrar no “hall da fama” do rock and roll?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (281, 1, 'JANIS JOPLIN', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (281, 2, 'CAROLE KING', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (281, 3, 'ARETHA FRANKLIN', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (281, 4, 'DIANA ROSS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Nova Caledônia faz parte da:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (282, 1, 'MICRONÉSIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (282, 2, 'MELANÉSIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (282, 3, 'POLINÉSIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (282, 4, 'INDONÉSIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é o país que tem uma árvore estampada na  bandeira?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (283, 1, 'EGITO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (283, 2, 'CANADÁ', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (283, 3, 'LÍBANO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (283, 4, 'MARROCOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que procurava Juan Ponce de Leon quando descobriu a Flórida?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (284, 1, 'A CIDADE PERDIDA DE OURO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (284, 2, 'A FONTE DA JUVENTUDE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (284, 3, 'UNICÓRNIOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (284, 4, 'SEU GATO', 0);

INSERT INTO question (description, dificult_level) VALUES ('As Ilhas Malvinas também são chamadas de:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (285, 1, 'STANLEY', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (285, 2, 'WEDELLS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (285, 3, 'MEDANOSA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (285, 4, 'FALKLAND', 1);

INSERT INTO question (description, dificult_level) VALUES ('Qual destes países não se situa no Equador?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (286, 1, 'QUÊNIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (286, 2, 'EQUADOR', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (286, 3, 'CHILE', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (286, 4, 'INDONÉSIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Em que país Leonardo da Vinci viveu seus últimos dias?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (287, 1, 'ESPANHA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (287, 2, 'HOLANDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (287, 3, 'FRANÇA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (287, 4, 'ITÁLIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('A que país pertence a Groenlândia?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (288, 1, 'DINAMARCA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (288, 2, 'INGLATERRA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (288, 3, 'NORUEGA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (288, 4, 'ESTADOS UNIDOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Pablo Picasso foi um dos criadores do:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (289, 1, 'CUBISMO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (289, 2, 'SURREALISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (289, 3, 'IMPRESSIONISMO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (289, 4, 'REALISMO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como se chama o explorador de grutas e cavernas?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (290, 1, 'ESPELEÓLOGO', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (290, 2, 'AGROSTÓLOGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (290, 3, 'PSICÓLOGO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (290, 4, 'CAMPANÓLOGO', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual o sistema de transporte mais utilizado no Brasil?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (291, 1, 'FERROVIÁRIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (291, 2, 'AÉREO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (291, 3, 'HIDROVIÁRIO', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (291, 4, 'RODOVIÁRIO', 1);

INSERT INTO question (description, dificult_level) VALUES ('A baleia está classificada em qual grupo de mamíferos?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (292, 1, 'CETÁCEOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (292, 2, 'FELINOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (292, 3, 'SIRÊNIOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (292, 4, 'CARNÍVOROS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual é a maior ilha da Europa?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (293, 1, 'GRÃ-BRETANHA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (293, 2, 'IRLANDA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (293, 3, 'ISLÂNDIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (293, 4, 'SICÍLIA', 0);

INSERT INTO question (description, dificult_level) VALUES ('O filme “A noviça rebelde”, premiado com 5 Oscars, foi estrelado por:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (294, 1, 'JUDY GARLAND', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (294, 2, 'SHIRLEY TEMPLE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (294, 3, 'JULIE ANDREWS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (294, 4, 'DORIS DAY', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o primeiro presidente do Brasil eleito pelo povo?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (295, 1, 'GETÚLIO VARGAS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (295, 2, 'PRUDENTE DE MORAES', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (295, 3, 'WASHINGTON LUÍS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (295, 4, 'TANCREDO NEVES', 0);

INSERT INTO question (description, dificult_level) VALUES ('O que o pintor Claude Monet representou em suas telas?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (296, 1, 'OS JARDINS DE GIVERNY', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (296, 2, 'OS BISTRÔS DE PARIS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (296, 3, 'CENAS DO MOULIN ROUGE', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (296, 4, 'PAISAGENS DA PROVENÇA', 0);

INSERT INTO question (description, dificult_level) VALUES ('Miró, Picasso e Salvador Dalí eram pintores:', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (297, 1, 'ITALIANOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (297, 2, 'PORTUGUESES', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (297, 3, 'ESPANHÓIS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (297, 4, 'CHILENOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Qual foi o piloto de Fórmula 1 que conquistou o título de campeão mundial cinco vezes?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (298, 1, 'JACQUES STEWART', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (298, 2, 'ALAIN PROST', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (298, 3, 'AYRTON SENNA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (298, 4, 'J. MANOEL FANGIO', 1);

INSERT INTO question (description, dificult_level) VALUES ('Como o rei francês Luis XVI e sua esposa Maria Antonieta morreram?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (299, 1, 'ENFORCADOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (299, 2, 'FUZILADOS', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (299, 3, 'GUILHOTINADOS', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (299, 4, 'QUEIMADOS', 0);

INSERT INTO question (description, dificult_level) VALUES ('Como é chamada a gravura impressa sobre pranchas de madeira?', 3);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (300, 1, 'MATEROGRAFIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (300, 2, 'LITOGRAFIA', 0);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (300, 3, 'XILOGRAFIA', 1);
INSERT INTO answer (question_id, number, description, is_correct) VALUES (300, 4, 'SERIGRAFIA', 0);