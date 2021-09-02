CREATE TABLE [dbo].[Detailed](
	[horse_power] [int] NULL,
	[engine_cc] [int] NULL,
	[design] [nchar](10) NULL,
	[color] [nchar](10) NULL,
	[modell_id] [int] NOT NULL,
	[manufactured] [datetime] NOT NULL
)

CREATE TABLE [dbo].[Manufacturers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
	[place] [nvarchar](50) NOT NULL,
	[established_at] [datetime] NOT NULL
)

CREATE TABLE [dbo].[Models](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[manufacturer_id] [int] NOT NULL
)

/*
    Data Insert
*/
INSERT INTO dbo.Manufacturers
VALUES ('Volkswagen', 'Wolfsburg', '1937-05-28')
INSERT INTO dbo.Manufacturers
VALUES ('Renault', 'Boulogne-Billancourt', '1898-10-01')
INSERT INTO dbo.Manufacturers
VALUES ('Volvo', 'Göteborg', '1927-04-14')
INSERT INTO dbo.Manufacturers
VALUES ('Fiat', 'Torino', '1899-07-11')


INSERT INTO dbo.Models
VALUES ('Golf', 1)
INSERT INTO dbo.Models
VALUES ('Polo', 1)
INSERT INTO dbo.Models
VALUES ('Clio', 2)
INSERT INTO dbo.Models
VALUES ('Fluence', 2)
INSERT INTO dbo.Models
VALUES ('V40', 3)
INSERT INTO dbo.Models
VALUES ('V60', 3)
INSERT INTO dbo.Models
VALUES ('500', 4)
INSERT INTO dbo.Models
VALUES ('Doblo', 4)

INSERT INTO dbo.Detailed
VALUES (75, 1390, 'Variant', 'grey', 1, '2004-01-01')
INSERT INTO dbo.Detailed
VALUES (120, 1560, 'Sedan', 'red', 2, '2007-01-01')
INSERT INTO dbo.Detailed
VALUES (160, 1780, 'SUV', 'blue', 3, '2002-01-01')
INSERT INTO dbo.Detailed
VALUES (115, 1440, 'Compact', 'white', 4, '2009-01-01')
INSERT INTO dbo.Detailed
VALUES (120, 1550, 'Variant', 'black', 5, '2005-01-01')
INSERT INTO dbo.Detailed
VALUES (175, 1940, 'Variant', 'grey', 6, '2007-01-01')
INSERT INTO dbo.Detailed
VALUES (70, 1350, 'Sedan', 'green', 7, '2012-01-01')
INSERT INTO dbo.Detailed
VALUES (150, 1760, 'SUV', 'yellow', 8, '2013-01-01')
/*
    Data Insert Ends
*/

CREATE VIEW [dbo].[detailed_info_view]
AS
SELECT  d.horse_power, 
        d.engine_cc, 
        d.design, 
        d.color, 
        d.manufactured, 
        mo.name AS modell, 
        ma.name AS manufacturer, 
        ma.place, 
        ma.established_at
FROM    dbo.Detailed AS d LEFT OUTER JOIN
        dbo.Models AS mo ON d.modell_id = mo.id LEFT OUTER JOIN
        dbo.Manufacturers AS ma ON mo.manufacturer_id = ma.id