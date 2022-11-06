BEGIN TRANSACTION;

DELETE FROM "Student";

INSERT INTO "Student" ("StudentID", "Name",             "Email",                                  "DoB",          "AadharNumber",     "MobileNumber", "Status",       "VaccinationStatus",               "VaccineType",                     "VaccinationWorkerId",  "VaccinationDate") VALUES
 (                      13,         'Shubh Mangal',     'shubh.mangal@wilp.bits-pilani.ac.in',    '2010-01-10',   "1213 1425 3467",   "9878906790",   'INACTIVE',     'UNKNOWN',                          NULL,                               NULL,                   NULL),
 (                      27,         'Mary Kom',         'mary.kom@boxingschool.in',               '1985-11-02',   "1224 2525 4532",   "8956342189",   'ACTIVE',       'DONE',                             "Covaxin",                          "227",                  "2021-03-31"),
 (                      11,         'Ram Kumar',        'ram.kumar@govhighschool.nic.in',         '1991-04-03',   "3456 7890 2444",   "6745600987",   'ACTIVE',       'DONE',                             "Covidshield",                      "224",                  "2021-03-31"),
 (                       5,			'Carina Stevens',	'c.stevens@primaryschool.com',			  '2010-10-11',	  "1213 1425 3467",	  "9222283490",	  'INACTIVE',	  'UNKNOWN',						  NULL,								 NULL,				     NULL),
 (						16,			'Miley Perkins',	'm.perkins@govhighschool',				  '2012-01-01',	  "6213 1455 8467",  "8022047946",	  'ACTIVE',		  'MEDICAL_ISSUES_CANNOT_VACCINATE',  NULL,  							 NULL,                    NULL),
 (						25,			'Nicholas Farrell',	'n.farrell@edumail.com',				  '2013-01-01',   "1214 1425 3467",  "1584161748",   'ACTIVE',		  'SCHEDULED',                        "Covidshield",					 "222",					"2021-03-31"),
 (						101,		'Sarah Mason',	    's.mason@edumail.com',				      '2014-01-01',	  "8246 6987 1033",	  "8923766594",   'ACTIVE',		  'SCHEDULED',                        "Covaxin1",                        "25",					"2021-04-01"),
 (						89,			'Vanessa Allen',	'v.allen@edumail.com',					  '2015-01-01',	  "6815 1695 3566",   "9684781260",   'ACTIVE',       'DONE',							  "Covidshield",					 "225",					"2021-05-05"),
 (						65,			'Henry Murphy',		'h.murphy@govhighschool',				  '2016-01-01',	  "9815 1695 3560",	  "9160134315",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                             NULL,					NULL),
 (						77,			'Tyler Farrell',    't.farrell@edumail.com',			      '2012-01-01',	  "7127 9588 2957",	  "9253648424",	  'INACTIVE',     'SCHEDULED',                        "Covaxin",                         "87",                 "2021-04-06"),
 (                      7,          'Aishwarya M',      'aishwarya.m@primaryschool.com',          '2015-11-02',   "6754 2525 3467",   "6795631890",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                               NULL,                   NULL),
 (						83,			'Alexia Ryan',		'a.ryan@edumail.com',					  '2013-21-12',   "8157 9188 2888",	  "9391108471",   'ACTIVE',       'DONE',                             "Covidshield",                     "213",                "2021-12-18"),
 (						49,			'Steven Harrison',  's.harrison@edumail.com',                 '2012-01-01',   "5390 8132 6017",   "9693086993",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                              NULL,                   NULL),
 (						8,			'Wilson Bennett',	'w.bennett@primaryschool.com',			  '2013-01-01',   "3968 9005 8927",   "8853453084",   'ACTIVE',       'PENDING',                           NULL,                              NULL,                   NULL),
 (						99,			'Emma Jones',		'e.jones@edumail.com',					  '2012-01-01',	  "9751 0100 1981",	  "8343258316",	  'INACTIVE',     'PENDING',                           NULL,                              NULL,                   NULL),
 (						19,			'Arthur West',		'a.west@primaryschool.com',				  '2013-01-01',   "8608 9837 4844",   "9685900342",   'ACTIVE',       'MEDICAL_ISSUES_CANNOT_VACCINATE',   NULL,                              NULL,                   NULL),
 (						88,			'Anna Russell',		'a.russell@edumail.com', 				  '2013-11-09',	  "4302 5229 1682",	  "8481462561",   'ACTIVE',       'UNKNOWN',						   NULL,                              NULL,                   NULL),
 (						50,			'Jacob West',		'j.west@govhighschool',					  '2015-01-10',	  "1399 4668 3867",	  "8573969685",   'ACTIVE',		  'DONE',                              "Covaxin",                        "111",					"2021-04-01"),
 (						61,			'Jacob Elliott',    'j.elliott@edumail.com',                  '2015-09-01',   "8399 4668 7767",   "9378748082",   'ACTIVE',		  'DONE',                              "Covaxin",                        "215",					"2021-12-18");
 COMMIT;
