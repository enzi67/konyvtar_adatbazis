CREATE database konyvtaradatbazis;

-- 3. feladat --
USE konyvtaradatbazis;

-- 4. feladat --
CREATE TABLE konyvek (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cim VARCHAR(200) NOT NULL UNIQUE,
    szerzo VARCHAR(120),
    kiadasi_ev YEAR,
    oldalszam INT CHECK (oldalszam BETWEEN 20 AND 2000),
    ertekeles FLOAT DEFAULT 5.0
);

-- 5. feladat --
CREATE TABLE olvasok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    szuletesi_datum DATE,
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv ENUM('igen', 'nem') DEFAULT 'igen',
    regisztracio_idopontja TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
