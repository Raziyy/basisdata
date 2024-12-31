# Tugas Akhir Basis Data 
Disusun Oleh Kelompok 9 :
1. Fazril Fadhilah   - 4523210
2. Muhammad Al Fatih - 4523210135
3. Raziy Ibrahim     - 4523210138

# Rancang Database
a.	Identifikasi entitas utama, atribut, dan relasi antar entitas
1. Penjual
   Atribut : ID_Penjual (int, Primary Key), Nama_Penjual (varchar(100))
2. Barang
   Atribut : ID_Barang (int, Primary Key), Nama_Barang (varchar(100)), Harga_Barang (bigint)
3. Pembeli
   NoTelp_Pembeli (bigint, Primary Key), Nama_Pembeli (varchar(100)), Jumlah (bigint)
4. Transaksi
   Atribut: ID_Transaksi (int, Primary Key), Tanggal_Transaksi (timestamp), ID_Barang (int, Foreign Key ke Barang), ID_Penjual (int, Foreign Key ke Penjual), NoTelp_Pembeli (bigint, Foreign Key ke Pembeli), Status_Transaksi (enum: 'Berhasil', 'Proses', 'Gagal'), Total_Bayar (bigint)

# Relasi Antar Entitas
1. Penjual ke Transaksi
Satu ke Banyak (One-to-Many)
Setiap penjual dapat melakukan banyak transaksi, tetapi satu transaksi hanya melibatkan satu penjual.

2. Barang ke Transaksi
Satu ke Banyak (One-to-Many)
Setiap barang dapat terlibat di banyak transaksi, tetapi satu transaksi hanya mencatat satu barang.

3. Pembeli ke Transaksi
Satu ke Banyak (One-to-Many)
Setiap pembeli dapat melakukan banyak transaksi, tetapi satu transaksi hanya mencatat satu pembeli.

# ERD 
![WhatsApp Image 2024-12-31 at 22 08 33_9f277ba7](https://github.com/user-attachments/assets/cd8ef110-3fed-4b22-bd2d-86a390b381fa)

# Step by Step Pembuatan Database

*Membuat Database Toko_Pulsa lalu memakainya untuk membuat semua tabel yang ada.
![WhatsApp Image 2024-12-31 at 11 24 46_d645b9b8](https://github.com/user-attachments/assets/94ac3a6a-cddb-453c-8dc9-62f7e77eba33)

* Membuat Tabel Pembeli yang membuat NoTelp_Pembeli sebagai Primary key.
![WhatsApp Image 2024-12-31 at 11 24 45_9d9dfc6f](https://github.com/user-attachments/assets/48d54683-c0ad-410a-ac33-a612b20dfd20)

* Membuat Tabel Penjual yang memuat ID_Penjual sebagai Primary Key.
![WhatsApp Image 2024-12-31 at 11 24 45_5bf53375](https://github.com/user-attachments/assets/54f5f10a-0c18-48c5-b71e-05ea65908f43)
![WhatsApp Image 2024-12-31 at 11 24 45_5431f49c](https://github.com/user-attachments/assets/31f5efd9-7b77-4918-adab-e841808996f3)


* Membuat Tabel Barang yang memuat ID_Barang sebagai Primary Key.
![WhatsApp Image 2024-12-31 at 11 24 45_bf96fe57](https://github.com/user-attachments/assets/71da26a3-89d4-4681-8cf9-4c65c0831ae1)
![WhatsApp Image 2024-12-31 at 11 24 45_825038e2](https://github.com/user-attachments/assets/61b3358d-5a77-4983-8ef6-abd3090d153e)

* Membuat Tabel Transaksi yang memuat ID_Transaksi sebagai Primary Key, dan memiliki beberapa Foriegn Key yaitu (NoTelp_Pembeli dari tabel Pembeli, ID_Penjual dari tabel penjual dan, ID_Barang dari tabel barang)
![WhatsApp Image 2024-12-31 at 11 24 46_f6d8530b](https://github.com/user-attachments/assets/bc5d6aa6-a145-4016-8e47-439035c76710)
![WhatsApp Image 2024-12-31 at 11 24 46_2dfff790](https://github.com/user-attachments/assets/57689d25-41e4-4728-99ed-728e89129662)





