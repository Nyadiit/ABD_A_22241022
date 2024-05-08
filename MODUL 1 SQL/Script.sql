-- Nama : Aditya Priyanto Samrani
-- Nim : 22241022
-- MODUL 1 



-- SELECT : Mengambil 1 kolom Table
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT: Mengambil lebih dari 1 Kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT: Mengambil semua kolom
SELECT * FROM ms_produk_dqlab;


-- LATIHAN
-- Mengambil kode produk, nama produk, dari tabel produk
SELECT kode_produk, nama_produk  FROM ms_produk_dqlab;


-- Mengambil semua kolom dari tabel penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX DAN ALIAS
-- Ambil nama produk dengan prefix
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Ambil nama produk dengan prefix database - tabel
SELECT Mart_Undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Alias pada colom dengan AS
SELECT nama_produk as np FROM ms_produk_dqlab;

-- Alias pada colom tanpa AS
SELECT nama_produk np FROM ms_produk_dqlab;

-- Alias pada tabel dengan AS
SELECT nama_produk FROM ms_produk_dqlab AS mpd;

-- Alias pada tabel tanpa AS
SELECT nama_produk FROM ms_produk_dqlab mpd;

-- Penggunaan alias dan prefix
SELECT mpd.nama_produk np FROM ms_produk_dqlab mpd;


-- CASE 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab mpd;

-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab mpd; 
