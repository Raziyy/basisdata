# Tugas Akhir Basis Data 
Disusun Oleh Kelompok 9 :
1. Fazril Fadhilah   - 4523210047
2. Muhammad Al Fatih - 4523210135
3. Raziy Ibrahim     - 4523210138

# Step by Step Pembuatan Database

1. Membuat Database Toko_Pulsa lalu memakainya untuk membuat semua tabel yang ada.
```sql
CREATE DATABASE Toko_Pulsa
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE Toko_Pulsa;
```
![Screenshot 2025-01-05 214041](https://github.com/user-attachments/assets/f79688ee-d705-4193-bfdc-cb01470db5f4)

2. Membuat Tabel Barang yang memuat ID_Barang sebagai Primary Key.
```sql
CREATE TABLE Barang (
    ID_Barang INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Barang VARCHAR(100) NOT NULL,
    Harga_Barang BIGINT(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
```
![Screenshot 2024-12-31 103830](https://github.com/user-attachments/assets/b0244f51-fbcd-4869-9a0c-8362f1261c3b)

3. Membuat Tabel Penjual yang memuat ID_Penjual sebagai Primary Key.
```sql
CREATE TABLE Penjual (
    ID_Penjual INT AUTO_INCREMENT PRIMARY KEY,
    Nama_Penjual VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
```
![Screenshot 2024-12-31 104309](https://github.com/user-attachments/assets/f4ccddcc-5872-42f0-8a23-688eba58254b)

4. Membuat Tabel Pembeli yang membuat NoTelp_Pembeli sebagai Primary key.
```sql
CREATE TABLE Pembeli (
    NoTelp_Pembeli BIGINT(20) PRIMARY KEY,
    Nama_Pembeli VARCHAR(100),
    Jumlah BIGINT(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
```
![Screenshot 2025-01-05 214902](https://github.com/user-attachments/assets/7f14902e-c0bc-4bc7-9366-0ccbbc752968)

5. Membuat Tabel Transaksi yang memuat ID_Transaksi sebagai Primary Key, dan memiliki beberapa Foriegn Key yaitu (NoTelp_Pembeli dari tabel Pembeli, ID_Penjual dari tabel penjual dan, ID_Barang dari tabel barang)
```sql
CREATE TABLE Transaksi (
    ID_Transaksi INT AUTO_INCREMENT PRIMARY KEY,
    Tanggal_Transaksi TIMESTAMP NOT NULL,
    ID_Barang INT,
    FOREIGN KEY (ID_Barang) REFERENCES barang(ID_Barang),
    ID_Penjual INT,
    FOREIGN KEY (ID_Penjual) REFERENCES penjual(ID_Penjual),
    NoTelp_Pembeli BIGINT(20),
    FOREIGN KEY (NoTelp_Pembeli) REFERENCES pembeli(NoTelp_Pembeli),
    Status_Transaksi ENUM ('Berhasil', 'Proses', 'Gagal'),
    Total_Bayar BIGINT(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
```
![Screenshot 2024-12-31 112353](https://github.com/user-attachments/assets/9c1d81d2-1862-4832-88f3-d6efd99a5824)

6. Menginput 20 data dummy ke tabel barang
```sql
INSERT INTO barang (Nama_Barang, Harga_Barang) VALUES
('Telkomsel 5000', 5700),
('Telkomsel 10000', 10700),
('Telkomsel 20000', 20700),
('Telkomsel 30000', 30700),
('Telkomsel 50000', 50700),
('Indosat 5000', 5500),
('Indosat 10000', 10500),
('Indosat 20000', 20500),
('Indosat 30000', 30500),
('Indosat 50000', 50500),
('Three 5000', 5500),
('Three 10000', 10500),
('Three 20000', 20500),
('Three 30000', 30500),
('Three 50000', 50500),
('XL 5000', 5800),
('XL 10000', 10800),
('XL 20000', 20800),
('XL 30000', 30800),
('XL 50000', 50800);
```
![Screenshot 2024-12-31 173427](https://github.com/user-attachments/assets/8a44f144-2022-4479-b514-3b1b18b32198)
![Screenshot 2024-12-31 173443](https://github.com/user-attachments/assets/2b9a7c21-237f-43b9-87f2-79ec429e6b1a)

7. Menginput 20 data dummy ke tabel penjual
```sql
INSERT INTO penjual (Nama_Penjual) VALUES
('Al Fatih'),
('Raziq'),
('Fazril'),
('Andi Ode'),
('Andhika'),
('Bambang'),
('Bima'),
('Chika'),
('Dimas'),
('Ernanda'),
('Fauzi'),
('Firman'),
('Kenan'),
('Lina'),
('Mirna'),
('Nabila'),
('Priska'),
('Rita Ora'),
('Sinta Uya'),
('Tiara');
```
![Screenshot 2024-12-31 173503](https://github.com/user-attachments/assets/575efc94-25bb-4f52-a0bd-3aa956e22f3b)
![Screenshot 2024-12-31 173512](https://github.com/user-attachments/assets/541a277a-bfa8-4c45-b7c4-53cc058f4602)

8. Menginput 20 data dummy ke tabel pembeli
```sql
INSERT INTO pembeli (NoTelp_Pembeli, Nama_Pembeli, Jumlah) VALUES
(62895403278340, 'Andini', 5000),
(6285899862153, 'Bisma', 10000),
(6289500999421, null, 15000),
(6285710750840, 'Krisna', 20000),
(6281382221356, 'Lisa', 30000),
(6285782277592, 'Bruno', 50000),
(6483818200604, 'Rose', 20000),
(6285259877688, 'Billi', 30000),
(6289645338911, null, 50000),
(6281735598282, 'Dinda', 10000),
(628952997931, 'Reza', 5000),
(6287859247680, 'Keiza', 20000),
(6286592675902, 'Eki', 50000),
(6285766246376, 'Pita', 20000),
(6285831520460, null, 10000),
(6287274500662, 'Asri', 30000),
(6285734675445, 'Ziva', 5000),
(628953287391, 'Yeri', 10000),
(6285800975422, 'Wendi', 20000),
(6289703058329, 'Audie', 30000);
```
![Screenshot 2024-12-31 173330](https://github.com/user-attachments/assets/15b0931d-830b-4096-a446-50fc012081d8)
![Screenshot 2024-12-31 173341](https://github.com/user-attachments/assets/5ea7022d-586c-498e-91c9-db1e25701eac)

9. Menginput 20 data dummy ke tabel transaksi
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 4, 1, 6281382221356, 'Berhasil', 32000),
(CURRENT_TIMESTAMP(), 17, 1, 6281735592882, 'Berhasil', 12000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 4, 2, 6282724050662, 'Gagal', 32000),
(CURRENT_TIMESTAMP(), 3, 2, 6282878907512, 'Berhasil', 22000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 17, 3, 6283357332189, 'Berhasil', 12000),
(CURRENT_TIMESTAMP(), 18, 3, 6283579023422, 'Berhasil', 22000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 9, 3, 6285259877688, 'Berhasil', 32000),
(CURRENT_TIMESTAMP(), 8, 3, 6285710750840, 'Berhasil', 22000),
(CURRENT_TIMESTAMP(), 6, 3, 6285743675445, 'Berhasil', 7000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 8, 4, 6285766246376, 'Berhasil', 22000),
(CURRENT_TIMESTAMP(), 10, 4, 6285782277592, 'Berhasil', 52000),
(CURRENT_TIMESTAMP(), 7, 4, 6285813520402, 'Gagal', 12000),
(CURRENT_TIMESTAMP(), 7, 4, 6285899862153, 'Berhasil', 12000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 10, 6, 6286692675902, 'Berhasil', 52000),
(CURRENT_TIMESTAMP(), 12, 6, 6289509099421, 'Gagal', 12000),
(CURRENT_TIMESTAMP(), 11, 7, 6289562997231, 'Berhasil', 7000);
```
```sql
INSERT INTO transaksi (Tanggal_Transaksi, ID_Barang, ID_Penjual, NoTelp_Pembeli, Status_Transaksi, Total_Bayar) VALUES
(CURRENT_TIMESTAMP(), 18, 7, 6483818206034, 'Berhasil', 22000),
(CURRENT_TIMESTAMP(), 11, 10, 62895403278340, 'Berhasil', 7000),
(CURRENT_TIMESTAMP(), 15, 10, 62896453382911, 'Berhasil', 52000),
(CURRENT_TIMESTAMP(), 14, 11, 62897030583829, 'Berhasil', 32000);
```
![Screenshot 2024-12-31 185131](https://github.com/user-attachments/assets/1a8ea19b-164f-4c9b-b8d4-1ad98b2118c0)
![Screenshot 2024-12-31 185141](https://github.com/user-attachments/assets/b0648b3c-8496-40b4-978c-7388f887680e)

10. Delete query
```sql
DELETE FROM `transaksi` WHERE ID_Transaksi = 40;
```
![Screenshot 2024-12-31 190229](https://github.com/user-attachments/assets/88560435-5699-4373-8955-b0d6cfda8eff)


11. Update query
```sql
UPDATE pembeli
SET NoTelp_Pembeli = 6283818206034
WHERE Nama_Pembeli = ‘Rose’;
```
![Screenshot 2025-01-05 194739](https://github.com/user-attachments/assets/821f663b-32fe-47b2-a38f-2ec93abc71ca)

12. Tiga user yang dapat mengakses database (fatih, raziy, fazril)







