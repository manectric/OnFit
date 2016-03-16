CREATE TABLE [dbo].[MiejsceZajec] (
    [ID]         INT            NOT NULL,
    [Nazwa]      NVARCHAR (100) NOT NULL,
    [Adres]      NVARCHAR (200) NOT NULL,
    [Strona_WWW] NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK__Szkoly__3214EC078C02B06E] PRIMARY KEY CLUSTERED ([ID] ASC)
);

