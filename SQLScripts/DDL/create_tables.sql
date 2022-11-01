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

-- INDEXES

CREATE INDEX "StudentIndexes" ON "Student" (
	"Name"	DESC,
	"Status" DESC,
    "VaccinationStatus" ASC,
    "VaccineType" ASC,
    "VaccinationDate" DESC
);
