-- Inserções dos "Orgãos" Da delegacia

INSERT INTO departamento (numdep) VALUES ('D0001');

INSERT INTO unidade (numuni) VALUES ('U01'); 
INSERT INTO unidade (numuni) VALUES ('U02');
INSERT INTO unidade (numuni) VALUES ('U03');
INSERT INTO unidade (numuni) VALUES ('U04');


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
        ('Charlotte', 'M.', 'Lee', '456789013', '1993-07-30', 'F', 'charlotte.lee@example.com', '555-4568', '1014-2358', 6, 'Officer', 29, 'Inactive', 'D0001');


INSERT INTO comissario (numdist) VALUES ('1234-5678');

INSERT INTO capitao (numdist)
VALUES  ('1020-2364'), ('1002-2346'), ('1007-2351'), ('1013-2357'), ('1017-2361'), ('1011-2355'), ('1021-2365') ;


INSERT INTO subalterno (numdist, unidadepert)
VALUES
        ('1019-2363', 'U01'), ('1022-2366', 'U01'), ('1001-2345', 'U01'),                                               --Officer
        ('1006-2350', 'U02'), ('1009-2353', 'U02'), ('1010-2354', 'U02'), ('1014-2358', 'U02'),                          --Attendant
        ('1018-2362', 'U03'), ('1003-2347', 'U03'), ('1004-2348', 'U03'), ('1005-2349', 'U03'), ('1008-2352', 'U03'), ('1012-2356', 'U03')                         --Detective
