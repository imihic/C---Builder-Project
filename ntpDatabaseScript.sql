--
-- File generated with SQLiteStudio v3.3.3 on sri lip 23 17:08:46 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: primatelji
CREATE TABLE primatelji (
    id     INTEGER       PRIMARY KEY AUTOINCREMENT
                         UNIQUE
                         NOT NULL,
    naziv  VARCHAR (255) NOT NULL,
    oib    VARCHAR (255) NOT NULL,
    adresa VARCHAR (255) NOT NULL
);

INSERT INTO primatelji (
                           id,
                           naziv,
                           oib,
                           adresa
                       )
                       VALUES (
                           1,
                           'HEP d.o.o.',
                           '54276174892',
                           'Vukovarska 27A, 10000 Zagreb'
                       );

INSERT INTO primatelji (
                           id,
                           naziv,
                           oib,
                           adresa
                       )
                       VALUES (
                           2,
                           'Links d.o.o.',
                           '5427612341',
                           'Frankopanska 1, 10000 Zagreb'
                       );


-- Table: racuni
CREATE TABLE racuni (
    id          INTEGER       PRIMARY KEY AUTOINCREMENT
                              UNIQUE
                              NOT NULL,
    opis        VARCHAR (255) NOT NULL,
    iznos       INTEGER       NOT NULL,
    status      VARCHAR (255) NOT NULL,
    primateljId INTEGER       REFERENCES primatelji (id) 
);

INSERT INTO racuni (
                       id,
                       opis,
                       iznos,
                       status,
                       primateljId
                   )
                   VALUES (
                       1,
                       'Održavanje Web Stranice',
                       2500,
                       'Nije potpisan',
                       1
                   );

INSERT INTO racuni (
                       id,
                       opis,
                       iznos,
                       status,
                       primateljId
                   )
                   VALUES (
                       2,
                       'Održavanje Web Stranice',
                       2500,
                       'Nije potpisan',
                       2
                   );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
