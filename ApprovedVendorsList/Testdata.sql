CREATE TABLE [dbo].[vendor] (
    [VendorID]      INT           IDENTITY (1, 1) NOT NULL,
    [CompanyName]       NVARCHAR (50) NULL,
    [ContactName]      NVARCHAR (50) NULL,
    [AddDate] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([VendorID] ASC)
)