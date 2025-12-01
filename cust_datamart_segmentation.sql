SELECT
    DISTINCT(cif) as cif,
    "Jenis_Kelamin",
    "Umur",
    "Range_Umur",
    "Status_Pernikahan",
    "Gaji",
    "Range_Gaji",
    "Pendidikan",
    "Kota",
    "Tipe_Customer",
    COUNT(DISTINCT "Nomor_Rekening") as Jumlah_Rekening,
    COUNT("Transaction_ID") as Jumlah_Transaksi,
    SUM("Nominal_Transaksi") as Jumlah_Nominal_Transaksi
FROM cust_datamart_transaction
GROUP BY
    "cif",
    "Jenis_Kelamin",
    "Umur",
    "Range_Umur",
    "Status_Pernikahan",
    "Gaji",
    "Range_Gaji",
    "Pendidikan",
    "Kota",
    "Tipe_Customer";
