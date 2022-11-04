BEGIN TRANSACTION;

DELETE FROM "VaccinationDriveRegistration";

INSERT INTO "VaccinationDriveRegistration" ("VaccinationDriveID", "StudentID") VALUES
 (11,13),
 (11,27),
 (14,11),
 (5,5),
 (10,16),
 (14,25),
 (9,101),
 (8,89),
 (5,65),
 (12,77),
 (13,83),
 (10,49),
 (8,5),
 (4,99),
 (5,19),
 (4,88),
 (9,50),
 (13,61);
COMMIT;
