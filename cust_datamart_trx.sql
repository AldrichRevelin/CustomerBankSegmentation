SELECT
	cd.cif as cif,
	cd.gender as "Jenis_Kelamin",
	cd.umur as "Umur",
	cd.range_umur as "Range_Umur",
	cd.marital_status as "Status_Pernikahan",
	cd.gaji as "Gaji",
	cd.range_gaji as "Range_Gaji",
	cd.education_level as "Pendidikan",
	cd.city as "Kota",
	cd.customer_type as "Tipe_Customer",
	ca.account_number as "Nomor_Rekening",
	ca.account_type as "Tipe_Rekening",
	ca.open_date as "Tanggal_Pembuatan_Rekening",
	ca.open_channel as "Channel_Pembukaan_Rekening",
	ct.transaction_id as "Transaction_ID",
	ct.transaction_date as "Tanggal_Transaksi",
	ct.transaction_amount as "Nominal_Transaksi",
	ct.transaction_channel as "Channel_Transaksi",
	ct.merchant_category as "Kategori_Merchant",
	ct.card_base as "Card Base"
FROM cust_demography cd 
JOIN cust_account ca on cd.cif = ca.cif 
JOIN cust_transaction ct on cd.cif = ct.cif and ca.account_number = ct.account_number
ORDER BY RANDOM()
