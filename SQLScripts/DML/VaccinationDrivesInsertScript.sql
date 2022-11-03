BEGIN TRANSACTION;

DELETE FROM "VaccinationDrive";

INSERT INTO "VaccinationDrive" ("VaccinationDriveID", "Date",  "CoordinatorName", "CoordinatorID", "CoordinatorMobileNumber", "Capacity", "Status") VALUES
(11, "01-04-2021", "Munshi Premchand", "142", "8790348090",450, 'DONE'),
(12, "05-05-2021", "Gopi Singh", "147", "9790147091",450, 'DONE'),
(14, "05-10-2022", "Amrit Arora", "134", "9545654700",200, 'DONE'),
(4, "03-11-2022", "Bhopal Gangaram", "224", "8090706677",250, 'PLANNED'),
(5, "03-11-2022","Vivek N T","123","9986245364",300, 'PLANNED'),
(10, "10-11-2022","Prarthana Kumari","111","8754963215",200, 'PLANNED'),
(9, "-11-2022","Ravi Kiran","222","9153647895",250, 'PLANNED'),
(8, "31-11-2022","Uttam Singh","87","8923654789",400, 'PLANNED'),
(13, "31-11-2022","Asha Singh","215","6548953641",450, 'PLANNED');
COMMIT;
