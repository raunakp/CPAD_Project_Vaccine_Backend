BEGIN TRANSACTION;

DELETE FROM "VaccinationDriveRegistrations";

INSERT INTO "VaccinationDriveRegistrations" ("VaccinationDriveID", "StudentID") VALUES
 (11, 13),
 (11, 27),
 (21, 11),
 (14, 7),
 (4, 51);
COMMIT;
