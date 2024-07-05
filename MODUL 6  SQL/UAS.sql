-- Nama : Aditya Priyanto Samrani
-- Nim : 22241022
-- UAS

-- 1
SELECT nama_produk, qty*(harga - (diskon_persen/100)*harga) AS pendapatan 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk, pendapatan 
ORDER BY pendapatan DESC 
limit 5;

-- 2
SELECT np.kategori_produk, 
SUM(tp.qty * (tp.harga - ( tp.diskon_persen / 100)* tp.harga)) AS pendapatan,
 CASE
 	WHEN SUM(tp.qty * (tp.harga - ( tp.diskon_persen / 100)* tp.harga)) >=900000 THEN 'target achieved' 
 	WHEN SUM(tp.qty * (tp.harga - ( tp.diskon_persen / 100)* tp.harga)) < 900000 THEN 'less performance'
 END AS status
FROM tr_penjualan_dqlab tp
JOIN ms_produk_dqlab np
ON tp.kode_produk = np.kode_produk
GROUP BY np.kategori_produk
HAVING status = 'target achieved'
LIMIT 3;

-- 3
SELECT mp.nama_produk, 
       MAX(tp.tgl_transaksi) AS tanggal_pembelian_terakhir,
       COALESCE(DATEDIFF('2020-06-30', MAX(tp.tgl_transaksi)), 
				DATEDIFF('2020-06-30', '2020-06-30')) AS hari_sejak_pembelian_terakhir
FROM ms_produk_dqlab AS mp
LEFT JOIN tr_penjualan_dqlab AS tp ON mp.kode_produk = tp.kode_produk
GROUP BY mp.kode_produk, mp.nama_produk
ORDER BY hari_sejak_pembelian_terakhir DESC
LIMIT 3;
 
