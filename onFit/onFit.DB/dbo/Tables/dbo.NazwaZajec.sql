CREATE TABLE [dbo].[NazwaZajec] (
    [ID]         INT            NOT NULL,
    [IDParent]   INT            NOT NULL,
    [NazwaZajec] NVARCHAR (100) NOT NULL,
    [OpisZajec]  NVARCHAR (500) NULL,
    CONSTRAINT [PK_NazwaZajec] PRIMARY KEY CLUSTERED ([ID] ASC)
);

