DROP DATABASE IF EXISTS konyvtaradatbazis;
CREATE database konyvtaradatbazis;
    character set utf8mb4
    collate utf8mb4_hungarian_ci;

-- 3. feladat --
USE konyvtaradatbazis;

-- 4. feladat --
DROP TABLE IF EXISTS konyvek;
CREATE TABLE IF NOT EXISTS TABLE konyvek (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR,
    oldalszam INT CHECK (oldalszam BETWEEN 20 AND 2000),
    kategoria ENUM('fantasy', 'sci-fi', 'krimi', 'disztópia', 'történelem') NOT NULL,
    ertekeles FLOAT DEFAULT 5.0
);

-- 5. feladat --
drop table if exists olvasok;
CREATE TABLE IF NOT EXISTS olvasok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE,
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv ENUM('igen', 'nem') DEFAULT 'igen',
    regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
