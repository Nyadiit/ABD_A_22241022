-- Nama : Aditya Priyanto Samrani
-- Nim : 22241022
-- MODUL 5


-- JOIN
-- Tampilkan nama pelanggan dan qty belanjanya
SELECT mp.nama_pelanggan, tp.qty FROM tr_penjualan_dqlab AS tp 
JOIN ms_pelanggan_dqlab AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Join tanpa filtering ON = CROSS JOIN
SELECT mp.nama_pelanggan, tp.qty FROM tr_penjualan_dqlab AS tp 
JOIN ms_pelanggan_dqlab AS mp
ON true;

-- Inearjoin
SELECT mp.nama_pelanggan, tp.qty FROM tr_penjualan_dqlab AS tp 
INNER JOIN ms_pelanggan_dqlab AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- LEFT OUTHER JOIN
SELECT mp.nama_pelanggan, tp.qty FROM tr_penjualan_dqlab AS tp 
LEFT JOIN ms_pelanggan_dqlab AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- RIGHT OUTHER JOIN
SELECT mp.nama_pelanggan, tp.qty FROM tr_penjualan_dqlab AS tp 
RIGHT JOIN ms_pelanggan_dqlab AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Join 3 tabel 
SELECT tp.kode_pelanggan,mp.nama_pelanggan, mpd.kategori_produk, mpd.nama_produk, tp.qty 
FROM ms_pelanggan_dqlab AS mp 
LEFT OUTER JOIN tr_penjualan_dqlab AS tp
ON tp.kode_pelanggan = mp.kode_pelanggan
LEFT OUTER JOIN ms_produk_dqlab mpd
ON mpd.kode_produk = tp.kode_produk;

-- ORDER BY pada JOIN
-- Urutkan berdasarkan  qty
SELECT tp.kode_pelanggan,mp.nama_pelanggan, mpd.kategori_produk, mpd.nama_produk, tp.qty 
FROM ms_pelanggan_dqlab AS mp 
LEFT OUTER JOIN tr_penjualan_dqlab AS tp
ON tp.kode_pelanggan = mp.kode_pelanggan
LEFT OUTER JOIN ms_produk_dqlab mpd
ON mpd.kode_produk = tp.kode_produk
ORDER BY qty DESC;


-- Grouping  dan FUNGSI Agrerasi
-- Menampilkan summary dari total produk terjual
SELECT mpd.kategori_produk, mpd.nama_produk, sum(tp.qty)AS jml_produk_terjual 
FROM ms_produk_dqlab AS mpd LEFT JOIN tr_penjualan_dqlab AS tp 
ON mpd.kode_produk = tp.kode_produk GROUP BY mpd.kategori_produk, mpd.nama_produk 
ORDER BY sum(tp.qty) DESC;

SELECT mpd.kategori_produk, mpd.nama_produk, sum(tp.qty)AS jml_produk_terjual 
FROM ms_produk_dqlab AS mpd LEFT JOIN tr_penjualan_dqlab AS tp 
ON mpd.kode_produk = tp.kode_produk GROUP BY mpd.kategori_produk, mpd.nama_produk
HAVING sum(tp.qty) IS NULL
ORDER BY sum(tp.qty) DESC;

-- UNION 
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab mpd 
UNION
SELECT kode_pelanggan, nama_pelanggan
FROM ms_pelanggan_dqlab mpd 

-- Union dengan nilai konstanta
SELECT 'produkam' AS kategori, nama_produk AS nama
	FROM ms_produk_dqlab 
UNION 
SELECT 'pelanggan', nama_pelanggan 
	FROM ms_pelanggan_dqlab; 

-- Union tabel yang sama
SELECT kode_produk, nama_produk 
	FROM ms_produk_dqlab 
UNION 
SELECT kode_produk, nama_produk 
	FROM ms_produk_dqlab; 

-- Union tabel yang berbeda dengan hasil yang unik
SELECT nama_produk 
	FROM ms_produk_dqlab 
UNION 
SELECT nama_produk 
	FROM tr_penjualan_dqlab;

-- Union All dengan tabel yang sama
SELECT kode_produk, nama_produk 
	FROM ms_produk_dqlab 
UNION ALL
SELECT kode_produk, nama_produk 
	FROM ms_produk_dqlab; 

-- Union all dengan tabel yang berbeda
SELECT nama_produk 
	FROM ms_produk_dqlab 
UNION ALL
SELECT nama_produk 
	FROM tr_penjualan_dqlab; 

-- LIMIT
SELECT nama_produk 
	FROM ms_produk_dqlab 
UNION ALL
SELECT nama_produk 
	FROM tr_penjualan_dqlab LIMIT 1
	
-- Latihan Mandiri 1
SELECT tp.kode_pelanggan, mp.nama_pelanggan,mpd.kategori_produk, mpd.nama_produk, tp.qty 
FROM ms_pelanggan_dqlab AS mp 
INNER JOIN tr_penjualan_dqlab AS tp
ON tp.kode_pelanggan  = mp.kode_pelanggan
INNER JOIN ms_produk_dqlab mpd
ON mpd.kode_produk = tp.kode_produk;

-- LATIHAN MANDIRI 2
SELECT tp.kode_pelanggan, mp.nama_pelanggan,mpd.kategori_produk, mpd.nama_produk, tp.qty
FROM ms_pelanggan_dqlab AS mp 
LEFT JOIN tr_penjualan_dqlab AS tp 
ON mp.kode_pelanggan = tp.kode_pelanggan 
LEFT JOIN ms_produk_dqlab mpd 
ON mpd.kode_produk = tp.kode_produk
WHERE tp.qty IS NOT NULL;

-- LATIHAN MANDIRI 3
SELECT mpd.kategori_produk, sum(tp.qty) AS total_qty
FROM ms_pelanggan_dqlab AS mp 
INNER JOIN tr_penjualan_dqlab AS tp 
ON mp.kode_pelanggan = tp.kode_pelanggan 
INNER JOIN ms_produk_dqlab AS mpd 
ON mpd.kode_produk = tp.kode_produk
GROUP BY mpd.kategori_produk
ORDER BY total_qty DESC;

-- LATIHAN MANDIRI 4
SELECT mp.kategori_produk, mpd.nama_produk
FROM ms_produk_dqlab AS mp 
INNER JOIN ms_produk_dqlab AS mpd
ON mp.kode_produk = mpd.kode_produk
ORDER BY mp.kategori_produk DESC;





