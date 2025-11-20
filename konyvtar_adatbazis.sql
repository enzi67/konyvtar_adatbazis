-- 2. feladat --
CREATE DATABASE konyvtaradatbazis
CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;

-- 3. feladat --
USE konyvtaradatbazis;

-- 4. feladat --
CREATE TABLE konyvek (
    Azonosító INTEGER PRIMARY KEY AUTO_INCREMENT,
    Cím VARCHAR(200) NOT NULL UNIQUE,
    Szerző VARCHAR(120),
    Kiadási év YEAR,
    Oldalszám INTEGER CHECK(BETWEEN 20 AND 2000),
    Kategória ENUM("fantasy, "sci-fi, "disztópia, "történelem),
    Értékelés FLOAT DEFAULT 5.0
)