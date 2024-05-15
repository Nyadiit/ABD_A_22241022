-- Nama : Aditya Priyanto Samrani
-- Nim : 22241022
-- MODUL 2

-- Nilai Literal

-- Menggunakan SELECT Statement untuk nilai literal untuk angka
SELECT 31 AS nomor_punggung;

-- Menampilkan nilai literasi beberapa tipe data
SELECT 31 AS angka, TRUE AS nilai_logika, 'DQLAB' as teks;

-- NULL

-- Menampilkan Null
SELECT NULL AS kosong;

-- Operator Matematika
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1, 5 DIV 2 AS hasl_bagi_2;


-- LATIHAN MANDIRI 1
SELECT 4*2 AS hasil_kali, (4*8)%7 hasil_kali_1, 4*8 MOD 7 hasil_kali_2, (4*8)/7 sisa_bagi;

SELECT  * FROM tr_penjualan_dqlab;

-- EKSPRESI MATEMATIKA

-- Menampilkan hasil kali dari kolom  qty dan harga

SELECT qty*harga AS total_bagi FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN

-- Menampilkan hasil perbandingan nilai literal
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- LATIHAN MANDIRI 2
SELECT 1=TRUE, 1=FALSE, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;

-- LATIHAN 
SELECT nama_produk, qty<=3 FROM tr_penjualan_dqlab tpd;

--FUNGSI

SELECT POW(3,2), ROUND(3.14), ROUND(3.54), ROUND(3.144, 1), ROUND(3.155, 2), FLOOR (4.28), FLOOR(4.78), CEILING(4.39), CEILING (4.55);

-- FUNGSI TANGGAL
SELECT NOW(),YEAR(NOW()),DATEDIFF(NOW(),'2003-07-05'),DAY('2003-07-05');

-- LATIHAN MANDIRI 3
SELECT DATEDIFF('2022-07-23',NOW()),
YEAR('2022-07-23'), MONTH ('2022-07-23'),
DAY ('2022-07-23'), YEAR(NOW());

-- Menampilkan selisih transaksi terakhir dengan tanggal saat ini
SELECT DATEDIFF(NOW(), tgl_transaksi) as Selisih
FROM tr_penjualan_dqlab tpd; 

-- PENYARINGAN/FILTERING (WHERE)

-- Mengambil nama produk yang quantity yang quantitynya lebih dari 3
SELECT 
	nama_produk, qty
FROM 
	tr_penjualan_dqlab tpd 
WHERE 	
	qty>3;

-- Mengambil nama_produk, qty yang qty > 3, dan transaksinya bulan 6
SELECT 
	nama_produk, qty
FROM 
	tr_penjualan_dqlab tpd 
WHERE 	
	qty>3 AND 
MONTH (tgl_transaksi)= 6;

-- Mengambil nama produk, qty dengan nama tertentu
SELECT 
	nama_produk, qty
FROM 
	tr_penjualan_dqlab tpd 
WHERE 	
	nama_produk = 'Flashdisk DQLab 32 GB';

-- LIKE 

-- Mengambil nama_produk yang berawalan huruf F
SELECT nama_produk FROM tr_penjualan_dqlab tpd WHERE nama_produk LIKE 'f%';

-- LAIHAN MANDIRI 4
SELECT nama_produk FROM tr_penjualan_dqlab tpd WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab mpd WHERE mpd.kategori_produk LIKE '%t%';
SELECT kategori_produk FROM ms_produk_dqlab mpd WHERE mpd.kategori_produk LIKE '%un%';

-- OPERATOR LOGIKA

-- AND
SELECT nama_produk FROM tr_penjualan_dqlab tpd WHERE nama_produk LIKE 'f%' AND qty>2;

-- OR
SELECT nama_produk FROM tr_penjualan_dqlab tpd WHERE nama_produk LIKE 'f%' OR qty>2;











