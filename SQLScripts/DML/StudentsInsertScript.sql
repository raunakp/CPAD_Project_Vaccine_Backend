BEGIN TRANSACTION;

DELETE FROM "Student";

INSERT INTO "Student" ("StudentID", "Name",             "Email",                                  "DoB",          "AadharNumber",     "MobileNumber", "Status",       "VaccinationStatus",               "VaccineType",                     "VaccinationWorkerId",  "VaccinationDate") VALUES
 (                      13,         'Shubh Mangal',     'shubh.mangal@wilp.bits-pilani.ac.in',    '01-10-2010',   "1213 1425 3467",   "9878906790",   'INACTIVE',     'UNKNOWN',                          NULL,                               NULL,                   NULL),
 (                      27,         'Mary Kom',         'mary.kom@boxingschool.in',               '11-02-1985',   "1224 2525 4532",   "8956342189",   'ACTIVE',       'DONE',                             "Covaxin",                          "227",                  "31-03-2021"),
 (                      11,         'Ram Kumar',        'ram.kumar@govhighschool.nic.in',         '04-03-1991',   "3456 7890 2444",   "6745600987",   'ACTIVE',       'DONE',                             "Covidshield",                      "224",                  "31-03-2021"),
 (                       5,			'Carina Stevens',	'c.stevens@primaryschool.com',			  '10-11-2010',	  "1213 1425 3467",	  "9222283490",	  'INACTIVE',	  'UNKNOWN',						  NULL,								 NULL,				     NULL),
 (						16,			'Miley Perkins',	'm.perkins@govhighschool',				  '01-01-2012',	  "6213 1455 8467",  "8022047946",	  'ACTIVE',		  'MEDICAL_ISSUES_CANNOT_VACCINATE',  NULL,  							 NULL                    NULL),
 (						25,			'Nicholas Farrell',	'n.farrell@edumail.com',				  '01-01-2013',   "1214 1425 3467",  "1584161748",   'ACTIVE',		  'SCHEDULED',                        "Covidshield",					 "222",					"31-03-2021"),
 (						101,		'Sarah Mason',	    's.mason@edumail.com',				      '01-01-2014',	  "8246 6987 1033",	  "8923766594",   'ACTIVE',		  'SCHEDULED',                        "Covaxin1",                        "25",					"01-04-2021"),
 (						89,			'Vanessa Allen',	'v.allen@edumail.com',					  '01-01-2015',	  "6815 1695 3566",   "9684781260",   'ACTIVE',       'DONE',							  "Covidshield",					 "225",					"05-05-2021"),
 (						65,			'Henry Murphy',		'h.murphy@govhighschool',				  '01-01-2016',	  "9815 1695 3560",	  "9160134315",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                             NULL,					NULL),
 (						77,			'Tyler Farrell',    't.farrell@edumail.com',			      '01-01-2012',	  "7127 9588 2957",	  "9253648424",	  'INACTIVE',     'SCHEDULED',                        "Covaxin",                         "87",                 "06-04-2021"),
 (                      7,         'Aishwarya M',       'aishwarya.m@primaryschool.com',          '11-02-2015',   "6754 2525 3467",   "6795631890",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                               NULL,                   NULL);
)
COMMIT;
