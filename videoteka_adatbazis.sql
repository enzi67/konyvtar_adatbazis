-- 2. feladat --
CREATE database videotekaadatbazis;
    character set utf8mb4
    collate utf8mb4_hungarian_ci

-- 3. feladat --
USE videotekaadatbazis;

-- 4. feladat --
CREATE TABLE filmek (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cim NOT NULL UNIQUE VARCHAR(150),
    rendezo VARCHAR(120),
    megjelenesi_ev YEAR,
    hossz_perc INT CHECK (hossz_perc BETWEEN 30 AND 400),
    mufaj
);