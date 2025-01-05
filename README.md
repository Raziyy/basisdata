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





