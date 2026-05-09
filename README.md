# Dokumentasi Database: db_praktik_loop

Proyek ini berisi struktur tabel dan kumpulan **Stored Procedures** untuk mempraktikkan logika perulangan (*looping*) di MySQL/MariaDB.

## 📋 Detail Database
- **Nama Database:** `db_praktik_loop`
- **Engine:** InnoDB
- **Karakter Set:** utf8mb4

---

## 🏗️ Struktur Tabel

### 1. Tabel `mahasiswa`
Digunakan untuk menyimpan data dasar mahasiswa.
| Kolom | Tipe Data | Keterangan |
| :--- | :--- | :--- |
| `nim` | VARCHAR(15) | Primary Key |
| `nama` | VARCHAR(100) | Nama Lengkap |
| `jurusan` | VARCHAR(50) | Default: 'Informatika' |
| `angkatan`| INT(11) | Tahun Angkatan |

---

## ⚙️ Stored Procedures (Logika Loop)

Terdapat 4 prosedur yang mendemonstrasikan berbagai tipe perulangan:

### 1. `latihan_loop_10`
Menggunakan tipe dasar `LOOP` untuk menampilkan angka 1 sampai 10.
- **Logika:** Bertambah 1 tiap putaran dan berhenti (`LEAVE`) saat melewati angka 10.
- **Cara Panggil:** `CALL latihan_loop_10();`

### 2. `tampil_genap_20`
Menggunakan `WHILE` loop untuk menampilkan deret bilangan genap.
- **Logika:** Dimulai dari 2, bertambah 2 selama nilai $\le 20$.
- **Cara Panggil:** `CALL tampil_genap_20();`

### 3. `hitung_total_20`
Menghitung akumulasi jumlah total angka dari 1 hingga 20.
- **Logika:** Menggunakan `WHILE`, melakukan penjumlahan $1+2+3...+20$.
- **Hasil Akhir:** 210.
- **Cara Panggil:** `CALL hitung_total_20();`

### 4. `hitung_belanja`
Simulasi penambahan saldo belanja hingga mencapai target tertentu.
- **Logika:** Menambah Rp50.000 setiap iterasi sampai total mencapai Rp500.000.
- **Cara Panggil:** `CALL hitung_belanja();`

---

## 🚀 Cara Import ke Database
1. Buka **phpMyAdmin** atau terminal MySQL.
2. Buat database baru: 
   ```sql
   CREATE DATABASE db_praktik_loop;
