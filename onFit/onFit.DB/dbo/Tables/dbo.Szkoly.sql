CREATE TABLE [dbo].[Szkoly] (
    [Id]         INT            NOT NULL,
    [Nazwa]      NCHAR (500)    NOT NULL,
    [Adres]      NVARCHAR (MAX) NOT NULL,
    [Strona_WWW] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

