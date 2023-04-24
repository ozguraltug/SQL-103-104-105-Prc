CREATE TABLE ogrenciler (
    id INTEGER PRIMARY KEY,
    isim VARCHAR(255),
    adres VARCHAR(255),
    notu int
);

INSERT INTO ogrenciler (id, isim, adres, notu) VALUES
(1, 'Ahmet Yılmaz', 'Ankara', 80),
(2, 'Burcu Öztürk', 'İstanbul', 90),
(3, 'Cemal Doğan', 'İzmir', 70),
(4, 'Deniz Arslan', 'Adana', 85),
(5, 'Ebru Kaya', 'Bursa', 95),
(6, 'Fatih Demir', 'Antalya', 65),
(7, 'Gizem Tekin', 'Konya', 75);

select * from ogrenciler

--Soru 1: Öğrenciler tablosundaki id ve isim sütununu getiriniz

select id,isim from ogrenciler;

--Soru 2: Sınav notu 80 den büyük olan öğrencilerin tüm bilgilerini listele

select * from ogrenciler where notu>80;