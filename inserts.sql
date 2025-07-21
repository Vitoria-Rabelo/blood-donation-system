INSERT INTO usuario(cpf, nome, genero, telefone, data_nasc, endereco, email, tipo_sanguineo) VALUES
('345.678.910-12', 'Priscila Holanda', 'F', '(85)9905-4321', '2007-01-01', 'Av. Beira Mar, 123, Meireles, Fortaleza, CE', 'priscila@email.com', 'O+'),
('902.091.994-47', 'Kaio Silva', 'M', '(88)9834-1209', '2009-03-21', 'Rua Coronel Diogo, 07, Centro, Sobral, CE', 'kaio@email.com', 'AB-'),
('055.095.334-87', 'Vitoria Rabelo', 'F', '(88)9384-3567', '2001-05-30', 'Rua São Pedro, 30, Centro, Juazeiro do Norte, CE', 'vivi@email.com', 'A-'),
('404.345.234-22', 'Mariana Arcelino', 'F', '(85)9233-0372', '2010-02-20', 'Rua dos Pacajús, 43, Aldeota, Fortaleza, CE', 'mari@email.com', 'A+'),
('537.998.808-23', 'Marcelo Costa', 'M', '(88)9007-4296', '2012-12-10', 'Av. José de Freitas, 101, Centro, Quixadá, CE', 'costamarcelo@email.com', 'A+'),
('889.435.280-10', 'Mateus Miranda', 'M', '(85)9789-4241', '2003-11-13', 'Rua Professor Gomes, 111, Centro, Canindé, CE', 'mat@email.com', 'O+'),
('008.231.712-29', 'Marian Oliveira', 'F', '(85)9884-2143', '2004-07-14', 'Av. Dom Luís, 1002, Meireles, Fortaleza, CE', 'marianoliveira@email.com', 'AB+'),
('999.415.556-78', 'Renata Souza', 'F', '(85)9334-2178', '2002-04-28', 'Rua Pereira Valente, 505, José Bonifácio, Fortaleza, CE', 'renata@email.com', 'AB-'),
('301.678.063-80', 'Orlando Macena', 'M', '(85)9020-3435', '2001-06-17', 'Rua Major Facundo, 302, Centro, Iguatu, CE', 'orlando@email.com', 'B-'),
('304.202.304-90', 'Monica Dantas', 'F', '(85)9022-8835', '2005-09-07', 'Rua Castro e Silva, 202, Jacarecanga, Fortaleza, CE', 'monica@email.com', 'A+');

INSERT INTO doador (cpf_usuario) VALUES
('345.678.910-12'),
('902.091.994-47'),
('889.435.280-10'),
('999.415.556-78'),
('304.202.304-90');

INSERT INTO receptor (cpf_usuario) VALUES
('055.095.334-87'),
('404.345.234-22'),
('537.998.808-23'),
('008.231.712-29'),
('301.678.063-80');

INSERT INTO local (horario, endereco, telefone, nome_instituicao) VALUES
('08:00:00', 'Av. Beira Mar, 1000, Fortaleza, CE', '(85) 3232-1000', 'Hemocentro de Fortaleza'),
('09:00:00', 'Rua Coronel Diogo, 200, Sobral, CE', '(88) 3611-2000', 'Hemocentro de Sobral'),
('07:30:00', 'Av. Padre Cícero, 500, Juazeiro do Norte, CE', '(88) 3512-3000', 'Hemocentro do Cariri'),
('08:30:00', 'Rua São José, 150, Quixadá, CE', '(88) 3410-4000', 'Posto de Coleta de Quixadá'),
('10:00:00', 'Av. Dom Luís, 800, Fortaleza, CE', '(85) 3101-5000', 'Hospital Geral de Fortaleza'),
('07:00:00', 'Rua Major Facundo, 300, Iguatu, CE', '(88) 3581-6000', 'Hemocentro de Iguatu'),
('08:00:00', 'Av. John Sanford, 1000, Juazeiro do Norte, CE', '(88) 3511-7000', 'Hospital São Lucas'),
('09:30:00', 'Rua Pereira Valente, 600, Fortaleza, CE', '(85) 3222-8000', 'Centro de Hematologia do Ceará'),
('08:00:00', 'Rua Castro e Silva, 400, Fortaleza, CE', '(85) 3244-9000', 'Instituto de Hemoterapia'),
('07:00:00', 'Av. José de Freitas, 200, Quixadá, CE', '(88) 3412-0000', 'Unidade de Coleta de Quixadá')

INSERT INTO agendamento (cpf_receptor, local_retirada, qtd_bolsas, status, data_e_hora) VALUES
('345.678.910-12', 1, 2, 'Agendado', '2023-11-15 09:00:00'),
('902.091.994-47', 2, 1, 'Concluído', '2023-10-20 10:30:00'),
('055.095.334-87', 3, 3, 'Cancelado', '2023-09-05 08:15:00'),
('404.345.234-22', 4, 1, 'Agendado', '2023-12-01 11:00:00'),
('537.998.808-23', 5, 2, 'Concluído', '2023-08-10 14:00:00'),
('889.435.280-10', 6, 1, 'Agendado', '2023-11-30 07:30:00'),
('008.231.712-29', 7, 2, 'Pendente', '2023-12-05 09:45:00'),
('999.415.556-78', 8, 1, 'Concluído', '2023-07-22 10:00:00'),
('301.678.063-80', 9, 3, 'Agendado', '2023-12-10 08:00:00'),
('304.202.304-90', 10, 1, 'Cancelado', '2023-09-18 13:30:00');

INSERT INTO bolsa (cod_bolsa, cpf_doador, data_coleta, data_validade, id_agendamento, tipo_sanguineo, status) VALUES
(1001, '345.678.910-12', '2023-11-15', '2023-12-15', 1, 'O+', 'Disponível'),
(1002, '902.091.994-47', '2023-10-20', '2023-11-20', 2, 'AB-', 'Utilizada'),
(1003, '537.998.808-23', '2023-08-10', '2023-09-10', 5, 'A+', 'Utilizada'),
(1004, '889.435.280-10', '2023-11-30', '2023-12-30', 6, 'O+', 'Disponível'),
(1005, '008.231.712-29', '2023-07-22', '2023-08-22', 7, 'AB+', 'Utilizada'),
(1006, '999.415.556-78', '2023-09-05', '2023-10-05', 3, 'AB-', 'Vencida'),
(1007, '055.095.334-87', '2023-12-01', '2024-01-01', 4, 'A-', 'Disponível'),
(1008, '404.345.234-22', '2023-12-10', '2024-01-10', 9, 'A+', 'Disponível'),
(1009, '301.678.063-80', '2023-09-18', '2023-10-18', 10, 'B-', 'Vencida'),
(1010, '304.202.304-90', '2023-11-15', '2023-12-15', 1, 'A+', 'Disponível');

INSERT INTO doacao (id_agendamento, cpf_doador, data_doacao_recepcao, status) VALUES
(1, '345.678.910-12', '2023-11-15 09:30:00', 'Recebida'),
(2, '902.091.994-47', '2023-10-20 11:00:00', 'Recebida'),
(3, '055.095.334-87', '2023-09-05 08:45:00', 'Cancelada'),
(4, '404.345.234-22', '2023-12-01 11:30:00', 'Agendada'),
(5, '537.998.808-23', '2023-08-10 14:30:00', 'Recebida'),
(6, '889.435.280-10', '2023-11-30 08:00:00', 'Agendada'),
(7, '008.231.712-29', '2023-07-22 10:30:00', 'Recebida'),
(8, '999.415.556-78', '2023-12-05 10:15:00', 'Pendente'),
(9, '301.678.063-80', '2023-12-10 08:30:00', 'Agendada'),
(10, '304.202.304-90', '2023-09-18 14:00:00', 'Cancelada');
