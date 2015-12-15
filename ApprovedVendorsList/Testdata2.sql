CREATE TABLE [dbo].[companyaddress] (
    [AddressID] INT           IDENTITY (1, 1) NOT NULL,
    [Street]    NVARCHAR (50) NULL,
    [City]  NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([AddressID] ASC)
)