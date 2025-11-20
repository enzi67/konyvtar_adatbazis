bleCREATE DATABASE konyvtaradatbazis CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

USE konyvtaradatbazis;

CREATE TABLE felhasznalok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(255) NOT NULL,
    regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
ta
-- 3. feladat --
USE konyvtaradatbazis;

-- 4. feladat --
CREATE TABLE konyvek (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR,
    oldalszam INTEGER CHECK (oldalszam BETWEEN 20 AND 2000),
    kategoria ENUM ('fantasy', 'sci-fi', 'disztópia', 'történelem'),
    ertekeles FLOAT DEFAULT 5.0
);

-- 5. feladat --
CREATE TABLE olvasok(
    id INTEGER UNIQUE AUTO_INCREMENT NOT NULL,
    nev NOT NULL VARCHAR(100),
    szuletesi_datum DATE,
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv DEFAULT 'igen' ENUM ('igen', 'nem'),
    regisztracio_idopontja 
)