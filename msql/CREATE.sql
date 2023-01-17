USE [hurtownia-danych]

CREATE TABLE [danie] (
	[id_dania] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[nr_dania] int NOT NULL,
	[nazwa] varchar(100) NOT NULL,
	[przedzial_cenowy] varchar(100) NOT NULL
	CHECK ([przedzial_cenowy] in ('tanie','niedrogie','typowe','drogie','absurdalne'))
)
GO

CREATE TABLE [klikniecia] (
	[liczba_klikniec] int NOT NULL,
	[id_daty] int NOT NULL,
	[id_reklamy] int NOT NULL,
	PRIMARY KEY ([id_daty], [id_reklamy])
)
GO

CREATE TABLE [klikniecia_w_trakcie_promocji] (
	[liczba_klikniec] int NOT NULL,
	[id_daty] int NOT NULL,
	[id_reklamy] int NOT NULL,
	[id_promocji] int NOT NULL,
	PRIMARY KEY ([id_daty], [id_reklamy], [id_promocji])
)
GO

CREATE TABLE [reklama] (
	[id_reklamy] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[koszt] money NOT NULL,
	[nr_reklamy] int NOT NULL,
	[id_serwisu_reklamowego] int NOT NULL,
	[id_daty_rozpoczecia] int NOT NULL,
	[id_daty_zakonczenia] int NOT NULL
)
GO

CREATE TABLE [promocja] (
	[id_promocji] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[cena_objetego_dania] money NOT NULL,
	[liczba_dni] int NOT NULL,
	[liczba_objetych_zamowien] int NOT NULL,
	[wartosc_procentowa] numeric NOT NULL,
	[upust] money NOT NULL,
	[nazwa] varchar(100) NOT NULL,
	[nr_promocji] int NOT NULL,
	[id_daty_rozpoczecia] int NOT NULL,
	[id_daty_zakonczenia] int NOT NULL,
	[id_dania] int NOT NULL
)
GO

CREATE TABLE [data] (
	[id_daty] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[rok] varchar(10) NOT NULL,
	[kwartal] varchar(2) NOT NULL,
	[miesiac] varchar(11) NOT NULL,
	[dzien] varchar(2) NOT NULL,
	CHECK ([kwartal] in ('Q1', 'Q2', 'Q3', 'Q4')),
	CHECK ([miesiac] in ('styczeń','luty','marzec','kwiecień','maj','czerwiec','lipiec','sierpień','wrzesień','październik','listopad','grudzień')),
	CHECK ([dzien] in ('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16',
						'17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'))
)
GO

CREATE TABLE [serwis_reklamowy] (
	[id_serwisu_reklamowego] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[nazwa] varchar(100) NOT NULL
)
GO

CREATE TABLE [zamowienie] (
	[nr_zamowienia] int NOT NULL,
	[liczba_zamowionego_dania] int NOT NULL,
	[cena_pojedynczego_dania] money NOT NULL,
	[laczna_cena] money NOT NULL,
	[czy_objete_promocja] int NOT NULL,
	[liczba_wykorzystan_promocji] int NOT NULL,
	[id_dania] int NOT NULL,
	[id_uzytkownika] int NOT NULL,
	[id_daty] int NOT NULL,
	PRIMARY KEY ([id_dania], [id_uzytkownika], [id_daty]),
	CHECK ([czy_objete_promocja] in (0, 1))
)
GO

CREATE TABLE [uzytkownik] (
	[id_uzytkownika] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[imie_nazwisko] varchar(100) NOT NULL,
	[nr_kierunkowy] varchar(10) NOT NULL,
	[nr_telefonu] varchar(10) NOT NULL
)
GO

ALTER TABLE [promocja] ADD FOREIGN KEY ([id_daty_rozpoczecia]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [promocja] ADD FOREIGN KEY ([id_daty_zakonczenia]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [promocja] ADD FOREIGN KEY ([id_dania]) REFERENCES [danie] ([id_dania])
GO

ALTER TABLE [klikniecia] ADD FOREIGN KEY ([id_daty]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [klikniecia] ADD FOREIGN KEY ([id_reklamy]) REFERENCES [reklama] ([id_reklamy])
GO

ALTER TABLE [reklama] ADD FOREIGN KEY ([id_daty_rozpoczecia]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [reklama] ADD FOREIGN KEY ([id_daty_zakonczenia]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [reklama] ADD FOREIGN KEY ([id_serwisu_reklamowego]) REFERENCES [serwis_reklamowy] ([id_serwisu_reklamowego])
GO

ALTER TABLE [zamowienie] ADD FOREIGN KEY ([id_dania]) REFERENCES [danie] ([id_dania])
GO

ALTER TABLE [zamowienie] ADD FOREIGN KEY ([id_uzytkownika]) REFERENCES [uzytkownik] ([id_uzytkownika])
GO

ALTER TABLE [zamowienie] ADD FOREIGN KEY ([id_daty]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [klikniecia_w_trakcie_promocji] ADD FOREIGN KEY ([id_daty]) REFERENCES [data] ([id_daty])
GO

ALTER TABLE [klikniecia_w_trakcie_promocji] ADD FOREIGN KEY ([id_reklamy]) REFERENCES [reklama] ([id_reklamy])
GO

ALTER TABLE [klikniecia_w_trakcie_promocji] ADD FOREIGN KEY ([id_promocji]) REFERENCES [promocja] ([id_promocji])
GO
