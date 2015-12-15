MERGE INTO companyaddress AS Target 
USING (VALUES 
        (1, 'Street1', 'City1'), 
        (2, 'Street2', 'City1'), 
        (3, 'Street3', 'City2')
) 
AS Source (AddressID, Street, City) 
ON Target.AddressID = Source.AddressID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (Street, City) 
VALUES (Street, City);


MERGE INTO vendor AS Target
USING (VALUES 
        (1, 'Tibbetts', 'Donnie', '2013-09-01'), 
        (2, 'Guzman', 'Liza', '2012-01-13'), 
	(3, 'Catlett', 'Phil', '2011-09-03')
)
AS Source (VendorID, CompanyName, ContactName, AddDate)
ON Target.VendorID = Source.VendorID
WHEN NOT MATCHED BY TARGET THEN
INSERT (CompanyName, ContactName, AddDate)
VALUES (CompanyName, ContactName, AddDate);


MERGE INTO Enrollment AS Target
USING (VALUES 
	(1, 2.00, 1, 1),
	(2, 3.50, 1, 2),
	(3, 4.00, 2, 3),
	(4, 1.80, 2, 1),
	(5, 3.20, 3, 1),
	(6, 4.00, 3, 2)
)
AS Source (EnrollmentID, Grade, AddressID, VendorID)
ON Target.EnrollmentID = Source.EnrollmentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Grade, AddressID, VendorID)
VALUES (Grade, AddressID, VendorID);