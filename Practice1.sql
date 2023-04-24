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

--Soru 3:Adresi Ankara olan öğrencilerin tüm bilgilerini getir

select * from ogrenciler where adres='Ankara'

--Soru 4: Sınav notu 80 ve adresi Ankara Olan öğrenci ismini getirsin

select isim from ogrenciler where notu='80' and adres='Ankara'

--Soru 5: Sınav notu 65 veya 80 olan öğrencilerin tüm bilgilerini listeleme

select * from ogrenciler where notu=65 or notu=80

select * from ogrenciler where notu in (65,80);

--Soru 6: Notu 65 ile 85 arasında olan öğrencilerin tüm bilgilerini listeleyin

select * from ogrenciler where notu between 65 and 85;

--Soru 7: id si 2 ile 4 arasında olmayan öğrencilerin isim ve notunu listeleyiniz

select id,isim,notu from ogrenciler where id not between 2 and 4; 

--Soru 8: notu 80 olan satırı siliniz

delete from ogrenciler where notu=75;

--Soru 9: Adresi Adana olan satırı siliniz

delete from ogrenciler where adres='Adana'

--Soru 10: ismi Burcu Öztürk veya Fatih Demir olanları sil

delete from ogrenciler where isim='Burcu Öztürk' or isim='Fatih Demir'

--Soru 11: notu 80 den küçük olanları siliniz

delete from ogrenciler where notu<80;

--Soru 12: Tablolardaki tüm satırları siliniz

delete from ogrenciler;

/*SORU: memurlar isminde bir tablo oluşturunuz. id, isim, maas sutunları olsun.
id sutununun data tipi int olsun. PRIMARY KRY kısıtlaması olsun.
isim sutununun data tipi varchar (30) olsun. UNIQUE kısıtlaması olsun.
maas sutununun data tipi int olsun. maas 5000 buyuk olsun. NOT NULL kısıtlaması olsun.*/

CREATE TABLE memurlar (
    id int PRIMARY KEY,
    isim varchar(30) UNIQUE,
    maas int NOT NULL CHECK (maas > 5000)
);

/*SORU: insanlar isminde bir tablo oluşturunuz. isim, soyisim sutunları olsun.
isim sutununun data tipi int olsun. PRIMARY KEY kısıtlaması olsun. Kısıtlamanın ismi pr_ks olsun
soyisim sutununun data tipi varchar (30) olsun. UNIQUE kısıtlaması olsun. Kısıtlamanın ismi uni_ks olsun*/

CREATE TABLE insanlar (
    isim int CONSTRAINT pr_ks PRIMARY KEY,
    soyisim varchar(30) CONSTRAINT uni_ks UNIQUE
);

