-- Nama : Aditya Priyanto Samrani
-- Nim : 22241022
-- MODUL 3

-- Menggunakan database

-- Order by
SELECT * FROM tr_penjualan_dqlab tpd ORDER BY qty; 

-- Menganmbil nma produk  dan qty urutkan berdasarkan qty
SELECT nama_produk, qty  FROM tr_penjualan_dqlab tpd ORDER BY qty; 

-- Pengambilan nama produk dan qty urutkan berdasarkan  qty diikuti dengan nama produk
SELECT nama_produk, qty  FROM tr_penjualan_dqlab tpd  ORDER BY qty, nama_produk;  

-- Latihan mandiri 1
SELECT * FROM tr_penjualan_dqlab tpd  ORDER BY qty, tgl_transaksi;

SELECT * FROM ms_pelanggan_dqlab mpd  ORDER By nama_pelanggan;

SELECT * FROM ms_pelanggan_dqlab mpd  ORDER BY alamat; 

-- Mengambil nama produk dan qty urutkan berdasarkan qty besar ke kecil
SELECT nama_produk, qty  FROM tr_penjualan_dqlab tpd  ORDER BY qty DESC;

-- Mengambil nama produk dan qty berdasarkan qty besar ke kecil, nama produk kecil ke besar
SELECT nama_produk, qty  FROM tr_penjualan_dqlab tpd  ORDER BY qty DESC, nama_produk;

-- latihan mandiri 2
SELECT * FROM tr_penjualan_dqlab tpd  ORDER BY tgl_transaksi DESC, qty;
SELECT * FROM ms_pelanggan_dqlab mpd  ORDER BY nama_pelanggan  DESC;
SELECT * FROM ms_pelanggan_dqlab mpd  ORDER BY alamat  DESC;

-- Menggunakan hasil perhitungan pada order by

-- Mengambil  nama produk, qty, harga, dan total_bayar urutkan berdasarkan total bayar besar kekecil
SELECT nama_produk, qty, harga, qty*harga AS total_bayar FROM tr_penjualan_dqlab tpd  ORDER BY total_bayar DESC;

-- Latihan mandiri 3
SELECT nama_produk, qty, harga, diskon_persen, (diskon_persen/100)*harga AS diskon, qty*(harga - (diskon_persen/100)*harga) AS total_bayar FROM tr_penjualan_dqlab ORDER BY total_bayar DESC;

-- WHERE DAN ORDER BY

-- Mengambil nama produk qty dari produk berawalan f berdasarkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab tpd WHERE  nama_produk  like 'f%' ORDER BY qty DESC;

-- Latihan mandiri 4
SELECT * FROM tr_penjualan_dqlab tpd WHERE diskon_persen !=0 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab tpd  WHERE harga>= 100000 ORDER BY harga DESC;
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab tpd  WHERE harga>= 100000 OR nama_produk like 't%' ORDER BY diskon_persen DESC;


-- Fungsi Agrerasi
-- hitung jumlah nilai dari seluruh row ditabel penjualan
SELECT SUM(qty)AS total_qty from tr_penjualan_dqlab tpd;

-- hitung jumlah selurh row pada rabel penjualan
SELECT count(*) as jumlah_row from tr_penjualan_dqlab tpd;

-- hitung penjumlahan nilai qt dan jumlah seluruh row pada tabel penjualan
SELECT sum(qty), count(*) from tr_penjualan_dqlab tpd;

-- hitung rata-rata nilai max dan nilai min dari qty pada tabel penjualan
SELECT avg(qty), max(qty), min(qty) from tr_penjualan_dqlab tpd;

-- hitung jumlah nilai unik dari nama produk di tabel penjualan
SELECT COUNT(DISTINCT nama_produk)from tr_penjualan_dqlab tpd;
SELECT count(nama_produk) from tr_penjualan_dqlab tpd;

-- hitung jumlah nilai unik dan seluruh row dari tabel penjualan
SELECT count(*), count(distinct nama_produk) from tr_penjualan_dqlab tpd;

-- menampilkaqn field nama produk dan fungsi maxsimum  qty dari tabel penjuala
SELECT nama_produk, max(qty) from tr_penjualan_dqlab tpd;

-- Group By
-- ambil hasil pengelompokan nilai kolom nama produk di tabel penjualan
SELECT nama_produk from tr_penjualan_dqlab tpd group by nama_produk;

-- ambil hasil pengelompokan dari nama produk dan qty di tabel penjualan
SELECT nama_produk, qty from tr_penjualan_dqlab tpd group by nama_produk, qty;

-- ambil jumlah hasil penjumlahan qty dari pengelompokkan nama produk terhadap semua row ditabel penjualan
SELECT nama_produk, sum(qty) from tr_penjualan_dqlab tpd group by nama_produk order by sum(qty) DESC; 

-- ambil jumlah qty yang lebih > 2 dari hasil pengelompokkan nama produk di tabel penjualan
SELECT nama_produk, sum(qty)from tr_penjualan_dqlab tpd  group by nama_produk having sum(qty)>2;

-- Latihan Mandiri 5
SELECT nama_produk, sum(qty) from tr_penjualan_dqlab tpd group by nama_produk having sum(qty)>4;
SELECT nama_produk,sum(qty)from tr_penjualan_dqlab tpd group by nama nama_produk having sum(qty)9;
SELECT nama_produk, qty*(harga - (diskon_persen/100)*harga) AS nilai from tr_penjualan_dqlab group by nama_produk, nilai order by nilai desc ; 







