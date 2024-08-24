
-- Inserção do Departamento da Delegacia
INSERT INTO departamento (numdep) VALUES ('D0001');

-- Inserção das Unidades 
INSERT INTO unidade (numuni) VALUES ('U01'); 
INSERT INTO unidade (numuni) VALUES ('U02');
INSERT INTO unidade (numuni) VALUES ('U03');

-- Inserção de Dados de Oficiais
INSERT INTO oficial (pnome, mnome, unome, ssn, datanasc, sexo, email, telefone, numdist, anosprofissao, patente, cargahoraria, status, deptpertencente)
VALUES  ('Brian', '', 'Irons', '111223333', '1962-03-07', 'M', 'brians.irons@rcpd.com', '555-4567', '1234-5678', 30, 'Commisioner', 40, 'Active', 'D0001'),
        ('Chris', 'R.', 'Redfield', '111223344', '1977-03-14', 'M', 'chris.redfield@racoonpd.com', '555-0101', '1017-2361', 18, 'Lieutenant', 40, 'On Duty', 'D0001'),
        ('Jill', 'A.', 'Valentine', '222334455', '1985-06-15', 'F', 'jill.valentine@racoonpd.com', '555-0202', '1018-2362', 15, 'Detective', 35, 'Active', 'D0001'),
        ('Leon', 'S.', 'Kennedy', '333445566', '1986-09-07', 'M', 'leon.kennedy@racoonpd.com', '555-0303', '1019-2363', 12, 'Officer', 40, 'On Duty', 'D0001'),
        ('Albert', 'W.', 'Wesker', '555667788', '1960-05-21', 'M', 'albert.wesker@racoonpd.com', '555-0505', '1020-2364', 25, 'Captain', 45, 'Suspended', 'D0001'),
        ('Barry', 'B.', 'Burton', '111233445', '1971-02-21', 'M', 'barry.burton@racoonpd.com', '555-1102', '1021-2365', 20, 'Sergeant', 40, 'On Leave', 'D0001'),
        ('William', 'B.', 'Birkin', '333455667', '1965-07-25', 'M', 'william.birkin@racoonpd.com', '555-1304', '1022-2366', 30, 'Officer', 50, 'Active', 'D0001'),
        ('John', 'H.', 'Doe', '123456789', '1980-05-15', 'M', 'john.doe@example.com', '555-1234', '1001-2345', 15, 'Officer', 40, 'On Duty', 'D0001'),
        ('Jane', 'A.', 'Smith', '234567890', '1975-11-22', 'F', 'jane.smith@example.com', '555-2345', '1002-2346', 20, 'Captain', 35, 'Active', 'D0001'),
        ('Michael', 'B.', 'Johnson', '345678901', '1988-03-14', 'M', 'michael.johnson@example.com', '555-3456', '1003-2347', 10, 'Detective', 40, 'On Duty', 'D0001'),
        ('Emily', 'C.', 'Brown', '456789012', '1992-06-30', 'F', 'emily.brown@example.com', '555-4567', '1004-2348', 5, 'Officer', 30, 'On Leave', 'D0001'),
        ('William', 'D.', 'Williams', '567890123', '1983-07-21', 'M', 'william.williams@example.com', '555-5678', '1005-2349', 12, 'Detective', 38, 'Suspended', 'D0001'),
        ('Olivia', 'E.', 'Taylor', '678901234', '1985-09-25', 'F', 'olivia.taylor@example.com', '555-6789', '1006-2350', 18, 'officer', 36, 'On Duty', 'D0001'),
        ('James', 'F.', 'Moore', '789012345', '1978-10-14', 'M', 'james.moore@example.com', '555-7890', '1007-2351', 22, 'Captain', 45, 'Active', 'D0001'),
        ('Sophia', 'G.', 'Anderson', '890123456', '1990-11-05', 'F', 'sophia.anderson@example.com', '555-8901', '1008-2352', 7, 'Detective', 32, 'On Leave', 'D0001'),
        ('Benjamin', 'H.', 'Thomas', '901234567', '1982-12-19', 'M', 'benjamin.thomas@example.com', '555-9012', '1009-2353', 16, 'Officer', 40, 'Inactive', 'D0001'),
        ('Mia', 'I.', 'Jackson', '012345678', '1987-04-13', 'F', 'mia.jackson@example.com', '555-0123', '1010-2354', 11, 'Officer', 28, 'On Duty', 'D0001'),
        ('Lucas', 'J.', 'White', '123456780', '1986-08-22', 'M', 'lucas.white@example.com', '555-1235', '1011-2355', 14, 'Lieutenant', 35, 'On Leave', 'D0001'),
        ('Isabella', 'K.', 'Harris', '234567891', '1991-05-09', 'F', 'isabella.harris@example.com', '555-2346', '1012-2356', 8, 'Detective', 33, 'Suspended', 'D0001'),
        ('Ethan', 'L.', 'Martin', '345678902', '1984-06-17', 'M', 'ethan.martin@example.com', '555-3457', '1013-2357', 19, 'Captain', 42, 'Active', 'D0001'),
        ('Charlotte', 'M.', 'Lee', '456789013', '1993-07-30', 'F', 'charlotte.lee@example.com', '555-4568', '1014-2358', 6, 'Officer', 29, 'Inactive', 'D0001'),
        ('Kevin', 'R.', 'Ryman', '777888999', '1973-04-25', 'M', 'kevin.ryman@racoonpd.com', '555-1414', '1023-2367', 15, 'Officer', 40, 'On Duty', 'D0001'),
        ('Marvin', 'B.', 'Branagh', '888999111', '1970-01-12', 'M', 'marvin.branagh@racoonpd.com', '555-1515', '1024-2368', 20, 'Officer', 40, 'On Duty', 'D0001'),
        ('Rita', 'A.', 'Phillips', '999111222', '1978-11-18', 'F', 'rita.phillips@racoonpd.com', '555-1616', '1025-2369', 12, 'Officer', 35, 'Active', 'D0001'),
        ('David', 'K.', 'Ford', '111222333', '1981-03-08', 'M', 'david.ford@racoonpd.com', '555-1717', '1026-2370', 10, 'Officer', 38, 'On Duty', 'D0001'),
        ('Elliott', 'R.', 'Edward', '222333444', '1983-08-05', 'M', 'elliott.edward@racoonpd.com', '555-1818', '1027-2371', 8, 'Officer', 36, 'On Duty', 'D0001');

-- Inserção de Comissário
INSERT INTO comissario (numdist) VALUES ('1234-5678');

-- Inserção de Capitao
INSERT INTO capitao (numdist)
VALUES  ('1020-2364'), ('1002-2346'), ('1007-2351'), ('1013-2357'), ('1017-2361'), ('1011-2355'), ('1021-2365') ;

-- Inserção de subalterno
INSERT INTO subalterno (numdist, unidadepert)
VALUES
        ('1019-2363', 'U01'), ('1022-2366', 'U01'), ('1001-2345', 'U01'), ('1023-2367', 'U01'), ('1024-2368', 'U01'),('1025-2369', 'U01'), ('1026-2370', 'U01'), ('1027-2371', 'U01'), --Officer
        ('1006-2350', 'U02'), ('1009-2353', 'U02'), ('1010-2354', 'U02'), ('1014-2358', 'U02'),                          --Attendant
        ('1018-2362', 'U03'), ('1003-2347', 'U03'), ('1004-2348', 'U03'), ('1005-2349', 'U03'), ('1008-2352', 'U03'), ('1012-2356', 'U03');                         --Detective


-- Inserção de agenteDeCampo
INSERT INTO agenteDeCampo (numdist)
VALUES
        ('1019-2363'), ('1022-2366'), ('1001-2345'), ('1023-2367'), ('1024-2368'),('1025-2369'), ('1026-2370'), ('1027-2371');

-- Inserção de atendente
INSERT INTO atendente (numdist)
VALUES
        ('1006-2350'), ('1009-2353'), ('1010-2354'), ('1014-2358');



-- Inserção de Equipes
INSERT INTO Equipe (nome, idequipe, datinicio, datfim, numdistcapitao)
VALUES
        ('S.T.A.R.S', 'EQP000001', '1915-01-01', NULL, '1020-2364'),              -- Capitão Albert Wesker
        ('RPD K-9 Unit', 'EQP001354', '1994-03-23', NULL, '1002-2346'),         -- Capitão Barry Burton
        ('RPD S.W.A.T.', 'EQP002004', '1995-07-12', NULL, '1007-2351'),         -- Capitão Michael Johnson
        ('RPD Special Investigations', 'EQP000936', '1993-09-21', '1995-10-01', '1021-2365'),  -- Capitão Chris Redfield
        ('RPD Narcotics Division', 'EQP000897', '1992-12-01', NULL, '1020-2364');  -- Capitão James F. Moore


-- Inserção de Detetives
INSERT INTO detetive (numdist, idequipe)
VALUES
        ('1018-2362', 'EQP000001'), ('1003-2347', 'EQP001354'), ('1004-2348', 'EQP000936'), ('1005-2349', 'EQP000936'), ('1008-2352', 'EQP000897'), ('1012-2356', 'EQP000897');



INSERT INTO gerencia_depto (numdistcomissario, numdep, iniciogestao, fimgestao)
VALUES 
        ('1234-5678', 'D0001', '1985-01-01', NULL);

INSERT INTO gerencia_unidade (numdistcapitao, numuni, iniciogestao, fimgestao)
VALUES
        ('1017-2361', 'U02', '1996-01-01', NULL),
        ('1020-2364', 'U01', '1990-01-01', NULL),
        ('1002-2346', 'U03', '1992-01-01', NULL);

INSERT INTO agente_equipe (numdist, idequipe, iniciolocab, fimcolab)
VALUES
          -- Oficiais na equipe S.T.A.R.S (EQP000001)
        ('1019-2363', 'EQP000001', '1995-01-15', NULL),
        ('1022-2366', 'EQP000001', '1990-05-10', '1994-11-20'),
        ('1001-2345', 'EQP000001', '1991-06-05', '1995-12-31'),


        -- Oficiais na equipe RPD K-9 Unit (EQP001354)
        ('1023-2367', 'EQP001354', '1994-04-10', NULL),  
        ('1024-2368', 'EQP001354', '1994-05-12', NULL),  

        -- Oficiais na equipe RPD S.W.A.T. (EQP002004)
        ('1025-2369', 'EQP002004', '1995-08-20', NULL),  
    

        -- Oficiais na equipe RPD Special Investigations (EQP000936)
        ('1026-2370', 'EQP002004', '1996-02-01', '1998-12-31'),
        -- Oficiais na equipe RPD Narcotics Division (EQP000897)
        ('1027-2371', 'EQP000897', '1992-12-15', NULL);



INSERT INTO cidadao (pnome, mnome, unome, ssn, datanasc, sexo, email, telefone, profissao)
VALUES
        ('Alice', 'M.', 'Abernathy', '122456789', '1976-05-14', 'F', 'alice.abernathy@umbrella.com', '555123456', 'Scientist'),
        ('Carlos', 'O.', 'Oliveira', '234561890', '1968-12-31', 'M', 'carlos.oliveira@stargroup.com', '555234567', 'Soldier'),
        ('Sherry', 'B.', 'Birkin', '456789112', '1986-06-12', 'F', 'sherry.birkin@rcpd.com', '555456789', 'Student'),
        ('Ethan', 'W.', 'Winters', '567890623', '1978-10-18', 'M', 'ethan.winters@survivor.net', '555567890', 'Engineer'),
        ('Claire', 'A.', 'Redfield', '658901234', '1979-02-15', 'F', 'claire.redfield@rising.com', '555678901', 'Journalist'),
        ('Rebecca', 'C.', 'Chambers', '759012345', '1980-08-04', 'F', 'rebecca.chambers@stargroup.com', '555789012', 'Doctor'),
        ('Brad', 'V.', 'Vickers', '901234121', '1971-09-15', 'M', 'brad.vickers@rpd.com', '555901234', 'Pilot'),
        ('John', 'K.', 'Smith', '234123455', '1980-02-22', 'M', 'john.smith@example.com', '555111222', 'Electrician'),
        ('Emily', 'J.', 'Davis', '345234564', '1975-11-11', 'F', 'emily.davis@example.com', '555222333', 'Nurse'),
        ('Michael', 'D.', 'Johnson', '456344678', '1983-07-07', 'M', 'michael.johnson@example.com', '555333444', 'Accountant'),
        ('Sarah', 'E.', 'Lee', '567456749', '1990-04-18', 'F', 'sarah.lee@example.com', '555444555', 'Software Developer'),
        ('Robert', 'F.', 'Williams', '674467890', '1962-01-05', 'M', 'robert.williams@example.com', '555555666', 'Plumber'),
        ('Jessica', 'G.', 'Brown', '789678221', '1987-09-14', 'F', 'jessica.brown@example.com', '555666777', 'Teacher'),
        ('Daniel', 'H.', 'Martinez', '890789112', '1979-05-25', 'M', 'daniel.martinez@example.com', '555777888', 'Construction Worker'),
        ('Emma', 'I.', 'Anderson', '901890111', '1985-12-30', 'F', 'emma.anderson@example.com', '555888999', 'Marketing Specialist'),
        ('David', 'J.', 'Lopez', '012901444', '1968-03-11', 'M', 'david.lopez@example.com', '555999000', 'Lawyer'),
        ('Sophia', 'K.', 'Perez', '123012215', '1973-08-20', 'F', 'sophia.perez@example.com', '555000111', 'Chef'),
        ('James', 'E.', 'Miller', '901234127', '1972-08-14', 'M', 'james.miller@example.com', '555-6789', 'Engineer'),
        ('Amanda', 'K.', 'Walker', '890123444', '1983-05-21', 'F', 'amanda.walker@example.com', '555-2345', 'Teacher'),
        ('David', 'L.', 'Smith', '789012341', '1967-11-30', 'M', 'david.smith@example.com', '555-4567', 'Plumber'),
        ('Sarah', 'M.', 'Jones', '678904434', '1988-03-09', 'F', 'sarah.jones@example.com', '555-3456', 'Nurse'),
        ('Robert', 'N.', 'Johnson', '567831123', '1975-07-25', 'M', 'robert.johnson@example.com', '555-7890', 'Electrician'),
        ('Laura', 'B.', 'Williams', '456789232', '1962-12-15', 'F', 'laura.williams@example.com', '555-8901', 'Artist'),
        ('Michael', 'R.', 'Davis', '345678120', '1980-06-22', 'M', 'michael.davis@example.com', '555-0123', 'Chef'),
        ('Emily', 'S.', 'Brown', '234567000', '1977-09-18', 'F', 'emily.brown@example.com', '555-1234', 'Journalist'),
        ('Daniel', 'J.', 'Wilson', '123456129', '1969-01-12', 'M', 'daniel.wilson@example.com', '555-3456', 'Accountant'),
        ('Olivia', 'P.', 'Moore', '012345632', '1985-04-09', 'F', 'olivia.moore@example.com', '555-5678', 'Architect');


INSERT INTO relato (idrelato, data, tipo, status, prioridade, idequipe_acionada, numdist_atendente, ssn_cidadao)
VALUES
        ('R00003244', '1975-04-12', 'Theft', 'Closed', 2, 'EQP000001', '1006-2350', '234123455'),
        ('R00004567', '1980-08-22', 'Assault', 'In Progress', 1, 'EQP001354', '1009-2353', '456344678'),
        ('R00005987', '1985-01-09', 'Robbery', 'Finished', 3, 'EQP002004', '1009-2353', '890789112'),
        ('R00007345', '1990-05-15', 'Homicide', 'Archived', 5, 'EQP000936', '1010-2354', '901234127'),
        ('R00008890', '1995-11-01', 'Burglary', 'Closed', 4, 'EQP000897', '1010-2354', '456789232'),
        ('R00009987', '1999-07-29', 'Missing Person', 'In Queue', 2, 'EQP001354', '1010-2354', '123456129'),
        ('R00009023', '1998-12-13', 'Fraud', 'Finished', 3, 'EQP002004', '1014-2358', '012345632'),
        ('R00009001', '1997-03-20', 'Assault', 'In Progress', 1, 'EQP000897', '1014-2358', '678904434'),
        ('R00008777', '1994-09-30', 'Theft', 'Archived', 4, 'EQP000936', '1006-2350', '678904434'),
        ('R00007599', '1992-04-18', 'Vandalism', 'Closed', 3, 'EQP001354', '1006-2350', '678904434');

INSERT INTO caso (idcaso, descricao, datainicio, datafim, status, prioridade, idequipe_encarregada, numdist_responsavel)
VALUES
        ('C00000001', 'Investigação de roubo em uma loja de eletrônicos. Suspeitos identificados como membros de uma gangue local.', '1994-03-15', NULL, 'In Progress', 3, 'EQP001354', '1002-2346'), -- Relacionado à equipe 'RPD K-9 Unit'
        ('C00000002', 'Assassinato de um conhecido empresário em um restaurante. A investigação aponta para um possível crime passional.', '1995-07-10', '1995-12-15', 'Finished', 1, 'EQP002004', '1007-2351'), -- Relacionado à equipe 'RPD S.W.A.T.'
        ('C00000003', 'Desaparecimento de uma jovem em uma área residencial. Possível sequestro.', '1993-09-20', NULL, 'In Queue', 2, 'EQP000936', '1021-2365'), -- Relacionado à equipe 'RPD Special Investigations'
        ('C00000004', 'Investigação de fraude financeira em uma empresa de investimentos. Vários documentos falsificados foram encontrados.', '1992-12-01', NULL, 'In Progress', 4, 'EQP000897', '1020-2364'), -- Relacionado à equipe 'RPD Narcotics Division'
        ('C00000005', 'Vandalismo e ataques em vários prédios públicos. Suspeitos são conhecidos por envolvimento em atividades anti-governamentais.', '1995-05-10', NULL, 'In Queue', 5, 'EQP002004', '1007-2351'); -- Relacionado à equipe 'RPD S.W.A.T.'


INSERT INTO acusado (ssn_acusado, idcaso_associado, grau_envolvimento)
VALUES
        ('674467890', 'C00000001', 'Principal Suspeito'),  
        ('234567000', 'C00000001', 'Suspeito Secundário'),
        ('345678120', 'C00000001', 'Suspeito Principal'),
        ('234561890', 'C00000002', 'Testemunha'),
        ('123012215', 'C00000003', 'Suspeito Principal'),
        ('674467890', 'C00000004', 'Suspeito Principal'),
        ('674467890', 'C00000005', 'Suspeito Secundário');


INSERT INTO prova (idprova, idcaso_associado, equipe_encarregada, descricao, tipo, datacoleta, integridade, estado, autenticidade, relevancia, ssn_depoente)
VALUES
        ('P00000001', 'C00000001', 'EQP001354', 'Câmera de segurança que capturou imagens dos suspeitos no local do crime.', 'Imagem', '1994-03-16', 'Valid', 'Intact', 'Authentic', 'High', NULL),
        ('P00000002', 'C00000001', 'EQP002004', 'Arma encontrada na cena do crime, possível arma do crime.', 'Arma', '1995-07-14', 'Partial', 'Damaged', 'Tampered', 'Medium', NULL), 
        ('P00000003', 'C00000001', 'EQP001354', 'Relatório de testemunha sobre a última vez que viu o Suspeito.', 'Relatório', '1993-09-22', 'Valid', 'Intact', 'Authentic', 'High', '567456749'), 
        ('P000000002', 'C00000001', 'EQP001354', 'Testemunho de um funcionário da loja sobre a ocorrência do roubo.', 'Relatório', '1994-03-17', 'Valid', 'Intact', 'Authentic', 'High', '789678221'),
        ('P000000003', 'C00000001', 'EQP001354', 'Pegadas encontradas no local do crime, possível evidência de entrada.', 'Evidência Física', '1994-03-18', 'Partial', 'Damaged', 'Authentic', 'Medium', NULL),
        ('P000000004', 'C00000001', 'EQP001354', 'Vídeo de câmeras de segurança de lojas vizinhas mostrando a possível rota de fuga dos suspeitos.', 'Vídeo', '1994-03-19', 'Valid', 'Intact', 'Authentic', 'High', NULL),
        ('P000000005', 'C00000001', 'EQP001354', 'Notas fiscais de compras realizadas por suspeitos no mesmo dia do roubo.', 'Documento', '1994-03-20', 'Valid', 'Intact', 'Authentic', 'High', NULL);