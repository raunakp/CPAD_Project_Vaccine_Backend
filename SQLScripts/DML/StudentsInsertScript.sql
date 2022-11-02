BEGIN TRANSACTION;

DELETE FROM "Student";

INSERT INTO "Student" ("StudentID", "Name",             "Email",                                  "DoB",          "AadharNumber",     "MobileNumber", "Status",       "VaccinationStatus",               "VaccineType",                     "VaccinationWorkerId",  "VaccinationDate") VALUES
 (                      13,         'Shubh Mangal',     'shubh.mangal@wilp.bits-pilani.ac.in',    '01-10-2010',   "1213 1425 3467",   "9878906790",   'INACTIVE',     'UNKNOWN',                          NULL,                               NULL,                   NULL),
 (                      27,         'Mary Kom',         'mary.kom@boxingschool.in',               '11-02-1985',   "1224 2525 4532",   "8956342189",   'ACTIVE',       'DONE',                             "Covaxin",                          "227",                  "31-03-2021"),
 (                      11,         'Ram Kumar',        'ram.kumar@govhighschool.nic.in',         '04-03-1991',   "3456 7890 2444",   "6745600987",   'ACTIVE',       'DONE',                             "Covidshield",                      "224",                  "31-03-2021"),
 (                       5,			'Carina Stevens',	'c.stevens@primaryschool.com',			  '10-11-2010',	  "1213 1425 3467",	  "9222283490",	  'INACTIVE',	  'UNKNOWN',						  NULL,								 NULL,				     NULL),
 (						16,			'Miley Perkins',	'm.perkins@govhighschool',				  '01-01-2012',	  "6213 1455 8467",  "8022047946",	  'ACTIVE',		  'MEDICAL_ISSUES_CANNOT_VACCINATE',  NULL,  							 NULL,                    NULL),
 (						25,			'Nicholas Farrell',	'n.farrell@edumail.com',				  '01-01-2013',   "1214 1425 3467",  "1584161748",   'ACTIVE',		  'SCHEDULED',                        "Covidshield",					 "222",					"31-03-2021"),
 (						101,		'Sarah Mason',	    's.mason@edumail.com',				      '01-01-2014',	  "8246 6987 1033",	  "8923766594",   'ACTIVE',		  'SCHEDULED',                        "Covaxin1",                        "25",					"01-04-2021"),
 (						89,			'Vanessa Allen',	'v.allen@edumail.com',					  '01-01-2015',	  "6815 1695 3566",   "9684781260",   'ACTIVE',       'DONE',							  "Covidshield",					 "225",					"05-05-2021"),
 (						65,			'Henry Murphy',		'h.murphy@govhighschool',				  '01-01-2016',	  "9815 1695 3560",	  "9160134315",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                             NULL,					NULL),
 (						77,			'Tyler Farrell',    't.farrell@edumail.com',			      '01-01-2012',	  "7127 9588 2957",	  "9253648424",	  'INACTIVE',     'SCHEDULED',                        "Covaxin",                         "87",                 "06-04-2021"),
 (                      7,          'Aishwarya M',      'aishwarya.m@primaryschool.com',          '11-02-2015',   "6754 2525 3467",   "6795631890",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                               NULL,                   NULL),
 (						83,			'Alexia Ryan',		'a.ryan@edumail.com',					  '21-12-2013',   "8157 9188 2888",	  "9391108471",   'ACTIVE',       'DONE',                             "Covidshield",                     "213",                "18-12-2021"),
 (						49,			'Steven Harrison',  's.harrison@edumail.com',                 '01-01-2012',   "5390 8132 6017",   "9693086993",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                              NULL,                   NULL),
 (						8,			'Wilson Bennett',	'w.bennett@primaryschool.com',			  '01-01-2013',   "3968 9005 8927",   "8853453084",   'ACTIVE',       'PENDING',                           NULL,                              NULL,                   NULL),
 (						99,			'Emma Jones',		'e.jones@edumail.com',					  '01-01-2012',	  "9751 0100 1981",	  "8343258316",	  'INACTIVE',     'PENDING',                           NULL,                              NULL,                   NULL),
 (						19,			'Arthur West',		'a.west@primaryschool.com',				  '01-01-2013',   "8608 9837 4844",   "9685900342",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                              NULL,                   NULL),
 (						88,			'Anna Russell',		'a.russell@edumail.com', 				  '11-09-2013',	  "4302 5229 1682",	  "8481462561",   'ACTIVE',       'UNKNOWN',						   NULL,                              NULL,                   NULL),
 (						50,			'Jacob West',		'j.west@govhighschool',					  '01-10-2015',	  "1399 4668 3867",	  "8573969685",   'ACTIVE',		  'DONE',                              "Covaxin",                        "111",					"01-04-2021"),
 (						61,			'Jacob Elliott',    'j.elliott@edumail.com',                  '09-01-2015',   "8399 4668 7767",   "9378748082",   'ACTIVE',		  'DONE',                              "Covaxin",                        "215",					"18-12-2021")
);
COMMIT;
