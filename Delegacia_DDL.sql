CREATE SCHEMA Delegacia;

SET search_path to delegacia;

-- Definição dos "orgaos" da Delegacia
CREATE TABLE departamento
(
    numdep      CHAR(5)             UNIQUE NOT NULL,

PRIMARY KEY (numdep)
);


CREATE TABLE unidade 
(
    numuni      CHAR(3)             UNIQUE NOT NULL,

PRIMARY KEY (numuni)
);


-- Definição dos oficiais e suas diferentes classes dentro da delegacia
CREATE TABLE oficial
(
    pnome           CHAR(15)        NOT NULL,
    mnome           CHAR(30)        NOT NULL,
    unome           CHAR(15)        NOT NULL,
    ssn             CHAR (9)        UNIQUE NOT NULL,
    datanasc        DATE            NOT NULL,
    sexo            CHAR            NOT NULL,
    email           VARCHAR(50)     UNIQUE NOT NULL,
    telefone        VARCHAR(9)      NOT NULL,
    numdist         CHAR (9)        UNIQUE NOT NULL,
    anosprofissao   INT,
    patente         VARCHAR(30)     NOT NULL,
    cargahoraria    INT,
    status          VARCHAR(30)     NOT NULL,
    deptpertencente CHAR(5),

CHECK (status IN ('On Duty', 'Active', 'Inactive', 'In Vacation', 'On Leave', 'Suspended', 'Deceased')),
PRIMARY KEY (numdist),
FOREIGN KEY (deptpertencente) REFERENCES departamento (numdep)
);


CREATE TABLE comissario
(
    numdist         CHAR (9)        UNIQUE NOT NULL,

PRIMARY KEY (numdist),
FOREIGN KEY (numdist) REFERENCES oficial(numdist)
);


CREATE TABLE capitao 
(
    numdist         char (9)        UNIQUE NOT NULL,

PRIMARY KEY (numdist),
FOREIGN KEY (numdist) REFERENCES oficial (numdist)
);


-- Definição da Equipe para que possa servir de chave estrangeira para detetive
CREATE TABLE equipe 
(
    nome            VARCHAR(50),
    idequipe        CHAR(9)             UNIQUE NOT NULL,
    datinicio       DATE                NOT NULL,
    datfim          DATE,
    numdistcapitao  VARCHAR(9)          NOT NULL,

PRIMARY KEY (idequipe),
FOREIGN KEY (numdistcapitao) REFERENCES capitao (numdist)
);

-- Definição das entidades de oficiais subalternos
CREATE TABLE subalterno
(
    numdist         CHAR (9)        UNIQUE NOT NULL,
    unidadepert     CHAR(3)             NOT NULL,
    

PRIMARY KEY (numdist),
FOREIGN KEY (numdist) REFERENCES oficial (numdist),
FOREIGN KEY (unidadepert) REFERENCES unidade (numuni)
);


CREATE TABLE agenteDeCampo
(
    numdist         CHAR (9)        UNIQUE NOT NULL,

PRIMARY KEY (numdist),
FOREIGN KEY (numdist) REFERENCES subalterno (numdist)
);


CREATE TABLE atendente
(
    numdist         CHAR (9)        UNIQUE NOT NULL,

PRIMARY KEY (numdist),
FOREIGN KEY (numdist) REFERENCES subalterno (numdist)
);


CREATE TABLE detetive
(
    numdist         CHAR (9)        UNIQUE NOT NULL,
    idequipe        CHAR (9),

PRIMARY KEY (numdist),
FOREIGN KEY (idequipe) REFERENCES equipe (idequipe)
);


-- Definição dos relacionamentos entre as entidades definidas até agora (Delegacia - oficiais /  oficiais - equipe)
CREATE TABLE gerencia_depto
(
    numdistcomissario  VARCHAR (9)      UNIQUE NOT NULL,
    numdep             CHAR(5)          UNIQUE NOT NULL,
    iniciogestao       DATE             NOT NULL,
    fimgestao          DATE,

PRIMARY KEY (numdistcomissario,numdep),
FOREIGN KEY (numdistcomissario) REFERENCES comissario (numdist),
FOREIGN KEY (numdep) REFERENCES departamento (numdep)
);

CREATE TABLE gerencia_unidade
(
    numdistcapitao  VARCHAR (9)         UNIQUE NOT NULL,
    numuni          CHAR(3)             UNIQUE NOT NULL,
    iniciogestao    DATE                NOT NULL,
    fimgestao       DATE,

PRIMARY KEY (numdistcapitao, numuni),
FOREIGN KEY (numdistcapitao) REFERENCES capitao (numdist),
FOREIGN KEY (numuni) REFERENCES unidade (numuni) 
);

CREATE TABLE agente_equipe
(
    idequipe        CHAR(9)         NOT NULL,
    numdist         CHAR(9)         NOT NULL,
    iniciolocab     DATE            NOT NULL,
    fimcolab        DATE,

PRIMARY KEY (numdist, idequipe),
FOREIGN KEY (numdist) REFERENCES agenteDeCampo (numdist),
FOREIGN KEY (idequipe) REFERENCES equipe (idequipe)
);


-- Declaração de outras entidades referentes a pessoas.

CREATE TABLE cidadao 
(
    pnome           CHAR(15)        NOT NULL,
    mnome           CHAR(30)        NOT NULL,
    unome           CHAR(15)        NOT NULL,
    ssn             CHAR (9)        UNIQUE NOT NULL,
    datanasc        DATE            NOT NULL,
    sexo            CHAR            NOT NULL,
    email           VARCHAR(50)     UNIQUE NOT NULL,
    telefone        VARCHAR(9)      NOT NULL,
    profissao       VARCHAR(50),

PRIMARY KEY (SSN)
);

CREATE TABLE dependente 
(
    ssn             CHAR (9)        NOT NULL,
    numdistoficial  CHAR (9)        NOT NULL,

PRIMARY KEY (ssn, numdistoficial),
FOREIGN KEY (numdistoficial) REFERENCES  oficial(numdist),
FOREIGN KEY (ssn) REFERENCES  cidadao(ssn)
);


CREATE TABLE interno
(
    ssn         char (9)            UNIQUE NOT NULL,
    data_prisao DATE                NOT NULL,
    fim_pena    DATE                NOT NULL,
    cela        INT                 NOT NULL,
    bloco       INT                 NOT NULL,

PRIMARY KEY (ssn),
FOREIGN KEY (ssn) REFERENCES cidadao (SSN)
);


-- Declaração de entidades referentes a um relato/caso

CREATE TABLE relato
(
    idrelato            CHAR(15)        UNIQUE NOT NULL,
    data                DATE            NOT NULL,
    tipo                CHAR (30)       NOT NULL,
    status              VARCHAR (30),
    prioridade          INT             NOT NULL,
    idequipe_acionada   CHAR (9),
    numdist_atendente   CHAR (9)        NOT NULL,
    ssn_cidadao         CHAR (9),


CHECK (status IN ('In Progress', 'Finished', 'Archived', 'Closed', 'In Queue')),

PRIMARY KEY (idrelato),
FOREIGN KEY (idequipe_acionada) REFERENCES equipe (idequipe),
FOREIGN KEY (numdist_atendente) REFERENCES atendente (numdist),
FOREIGN KEY (ssn_cidadao) REFERENCES cidadao (ssn)
);


CREATE TABLE caso
(
    idcaso                  CHAR (15)          UNIQUE NOT NULL,
    descricao               VARCHAR (10000),
    datainicio              DATE                NOT NULL,
    datafim                 DATE,
    status                  VARCHAR (30)        NOT NULL,
    prioridade              INT                 NOT NULL,
    idequipe_encarregada    CHAR (9),
    numdist_responsavel     CHAR (9)            NOT NULL,

CHECK (status IN ('In Progress', 'Finished', 'Archived', 'Closed', 'In Queue')),

PRIMARY KEY (idcaso),
FOREIGN KEY (idequipe_encarregada) REFERENCES  equipe(idequipe),
FOREIGN KEY (numdist_responsavel) REFERENCES  oficial(numdist)
);


CREATE TABLE prova 
(
    idprova                 CHAR(20)            UNIQUE NOT NULL,
    idcaso_associado        CHAR (15)           NOT NULL,
    equipe_encarregada      CHAR (9),
    descricao               VARCHAR (1000),
    tipo                    CHAR (30)           NOT NULL,
    datacoleta              DATE                NOT NULL,
    integridade             VARCHAR (30)        NOT NULL DEFAULT 'Not Verified',
    estado                  VARCHAR (15),
    autenticidade           VARCHAR (15),
    relevancia              VARCHAR (15),
    ssn_depoente            char(9),

CHECK (integridade IN ('Not Verified', 'Valid', 'Partial', 'Misleading', 'Inconclusive', 'Invalid') ),
CHECK (estado in ('Intact', 'Compromised', 'Damaged', 'Corrupted', 'Partial')),
CHECK (autenticidade IN ('Authentic', 'Tampered', 'Fabricated')),

PRIMARY KEY (idprova, idcaso_associado),
FOREIGN KEY (idcaso_associado) REFERENCES caso(idcaso),
FOREIGN KEY (equipe_encarregada) REFERENCES equipe(idequipe),
FOREIGN KEY (ssn_depoente) REFERENCES cidadao(ssn)
);


-- Declaração de Relacionamentos

CREATE TABLE acusado 
(
    ssn_acusado         CHAR (9)        NOT NULL,
    idcaso_associado    CHAR (15)       NOT NULL,
    grau_envolvimento   CHAR (30)       NOT NULL,

PRIMARY KEY (ssn_acusado, idcaso_associado),
FOREIGN KEY (ssn_acusado) REFERENCES cidadao(ssn),
FOREIGN KEY (idcaso_associado) REFERENCES caso(idcaso)
);
