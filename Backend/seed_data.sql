-- Create database and table
CREATE DATABASE IF NOT EXISTS watchwise;
USE watchwise;

-- Clear existing table
DROP TABLE IF EXISTS watches;
CREATE TABLE watches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(100),
    model VARCHAR(100),
    price INT,
    style VARCHAR(50),
    occupation_fit VARCHAR(255),
    image_url TEXT,
    buy_link TEXT
);

-- =================================================
-- 1) STUDENT COLLECTIONS
-- =================================================

-- Student + Sporty
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Casio','G-Shock GA-100',7000,'Sporty','Student','https://m.media-amazon.com/images/I/61wrGQdA3LL._UL1500_.jpg','https://www.casio.com/in/watches/gshock/product.GA-100-1A2/'),
('Fastrack','Reflex Beat',2295,'Sporty','Student','https://staticimg.titan.co.in/Fastrack/Catalog/38045PP03_1.jpg','https://www.fastrack.in/product/reflex-beat-smart-band-38045pp03.html'),
('Sonata','Superfibre',1100,'Sporty','Student','https://staticimg.titan.co.in/Sonata/Catalog/77083PP02_1.jpg','https://www.sonatawatches.in/product/sonata-superfibre-77083pp02.html'),
('Fossil','Sport Smart',7500,'Sporty','Student','https://m.media-amazon.com/images/I/71XYZ.jpg','https://www.fossil.com/en-in/products/sport-smart.html'),
('Timex','Ironman',4800,'Sporty','Student','https://m.media-amazon.com/images/I/81ABC.jpg','https://www.timexindia.com/ironman.html'),
('Casio','Youth Edition',3500,'Sporty','Student','https://m.media-amazon.com/images/I/61DEF.jpg','https://www.casio.com/in/youth-edition.html'),
('Fastrack','Pulse Tracker',3000,'Sporty','Student','https://m.media-amazon.com/images/I/72GHI.jpg','https://www.fastrack.in/product/pulse-tracker.html'),
('Titan','Neo Sport',4200,'Sporty','Student','https://staticimg.titan.co.in/Titan/Catalog/1805SL02_1.jpg','https://www.titan.co.in/product/neo-sport.html'),
('Casio','Edifice Youth',6800,'Sporty','Student','https://m.media-amazon.com/images/I/63JKL.jpg','https://www.casio.com/in/edifice-youth.html'),
('Timex','Expedition Trail',5200,'Sporty','Student','https://m.media-amazon.com/images/I/81MNO.jpg','https://www.timexindia.com/expedition-trail.html');

-- Student + Formal
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Titan','Neo Analog',3800,'Formal','Student','https://staticimg.titan.co.in/Titan/Catalog/1805SL01_1.jpg','https://www.titan.co.in/product/neo-analog-watch-for-men-1805sl01.html'),
('Casio','Enticer',3500,'Formal','Student','https://m.media-amazon.com/images/I/81Vb4JbLrQS._UL1500_.jpg','https://www.casio.com/in/watches/casio/product.MTP-V002D-7B3UDF/'),
('Fossil','Classic Student',4200,'Formal','Student','https://m.media-amazon.com/images/I/71ABC.jpg','https://www.fossil.com/en-in/products/classic-student.html'),
('Timex','Easy Reader',3000,'Formal','Student','https://m.media-amazon.com/images/I/81DEF.jpg','https://www.timexindia.com/easy-reader.html'),
('Casio','Vintage Student',2700,'Formal','Student','https://m.media-amazon.com/images/I/61XYZ.jpg','https://www.casio.com/in/watches/casio/product.A168WG-9WDF/'),
('Sonata','Neo Formal',2500,'Formal','Student','https://staticimg.titan.co.in/Sonata/Catalog/77084PP01_1.jpg','https://www.sonatawatches.in/product/neo-formal.html'),
('Fastrack','Trendies Formal',3200,'Formal','Student','https://staticimg.titan.co.in/Fastrack/Catalog/38051PP01_1.jpg','https://www.fastrack.in/product/trendies-formal.html'),
('Timex','Marlin Student',3500,'Formal','Student','https://m.media-amazon.com/images/I/61LMN.jpg','https://www.timexindia.com/marlin-student.html'),
('Titan','Edge Student',4500,'Formal','Student','https://staticimg.titan.co.in/Titan/Catalog/1806SL01_1.jpg','https://www.titan.co.in/product/edge-student.html'),
('Casio','Classic Leather',4000,'Formal','Student','https://m.media-amazon.com/images/I/62OPQ.jpg','https://www.casio.com/in/watches/casio/product.MTP-V001L-1B.html');

-- Student + Casual
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Timex','Expedition Scout',4200,'Casual','Student','https://m.media-amazon.com/images/I/81A9kZZgEWL._UL1500_.jpg','https://www.timexindia.com/expedition-scout.html'),
('Casio','Vintage Casual',2700,'Casual','Student','https://m.media-amazon.com/images/I/61jC+KDF+GL._UL1500_.jpg','https://www.casio.com/in/watches/casio/product.A168WG-9WDF/'),
('Fastrack','Casual Trendies',3200,'Casual','Student','https://staticimg.titan.co.in/Fastrack/Catalog/38051PP02_1.jpg','https://www.fastrack.in/product/casual-trendies.html'),
('Sonata','Super Casual',1500,'Casual','Student','https://staticimg.titan.co.in/Sonata/Catalog/77085PP01_1.jpg','https://www.sonatawatches.in/product/super-casual.html'),
('Fossil','Casual Sport',3800,'Casual','Student','https://m.media-amazon.com/images/I/71DEF.jpg','https://www.fossil.com/en-in/products/casual-sport.html'),
('Timex','Expedition Trail',5200,'Casual','Student','https://m.media-amazon.com/images/I/81MNO.jpg','https://www.timexindia.com/expedition-trail.html'),
('Casio','Youth Analog',3500,'Casual','Student','https://m.media-amazon.com/images/I/63JKL.jpg','https://www.casio.com/in/youth-analog.html'),
('Fastrack','Reflex Casual',3000,'Casual','Student','https://www.fastrack.in/product/reflex-casual.html'),
('Titan','Neo Casual',4200,'Casual','Student','https://staticimg.titan.co.in/Titan/Catalog/1805SL03_1.jpg','https://www.titan.co.in/product/neo-casual.html'),
('Casio','Edifice Casual',6800,'Casual','Student','https://www.casio.com/in/edifice-casual.html');

-- =================================================
-- 2) TEACHER COLLECTIONS
-- Teacher + Sporty
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Casio','G-Shock Teacher',7200,'Sporty','Teacher','https://m.media-amazon.com/images/I/61TCH.jpg','https://www.casio.com/in/watches/gshock/product.GA-110-1A2/'),
('Fastrack','Teacher Reflex',2500,'Sporty','Teacher','https://staticimg.titan.co.in/Fastrack/Catalog/38046PP03_1.jpg','https://www.fastrack.in/product/teacher-reflex.html'),
('Timex','Teacher Ironman',5000,'Sporty','Teacher','https://m.media-amazon.com/images/I/81TCH.jpg','https://www.timexindia.com/teacher-ironman.html'),
('Fossil','Teacher Sport',7600,'Sporty','Teacher','https://m.media-amazon.com/images/I/71TCH.jpg','https://www.fossil.com/en-in/products/teacher-sport.html'),
('Titan','Neo Teacher',4300,'Sporty','Teacher','https://staticimg.titan.co.in/Titan/Catalog/1805SL04_1.jpg','https://www.titan.co.in/product/neo-teacher.html'),
('Casio','Edifice Teacher',6900,'Sporty','Teacher','https://m.media-amazon.com/images/I/63TCH.jpg','https://www.casio.com/in/edifice-teacher.html'),
('Timex','Teacher Expedition',5300,'Sporty','Teacher','https://m.media-amazon.com/images/I/81TCH2.jpg','https://www.timexindia.com/teacher-expedition.html'),
('Fastrack','Pulse Teacher',3100,'Sporty','Teacher','https://www.fastrack.in/product/pulse-teacher.html'),
('Sonata','Neo Sport Teacher',4250,'Sporty','Teacher','https://staticimg.titan.co.in/Sonata/Catalog/1805SL05_1.jpg','https://www.sonatawatches.in/product/neo-sport-teacher.html'),
('Casio','Youth Teacher',3550,'Sporty','Teacher','https://m.media-amazon.com/images/I/63TCH2.jpg','https://www.casio.com/in/youth-teacher.html');

-- Teacher + Formal
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Titan','Neo Analog Teacher',3900,'Formal','Teacher','https://staticimg.titan.co.in/Titan/Catalog/1805SL06_1.jpg','https://www.titan.co.in/product/neo-analog-teacher.html'),
('Casio','Enticer Teacher',3600,'Formal','Teacher','https://m.media-amazon.com/images/I/81Vb4TCHLrQS._UL1500_.jpg','https://www.casio.com/in/watches/casio/product.MTP-V003D-7B3UDF/'),
('Fossil','Classic Teacher',4300,'Formal','Teacher','https://m.media-amazon.com/images/I/71TCH2.jpg','https://www.fossil.com/en-in/products/classic-teacher.html'),
('Timex','Easy Reader Teacher',3100,'Formal','Teacher','https://m.media-amazon.com/images/I/81TCH3.jpg','https://www.timexindia.com/easy-reader-teacher.html'),
('Casio','Vintage Teacher',2800,'Formal','Teacher','https://m.media-amazon.com/images/I/61XYZTCH.jpg','https://www.casio.com/in/watches/casio/product.A169WG-9WDF/'),
('Sonata','Neo Formal Teacher',2550,'Formal','Teacher','https://staticimg.titan.co.in/Sonata/Catalog/77086PP01_1.jpg','https://www.sonatawatches.in/product/neo-formal-teacher.html'),
('Fastrack','Trendies Formal Teacher',3250,'Formal','Teacher','https://staticimg.titan.co.in/Fastrack/Catalog/38052PP01_1.jpg','https://www.fastrack.in/product/trendies-formal-teacher.html'),
('Timex','Marlin Teacher',3550,'Formal','Teacher','https://m.media-amazon.com/images/I/61LMNTCH.jpg','https://www.timexindia.com/marlin-teacher.html'),
('Titan','Edge Teacher',4550,'Formal','Teacher','https://staticimg.titan.co.in/Titan/Catalog/1806SL02_1.jpg','https://www.titan.co.in/product/edge-teacher.html'),
('Casio','Classic Leather Teacher',4050,'Formal','Teacher','https://m.media-amazon.com/images/I/62OPQTCH.jpg','https://www.casio.com/in/watches/casio/product.MTP-V002L-1B.html');

-- Teacher + Casual
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Timex','Expedition Scout Teacher',4300,'Casual','Teacher','https://m.media-amazon.com/images/I/81A9kTCH.jpg','https://www.timexindia.com/expedition-scout-teacher.html'),
('Casio','Vintage Casual Teacher',2800,'Casual','Teacher','https://m.media-amazon.com/images/I/61jCTCH.jpg','https://www.casio.com/in/watches/casio/product.A168WG-9WDF/'),
('Fastrack','Casual Trendies Teacher',3300,'Casual','Teacher','https://staticimg.titan.co.in/Fastrack/Catalog/38053PP02_1.jpg','https://www.fastrack.in/product/casual-trendies-teacher.html'),
('Sonata','Super Casual Teacher',1600,'Casual','Teacher','https://staticimg.titan.co.in/Sonata/Catalog/77087PP01_1.jpg','https://www.sonatawatches.in/product/super-casual-teacher.html'),
('Fossil','Casual Sport Teacher',3900,'Casual','Teacher','https://m.media-amazon.com/images/I/71DEFTCH.jpg','https://www.fossil.com/en-in/products/casual-sport-teacher.html'),
('Timex','Expedition Trail Teacher',5300,'Casual','Teacher','https://m.media-amazon.com/images/I/81MNOTCH.jpg','https://www.timexindia.com/expedition-trail-teacher.html'),
('Casio','Youth Analog Teacher',3600,'Casual','Teacher','https://m.media-amazon.com/images/I/63JKLTCH.jpg','https://www.casio.com/in/youth-analog-teacher.html'),
('Fastrack','Reflex Casual Teacher',3100,'Casual','Teacher','https://www.fastrack.in/product/reflex-casual-teacher.html'),
('Titan','Neo Casual Teacher',4300,'Casual','Teacher','https://staticimg.titan.co.in/Titan/Catalog/1805SL07_1.jpg','https://www.titan.co.in/product/neo-casual-teacher.html'),
('Casio','Edifice Casual Teacher',6900,'Casual','Teacher','https://www.casio.com/in/edifice-casual-teacher.html');

-- =================================================
-- 3) BUSINESSMAN COLLECTIONS
-- (Sporty, Formal, Casual – 10 each)
-- =================================================

-- Insert similar 10 watches for each style for Businessman
-- Example placeholders
-- Sporty
INSERT INTO watches (brand, model, price, style, occupation_fit, image_url, buy_link) VALUES
('Rolex','Submariner',120000,'Sporty','Businessman','https://example.com/rolex_submariner.jpg','https://www.rolex.com/submariner'),
('Tag Heuer','Carrera',95000,'Sporty','Businessman','https://example.com/tag_carrera.jpg','https://www.tagheuer.com/carrera'),
('Omega','Seamaster',90000,'Sporty','Businessman','https://example.com/omega_seamaster.jpg','https://www.omegawatches.com/seamaster'),
('Breitling','Superocean',110000,'Sporty','Businessman','https://example.com/breitling_superocean.jpg','https://www.breitling.com/superocean'),
('Tissot','PRC 200',55000,'Sporty','Businessman','https://example.com/tissot_prc200.jpg','https://www.tissotwatches.com/prc200'),
('Seiko','Prospex',50000,'Sporty','Businessman','https://example.com/seiko_prospex.jpg','https://www.seikowatches.com/prospex'),
('Casio','Edifice',30000,'Sporty','Businessman','https://example.com/casio_edifice.jpg','https://www.casio.com/in/edifice'),
('Fossil','Sport Chrono',28000,'Sporty','Businessman','https://example.com/fossil_sportchrono.jpg','https://www.fossil.com/en-in/products/sport-chrono.html'),
('Citizen','Promaster',60000,'Sporty','Businessman','https://example.com/citizen_promaster.jpg','https://www.citizenwatches.com/promaster'),
('Bulova','Marine Star',45000,'Sporty','Businessman','https://example.com/bulova_marinestar.jpg','https://www.bulova.com/marinestar');

-- Formal
-- Casual
-- Repeat same pattern with 10 watches each

-- =================================================
-- 4) ATHLETE COLLECTIONS
-- 5) EXPLORER COLLECTIONS
-- =================================================

-- Same pattern: Sporty, Formal, Casual × 10 watches each

-- =================================================
