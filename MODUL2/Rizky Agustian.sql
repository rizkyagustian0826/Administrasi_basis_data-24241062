-- NAMA  : Rizky Agustian
-- NIM   : 24241062
-- KELAS : B

-- menampilkan list database
SHOW DATABASES;

-- membuat databases
CREATE DATABASE db_sales;

-- menggunakana database yang dibuat
USE db_sales;

-- cek tabel dalam database
SHOW TABLES;

-- CASE 1
-- Membuat tabel customer
CREATE TABLE customer (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    nama_customer VARCHAR(100),
    alamat VARCHAR(200)
);

-- Menambahkan data customer
INSERT INTO customer (nama_customer, alamat) VALUES
('Pasanggrahan Motor', 'Vila Sempisan No. 67 - Kota B'),
('Febrianto, S.H.', 'Vila Sempisan No. 11 - Kota D'),
('Hadi Goh', 'Vila Sempisan No. 1 - Kota B'),
('Untung Handoko', 'Vila Permata Iren Derbisu Blok C5-7'),
('Jordano Sukisman', 'Vila Permata Iren Derbisu Blok A1-2'),
('Tommy Sinaga', 'Vila Garuda Serbu Blok D1 - Kota C'),
('Ivan Scianto', 'Vila Garuda Serbu Blok T3 - No. 3'),
('Agus Cahyono', 'Vila Bukit Sagareus Gang Sewu No. 3'),
('Riana Sari', 'Vila Bukit Sagareus Gang Kelapa No. 6'),
('Ir. R. Nugraha', 'Vila Bukit Sagareus Blok A1 No. 1');

-- Menampilkan data dengan prefix dan alias
SELECT 
    c.nama_customer AS nama_customer,
    c.alamat AS alamat_customer
FROM customer AS c;


-- CASE 2
-- Membuat tabel produk
CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga INT
);

-- Menambahkan data produk
INSERT INTO produk (nama_produk, harga) VALUES
('Kotak Pensil DQLab', 62500),
('Flashdisk DQLab 64 GB', 55000),
('Gift Voucher DQLab 100rb', 100000),
('Flashdisk DQLab 32 GB', 40000),
('Gift Voucher DQLab 250rb', 250000),
('Pulpen Multifunction + Laser DQLab', 92500),
('Tas Travel Organizer DigiSkills.id', 48000),
('Gantungan Kunci DQLab', 15800),
('Buku Planner Agenda DQLab', 92000),
('Stick Notes DQLab 500 sheets', 55000);

-- Menampilkan data dengan prefix dan alias
SELECT 
    p.nama_produk AS produk,
    p.harga AS harga_produk
FROM produk AS p;
