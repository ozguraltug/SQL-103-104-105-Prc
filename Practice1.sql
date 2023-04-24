CREATE TABLE ogrenciler (
    ogrenci_no INTEGER PRIMARY KEY,
    isim_soyad VARCHAR(255),
    adres VARCHAR(255),
    notu FLOAT
);

INSERT INTO ogrenciler (ogrenci_no, isim_soyad, adres, notu) VALUES
(1, 'Ahmet Yılmaz', 'Ankara', 80),
(2, 'Burcu Öztürk', 'İstanbul', 90),
(3, 'Cemal Doğan', 'İzmir', 70),
(4, 'Deniz Arslan', 'Adana', 85),
(5, 'Ebru Kaya', 'Bursa', 95),
(6, 'Fatih Demir', 'Antalya', 65),
(7, 'Gizem Tekin', 'Konya', 75);

