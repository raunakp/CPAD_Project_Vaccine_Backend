BEGIN TRANSACTION;

DELETE FROM "VaccinationDrive";

INSERT INTO "VaccinationDrive" ("VaccinationDriveID", "Date",  "CoordinatorName", "CoordinatorID", "CoordinatorMobileNumber", "Capacity", "Status") VALUES
 (11, "20-10-2022", "Munshi Premchand", "142", "8790348090", 450, 'PLANNED'),
 (21, "21-10-2022", "Gopi Singh", "147", "9790147091", 450, 'PLANNED'),
 (14, "05-10-2022", "Amrit Arora", "134", "9545654700", 200, 'DONE'),
 (4, "31-11-2022", "Bhopal Gangaram", "224", "8090706677", 250, 'PLANNED');
COMMIT;
