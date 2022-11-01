BEGIN TRANSACTION;

DELETE FROM "Student";

INSERT INTO "Student" ("StudentID", "Name",            "Email",                                  "DoB",          "AadharNumber",     "MobileNumber", "Status",       "VaccinationStatus",    "VaccineType", "VaccinationWorkerId",   "VaccinationDate") VALUES
 (                      13,         'Shubh Mangal',   'shubh.mangal@wilp.bits-pilani.ac.in',    '01-10-2010',   "1213 1425 3467",   "9878906790",   'INACTIVE',     'UNKNOWN',              NULL,           NULL,                   NULL),
 (                      27,         'Mary Kom',       'mary.kom@boxingschool.in',               '11-02-1985',   "1224 2525 4532",   "8956342189",   'ACTIVE',       'DONE',                 "Covaxin",      "227",                  "31-03-2021");
COMMIT;
