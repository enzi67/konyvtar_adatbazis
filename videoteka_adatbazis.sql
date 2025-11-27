-- 2. feladat --
DROP DATABASE IF EXISTS videotekaadatbazis;
CREATE database videotekaadatbazis;
    character set utf8mb4
    collate utf8mb4_hungarian_ci;

-- 3. feladat --
USE videotekaadatbazis;

-- 4. feladat --
DROP TABLE IF EXISTS filmek;
CREATE TABLE filmek (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cim NOT NULL UNIQUE VARCHAR(150),
    rendezo VARCHAR(120),
    megjelenesi_ev YEAR,
    hossz_perc INT CHECK (hossz_perc BETWEEN 30 AND 400),
    mufaj ENUM('akcio', 'vigjatek', 'drama', 'thriller') NOT NULL,
    imdb_ertekeles FLOAT DEFAULT 6.5,
);

-- 5. feladat --
DROP TABLE IF EXISTS kolcsonzok;
CREATE TABLE kolcsonzok (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nev NOT NULL VARCHAR(100),
    email NOT NULL UNIQUE VARCHAR(120),
    varos VARCHAR(50) DEFAULT 'Budapest',
    aktiv ENUM('igen', 'nem') DEFAULT('igen'),
    regisztracio DATETIME DEFAULT CURRENT_TIMESTAMP
);