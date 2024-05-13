create database galeri

use galeri

create table Musteri(
mNo int identity(1,1) Primary Key,
mAd nvarchar(15), 
mSoyad nvarchar(15),
mAdres nvarchar(30),
mTelefon varchar(15),
);

insert into Musteri values('Turgut','Ozseven','Tokat/Turhal',121646516416);
insert into Musteri values('Mustafa','Caglayan','Meram/Konya',465245212323);
insert into Musteri values('Ahmet','Kara','Zile/Tokat',472376298362);
insert into Musteri values('Murat','Beyaz','Turhal/Tokat',385235293859);
insert into Musteri values('Elif','Kurt','Besiktas/Istanbul',948752835293);
insert into Musteri values('Ayse','Ucar','Tasova/Amasya',487394698292);
insert into Musteri values('Bulent','Ayar','Turhal/Tokat',232378572352);

create table Arac(
aNo int identity(1,1) Primary Key,
model varchar(4),
marka nvarchar(15),
plaka nvarchar(20),
fiyat varchar(15),
);

insert into Arac values(2004,'Fiat Marea','38 VTYS 3838',100000);
insert into Arac values(2020,'Renault Megane','38 VTYS 3839',110000);
insert into Arac values(2010,'Ford Focus','38  VTYS 3840',120000);
insert into Arac values(2023,'Volkswagen Golf','38  VTYS 3841',250000);
insert into Arac values(2000,'Opel Astra','38  VTYS 3842',82000);

create table Satis(
satNo int identity(1,1) Primary Key,
mNo int Foreign Key references Musteri(mNo),
aNo int Foreign Key references Arac(aNo),
satTarih date,
Sfiyat varchar(15),
);

insert into Satis values(1,1,'04.05.2022',170000);
insert into Satis values(4,5,'01.06.2020',115000);
insert into Satis values(7,4,'11.06.2023',270000);
insert into Satis values(2,1,'02.07.2010',17500);

create table Alis(
alisNo int identity(1,1) Primary Key,
mNo int Foreign Key references Musteri(mNo),
aNo int Foreign Key references Arac(aNo),
alisTarih date,
Afiyat varchar(15),
);

insert into Alis values(3,1,'04.05.2022',170000);
insert into Alis values(6,1,'01.06.2020',525000);
insert into Alis values(2,5,'06.15.2023',370000);
insert into Alis values(1,2,'02.07.2010',17500);
insert into Alis values(5,3,'08.22.2021',156800);
