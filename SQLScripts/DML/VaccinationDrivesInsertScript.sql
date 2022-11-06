BEGIN TRANSACTION;

DELETE FROM "VaccinationDrive";

INSERT INTO "VaccinationDrive" ("VaccinationDriveID", "Date",  "CoordinatorName", "CoordinatorID", "CoordinatorMobileNumber", "Capacity", "Status") VALUES
(11, "2021-04-01", "Munshi Premchand", "142", "8790348090",450, 'DONE'),
(12, "2021-05-05", "Gopi Singh", "147", "9790147091",450, 'DONE'),
(14, "2022-10-05", "Amrit Arora", "134", "9545654700",200, 'DONE'),
(4, "2022-11-03", "Bhopal Gangaram", "224", "8090706677",250, 'PLANNED'),
(5, "2022-11-03","Vivek N T","123","9986245364",300, 'PLANNED'),
(10, "2022-11-10","Prarthana Kumari","111","8754963215",200, 'PLANNED'),
(9, "2022-11-18","Ravi Kiran","222","9153647895",250, 'PLANNED'),
(8, "2022-11-30","Uttam Singh","87","8923654789",400, 'PLANNED'),
(13, "2022-12-3","Asha Singh","215","6548953641",450, 'PLANNED');
COMMIT;
