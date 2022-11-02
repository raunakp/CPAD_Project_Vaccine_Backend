-- sqlite3 vaccinedb.sqlite3

CREATE TABLE IF NOT EXISTS "Student" (
	"StudentID"	INTEGER NOT NULL UNIQUE,
	"Name"	TEXT NOT NULL,
	"Email"	TEXT NOT NULL UNIQUE,
    "DoB" TEXT NOT NULL,
    "AadharNumber" TEXT,
	"MobileNumber" INTEGER NOT NULL UNIQUE,
	"Status" TEXT NOT NULL DEFAULT 'ACTIVE' CHECK(Status IN ('ACTIVE','INACTIVE')),
    "VaccinationStatus" TEXT NOT NULL DEFAULT 'DONE' CHECK(VaccinationStatus IN ('DONE','PENDING','MEDICAL_ISSUES_CANNOT_VACCINATE','UNKNOWN','SCHEDULED')),
    "VaccineType" TEXT,
    "VaccinationWorkerId" TEXT,
    "VaccinationDate" TEXT,
	PRIMARY KEY("StudentID")
);

CREATE TABLE IF NOT EXISTS "VaccinationDrive" (
	"VaccinationDriveID"	INTEGER NOT NULL UNIQUE,
	"Date"	TEXT NOT NULL,
	"CoordinatorName"	TEXT NOT NULL UNIQUE,
    "CoordinatorID" TEXT NOT NULL,
	"CoordinatorMobileNumber" INTEGER NOT NULL UNIQUE,
    "Capacity" INTEGER,
	"Status" TEXT NOT NULL DEFAULT 'PLANNED' CHECK(Status IN ('PLANNED','CANCELLED','POSTPONED','DONE')),
	PRIMARY KEY("VaccinationDriveID")
);

CREATE TABLE IF NOT EXISTS "VaccinationDriveRegistration" (
    "VaccinationDriveID" INTEGER NOT NULL,
    "StudentID"	INTEGER NOT NULL
);

-- INDEXES

CREATE INDEX "StudentIndexes" ON "Student" (
	"Name"	DESC,
	"Status" DESC,
    "VaccinationStatus" ASC,
    "VaccineType" ASC,
    "VaccinationDate" DESC
);
