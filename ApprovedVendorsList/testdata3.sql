CREATE TABLE [dbo].[Enrollment] (
    [EnrollmentID] INT IDENTITY (1, 1) NOT NULL,
    [Grade]        DECIMAL(3, 2) NULL,
    [AddressID]     INT NOT NULL,
    [VendorID]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([EnrollmentID] ASC),
    CONSTRAINT [FK_dbo.Enrollment_dbo.Course_CourseID] FOREIGN KEY ([AddressID]) 
        REFERENCES [dbo].[companyaddress] ([AddressID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.Enrollment_dbo.Student_StudentID] FOREIGN KEY ([VendorID]) 
        REFERENCES [dbo].[vendor] ([VendorID]) ON DELETE CASCADE
)