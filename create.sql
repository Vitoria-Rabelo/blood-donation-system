CREATE TABLE usuario(
	cpf VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	-- M=Masculino, F=Feminino, O=Outro
	genero CHAR(1) NOT NULL CHECK(genero IN ('M', 'F', 'O')),
	telefone VARCHAR(20) NOT NULL,
	data_nasc DATE NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	email VARCHAR(40) NOT NULL,
	tipo_sanguineo VARCHAR(3) NOT NULL
);

CREATE TABLE doador(
	cpf_usuario VARCHAR(14) PRIMARY KEY,
	FOREIGN KEY (cpf_usuario) REFERENCES usuario(cpf)
);

CREATE TABLE receptor(
	cpf_usuario VARCHAR(14) PRIMARY KEY,
	FOREIGN KEY (cpf_usuario) REFERENCES usuario(cpf)
);

CREATE TABLE local(
	id SERIAL PRIMARY KEY,
	horario TIME NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	nome_instituicao VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE agendamento(
	id SERIAL PRIMARY KEY,
	cpf_receptor VARCHAR(14) NOT NULL,
	local_retirada INT,
	qtd_bolsas INT,
	status VARCHAR(20),
    -- O timestamp é um número inteiro (ou às vezes decimal) que representa aquele instante no tempo em data e hora específicos.
	data_e_hora TIMESTAMP,
	FOREIGN KEY (cpf_receptor) REFERENCES usuario(cpf),
	FOREIGN KEY (local_retirada) REFERENCES local(id)
);

CREATE TABLE bolsa(
	cod_bolsa INT PRIMARY KEY,
	cpf_doador VARCHAR(14) NOT NULL,
    data_coleta DATE,
    data_validade DATE,
	id_agendamento INT,
	tipo_sanguineo VARCHAR(3),
    status VARCHAR(20),
	FOREIGN KEY (cpf_doador) REFERENCES usuario(cpf),
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id)
);

CREATE TABLE doacao(
	id_agendamento INT,
	cpf_doador VARCHAR(14),
	data_doacao_recepcao TIMESTAMP,
    status VARCHAR(50),
	PRIMARY KEY (id_agendamento, cpf_doador),
	FOREIGN KEY (id_agendamento) REFERENCES agendamento(id),
	FOREIGN KEY (cpf_doador) REFERENCES usuario(cpf)
);